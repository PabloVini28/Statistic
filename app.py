import statistics
import mysql.connector
import numpy as np
from sklearn.neural_network import MLPRegressor
import pandas as pd
import warnings 
from sqlalchemy import create_engine
warnings.filterwarnings('ignore')

# Conexão com banco de dados
con = mysql.connector.connect(host="localhost", database="probabilidade_estatistica", password="", user="root")
cursor = con.cursor()

meses = ["janeiro", "fevereiro", "marco", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"]
dadosn = ["nascidosVivos", "nascidosMasculinos", "nascidosFemininos", "Cesario", "Vaginal", "Gemeos", "rn_abaixopeso", "rn_pesoideal"]

engine = create_engine('mysql+mysqlconnector://root:@localhost/probabilidade_estatistica')

print("------------------------------------------------------------------------") 
print("Calculos Descritivos -")
print("------------------------------------------------------------------------\n") 

# Fetch all data from the database
data = []
for mes in meses:
    cursor.execute(f"SELECT * FROM {mes};")
    data.append(cursor.fetchone())

# Calculate descriptive statistics
resultados = []

for i in range(1, 9):
    dados = [row[i] for row in data]
    mediaInteira = round(statistics.mean(dados), 2)
    mediana_total = statistics.median(dados)
    moda = statistics.mode(dados)
    media_harmonica = round(statistics.harmonic_mean(dados), 2) if min(dados) > 0 else 0
    desvio_padrao = round(statistics.pstdev(dados), 3)
    variancia = round(statistics.pvariance(dados), 2)

    # Armazena os resultados no dicionário
    resultado = {
        "variavel": dadosn[i-1],
        "media": mediaInteira,
        "mediana": mediana_total,
        "moda": moda,
        "media_harmonica": media_harmonica,
        "desvio_padrao": desvio_padrao,
        "variancia": variancia
    }

    # Adiciona ao dicionário a lista de resultados
    resultados.append(resultado)  
    
for resultado in resultados:
    print(f"Variavel: {resultado['variavel']}")
    print(f"  Media: {resultado['media']}")
    print(f"  Mediana: {resultado['mediana']}")
    print(f"  Moda: {resultado['moda']}")
    print(f"  Média Harmonica: {resultado['media_harmonica']}")
    print(f"  Desvio Padrao: {resultado['desvio_padrao']}")
    print(f"  Variancia: {resultado['variancia']}")
    print("------------------------------------------")       
        
print("------------------------------------------------------------------------") 

print("APLICACAO DO MACHINE LEARNING UTILIZANDO REDES NEURAIS")   
print("------------------------------------------------------------------------") 
print("------------------------------------------------------------------------\n") 

valores_nascidosVivos = []

for mes in meses:
    # Read the data from the database
    df_mes = pd.read_sql_query(f"SELECT nascidosVivos FROM {mes};", con=engine)
    # Extract the value from the dataframe
    valor = df_mes['nascidosVivos'][0]
    # Append the value to the list
    valores_nascidosVivos.append(valor)
    # Print the value
    print(f"Nascidos vivos em {mes}: {valor}")
    
    
X = np.array(valores_nascidosVivos).reshape(-1, 1)  # Precisamos remodelar os dados para que seja uma matriz 2D

# Criar um array numpy para os meses
# Vamos usar números de 1 a 12 para representar os meses
meses_numeros_nascidosvivos = np.arange(1, 13).reshape(-1, 1)
# Criar o regressor da rede neural
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
# Treinar o modelo
regressor.fit(meses_numeros_nascidosvivos, X)
# Previsão para o mês 13, no caso, janeiro de 2024
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos vivos no mes 13:", previsto[0])    

print("------------------------------------------------------------------------")   

valores_masculinos = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT masculinos FROM {mes};", con=engine)
    valor = df_mes['masculinos'][0]
    valores_masculinos.append(valor)
    print(f"Nascidos masculinos em {mes}: {valor}")


X = np.array(valores_masculinos).reshape(-1, 1)

meses_numeros_masculinos = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_masculinos, X)
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos masculinos no mes 13:", previsto[0])

print("------------------------------------------------------------------------")   

valores_femininos = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT femininos FROM {mes};", con=engine)
    valor = df_mes['femininos'][0]
    valores_femininos.append(valor)
    print(f"Nascidos femininos em {mes}: {valor}")


X = np.array(valores_femininos).reshape(-1, 1)

meses_numeros_femininos = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_femininos, X)
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos femininos no mes 13:", previsto[0])

print("------------------------------------------------------------------------")   

valores_cesario = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT cesario FROM {mes};", con=engine)
    valor = df_mes['cesario'][0]
    valores_cesario.append(valor)
    print(f"Nascidos de cesario em {mes}: {valor}")


X = np.array(valores_cesario).reshape(-1, 1)

meses_numeros_cesario = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_cesario, X)
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos de parto cesario no mes 13:", previsto[0])

print("------------------------------------------------------------------------")   

valores_vaginal = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT vaginal FROM {mes};", con=engine)
    valor = df_mes['vaginal'][0]
    valores_vaginal.append(valor)
    print(f"Nascidos de parto vaginal em {mes}: {valor}")


X = np.array(valores_vaginal).reshape(-1, 1)

meses_numeros_vaginal = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_vaginal, X)
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos de parto vaginal no mes 13:", previsto[0])

print("------------------------------------------------------------------------")   

valores_gemeos = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT gemeos FROM {mes};", con=engine)
    valor = df_mes['gemeos'][0]
    valores_gemeos.append(valor)
    print(f"Nascidos gemeos em {mes}: {valor}")


X = np.array(valores_gemeos).reshape(-1, 1)

meses_numeros_gemeos = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_vaginal, X)
previsto = regressor.predict([[13]])
print("Numero previsto de nascidos gemeos no mes 13:", previsto[0])

print("------------------------------------------------------------------------")  

valores_baixoPeso = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT rn_baixopeso FROM {mes};", con=engine)
    valor = df_mes['rn_baixopeso'][0]
    valores_baixoPeso.append(valor)
    print(f"Recem nascidos com baixo peso em {mes}: {valor}")


X = np.array(valores_baixoPeso).reshape(-1, 1)

meses_numeros_baixoPeso = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_baixoPeso, X)
previsto = regressor.predict([[13]])
print("Numero previsto de recem nascidos com baixo peso no mes 13:", previsto[0])

print("------------------------------------------------------------------------")  

valores_pesoIdeal = []

for mes in meses:
    
    df_mes = pd.read_sql_query(f"SELECT rn_pesoadequado FROM {mes};", con=engine)
    valor = df_mes['rn_pesoadequado'][0]
    valores_pesoIdeal.append(valor)
    print(f"Recem nascidos com baixo peso em {mes}: {valor}")


X = np.array(valores_pesoIdeal).reshape(-1, 1)

meses_numeros_pesoIdeal = np.arange(1, 13).reshape(-1, 1)
regressor = MLPRegressor(hidden_layer_sizes=(100, 50), activation='relu', solver='adam', max_iter=1000)
regressor.fit(meses_numeros_pesoIdeal, X)
previsto = regressor.predict([[13]])
print("Numero previsto de recem nascidos com peso ideal no mes 13:", previsto[0])