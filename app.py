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
        "media_harmonica": statistics.harmonic_mean(dados) if len(dados) > 0 else None
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
    model.add(Dense(64, input_dim=1, activation='relu'))
    model.add(Dense(32, activation='relu'))
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

formatted_predictions

"""
def plot_descriptive_statistics(results):
    variables = [res['variavel'] for res in results]
    medias = [res['media'] for res in results]
    medianas = [res['mediana'] for res in results]
    modas = [res['moda'] for res in results]
    medias_harmonicas = [res['media_harmonica'] for res in results]
    desvios_padrao = [res['desvio_padrao'] for res in results]
    variancias = [res['variancia'] for res in results]
    
    fig, axs = plt.subplots(3, 2, figsize=(15, 15))
    
    axs[0, 0].bar(variables, medias, color='blue')
    axs[0, 0].set_title('Médias')
    axs[0, 0].set_xticklabels(variables, rotation=45, ha="right")

    axs[0, 1].bar(variables, medianas, color='orange')
    axs[0, 1].set_title('Medianas')
    axs[0, 1].set_xticklabels(variables, rotation=45, ha="right")
    
    axs[1, 0].bar(variables, modas, color='green')
    axs[1, 0].set_title('Modas')
    axs[1, 0].set_xticklabels(variables, rotation=45, ha="right")
    
    axs[1, 1].bar(variables, medias_harmonicas, color='red')
    axs[1, 1].set_title('Médias Harmônicas')
    axs[1, 1].set_xticklabels(variables, rotation=45, ha="right")
    
    axs[2, 0].bar(variables, desvios_padrao, color='purple')
    axs[2, 0].set_title('Desvios Padrão')
    axs[2, 0].set_xticklabels(variables, rotation=45, ha="right")
    
    axs[2, 1].bar(variables, variancias, color='brown')
    axs[2, 1].set_title('Variâncias')
    axs[2, 1].set_xticklabels(variables, rotation=45, ha="right")
    
    plt.tight_layout()
    plt.show()

# Chama a função para plotar os gráficos
plot_descriptive_statistics(resultados)

"""
