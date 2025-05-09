from flask import Flask, request, jsonify
import pickle
import pandas as pd

# Charger le modèle une seule fois
model = pickle.load(open('random_forest_fixed.pkl', 'rb'))

# Charger le CSV une seule fois
data = pd.read_csv('test_data.csv')

# Conserver seulement les features (sans target)
feature_columns = [col for col in data.columns if col != 'dominant_activity']

# Initialiser i
i = 0

app = Flask(__name__)

@app.route('/predict', methods=['GET'])
def predict():
    global i
    if i >= len(data):
        return jsonify({'error': 'No more data to predict'}), 404

    # Prendre la ligne i et uniquement les colonnes des features
    features = data.iloc[[i]][feature_columns]

    # Prédiction
    prediction = model.predict(features)

    # Avancer i
    i += 1

    return jsonify({
        'prediction': prediction[0],
        'current_index': i,
        'total_rows': len(data)
    })

@app.route('/reset', methods=['POST'])
def reset():
    global i
    i = 0
    return jsonify({'message': 'Index reset to 0'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
