import statistics
import mysql.connector
import numpy as np
from scipy import stats
import pandas as pd
from sqlalchemy import create_engine
import matplotlib.pyplot as plt
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from sklearn.model_selection import train_test_split
from sklearn.neural_network import MLPRegressor
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import LabelEncoder, StandardScaler
from sklearn.metrics import mean_squared_error
from keras.models import Sequential
from keras.layers import Dense
from keras.optimizers import Adam


import warnings
warnings.filterwarnings('ignore')

# Conexão com banco de dados
engine = create_engine("mysql+mysqlconnector://root:RaulOficial1202@localhost/dadoshospitalares")


# Conexão com banco de dados
con = mysql.connector.connect(host="localhost", database="dadoshospitalares", password="RaulOficial1202", user="root")
cursor = con.cursor()

anos = ["ano2013","ano2014","ano2015","ano2016","ano2017","ano2018","ano2019","ano2020","ano2021","ano2022"]
meses = ["janeiro", "fevereiro", "marco", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"]
dadosn = ["nascidosVivos", "nascidosMasculinos", "nascidosFemininos", "Cesario", "Vaginal", "Gemeos", "rn_abaixopeso", "rn_pesoideal"]

# Inicializar um dicionário para armazenar os dados por mês
dados_por_mes = {mes: {dado: [] for dado in dadosn} for mes in meses}

# Busca todos os dados no banco de dados
for ano in anos:
    cursor.execute(f"SELECT * FROM {ano};")
    resultados = cursor.fetchall()
    
    for linha in resultados:
        mes = linha[0]
        valores = linha[1:]
        
        for i, dado in enumerate(dadosn):
            dados_por_mes[mes][dado].append(valores[i])

# Função para calcular estatísticas
def calcular_estatisticas(dados):
    estatisticas = {
        "mediana": statistics.median(dados) if len(dados) > 0 else None,
        "media": np.mean(dados) if len(dados) > 0 else None,
        "moda": calcular_moda(dados),
        "desvio_padrao": np.std(dados) if len(dados) > 0 else None,
        "variancia": np.var(dados) if len(dados) > 0 else None,
        "media_harmonica": statistics.harmonic_mean(dados) if len(dados) > 0 and all(x > 0 for x in dados) else None
    }
    return estatisticas

def calcular_moda(dados):
    if len(dados) == 0:
        return None
    try:
        moda = stats.mode(dados, keepdims=False)
        return moda
    except Exception as e:
        print(f"Erro ao calcular moda: {e}")
        return None

# Calcular estatísticas para cada mês e variável
estatisticas_por_mes = {
    mes: {dado: calcular_estatisticas(dados_por_mes[mes][dado]) for dado in dadosn}
    for mes in meses
}

def plotar_estatisticas(estatisticas_por_mes):
    meses = list(estatisticas_por_mes.keys())
    
    for dado in dadosn:  # Loop sobre cada tipo de dado
        medias = [estatisticas_por_mes[mes][dado]['media'] for mes in meses]
        medianas = [estatisticas_por_mes[mes][dado]['mediana'] for mes in meses]
        desvios_padrao = [estatisticas_por_mes[mes][dado]['desvio_padrao'] for mes in meses]
        variancias = [estatisticas_por_mes[mes][dado]['variancia'] for mes in meses]
        medias_harmonicas = [estatisticas_por_mes[mes][dado]['media_harmonica'] for mes in meses]
        
        # Gráfico da Média
        plt.figure(figsize=(12, 6))
        plt.bar(meses, medias, color='blue')
        plt.ylabel('Média')
        plt.title(f'Média por Mês para {dado}')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()
        
        # Gráfico da Mediana
        plt.figure(figsize=(12, 6))
        plt.bar(meses, medianas, color='green')
        plt.ylabel('Mediana')
        plt.title(f'Mediana por Mês para {dado}')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()
        
        # Gráfico do Desvio Padrão
        plt.figure(figsize=(12, 6))
        plt.bar(meses, desvios_padrao, color='red')
        plt.ylabel('Desvio Padrão')
        plt.title(f'Desvio Padrão por Mês para {dado}')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()

        
        # Gráfico da Variância
        plt.figure(figsize=(12, 6))
        plt.bar(meses, variancias, color='orange')
        plt.ylabel('Variância')
        plt.title(f'Variância por Mês para {dado}')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()
        
        # Gráfico da Média Harmônica
        plt.figure(figsize=(12, 6))
        plt.bar(meses, [x if x is not None else 0 for x in medias_harmonicas], color='cyan')
        plt.ylabel('Média Harmônica')
        plt.title(f'Média Harmônica por Mês para {dado}')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.show()



# Exibir resultados
print("------------------------------------------------------------------------") 
print("------------------------anos de 2013 a 2022-----------------------------") 
print("------------------------------------------------------------------------") 
for mes, estatisticas in estatisticas_por_mes.items():
    print(f"\nEstatísticas para {mes.capitalize()}:")
    for dado, stats in estatisticas.items():
        print(f"\nDado: {dado}")
        print(f"Mediana: {stats['mediana']}")
        print(f"Média: {stats['media']}")
        print(f"Moda: {stats['moda']}")
        print(f"Desvio padrão: {stats['desvio_padrao']}")
        print(f"Variância: {stats['variancia']}")
        print(f"Média harmônica: {stats['media_harmonica']}")
     
print("------------------------------------------------------------------------") 

# Plotar gráficos
plotar_estatisticas(estatisticas_por_mes)

# Prepare the data
def prepare_data(dados):
    df_list = []
    for mes, valores in dados.items():
        for dado, valores_dado in valores.items():
            df_list.append(pd.DataFrame({
                'mes': mes,
                'dado': dado,
                'valores': valores_dado
            }))
    df = pd.concat(df_list, ignore_index=True)
    return df

df = prepare_data(dados_por_mes)

# Separate data by 'dado' type and 'mes'
def train_model(df, dado_tipo):
    df_dado = df[df['dado'] == dado_tipo]
    X = np.arange(len(df_dado)).reshape(-1, 1)
    y = np.array(df_dado['valores'].tolist())
    
    # Split the data into training and test sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, shuffle=False)

    # Scale the features
    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled = scaler.transform(X_test)
    
    # Build the model
    model = Sequential()
    model.add(Dense(50, input_dim=1, activation='relu'))
    model.add(Dense(10, activation='relu'))
    model.add(Dense(1))
    model.compile(optimizer=Adam(learning_rate=0.01), loss='mse')
    
    # Train the model
    model.fit(X_train_scaled, y_train, epochs=100, batch_size=1, verbose=0)
    
    # Evaluate the model
    y_pred = model.predict(X_test_scaled)
    mse = mean_squared_error(y_test, y_pred)
    print(f'MSE for {dado_tipo}: {mse}')
    
    return model, scaler

# Train and predict for each 'dado' type
models = {}
scalers = {}

for dado_tipo in df['dado'].unique():
    print(f'Training model for {dado_tipo}...')
    model, scaler = train_model(df, dado_tipo)
    models[dado_tipo] = model
    scalers[dado_tipo] = scaler

# Predict values for 2023
def predict_values(models, scalers):
    predictions = {}
    months = list(dados_por_mes.keys())
    for dado_tipo, model in models.items():
        scaler = scalers[dado_tipo]
        X_new = np.arange(len(months)).reshape(-1, 1)
        X_new_scaled = scaler.transform(X_new)
        y_pred = model.predict(X_new_scaled)
        predictions[dado_tipo] = y_pred.flatten().tolist()
    
    return predictions

predictions = predict_values(models, scalers)

# Prepare the final result
def format_predictions(predictions):
    result = {}
    months = list(dados_por_mes.keys())
    for dado_tipo, vals in predictions.items():
        result[dado_tipo] = {mes: vals[i] for i, mes in enumerate(months)}
    
    return result

formatted_predictions = format_predictions(predictions)

# Print results
for dado_tipo, valores in formatted_predictions.items():
    print(f'\n{dado_tipo} para 2023:')
    for mes, valor in valores.items():
        print(f'{mes.capitalize()}: {valor:.2f}')
# Plot the predictions
def plot_predictions(formatted_predictions):
    meses = list(formatted_predictions[next(iter(formatted_predictions))].keys())
    
    for dado_tipo, valores in formatted_predictions.items():
        plt.figure(figsize=(10, 6))
        plt.plot(meses, list(valores.values()), marker='o', label='Previsões do Modelo', color='red')
        plt.xticks(rotation=45)
        plt.xlabel('Meses')
        plt.ylabel(dado_tipo)
        plt.title(f'Previsões de {dado_tipo} para 2023')
        plt.legend()
        plt.grid(True)
        plt.tight_layout()
        plt.show()

# Plotar previsões
plot_predictions(formatted_predictions)