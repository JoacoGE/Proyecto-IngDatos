from flask import Flask, render_template, request, redirect, url_for
from configs.database import Database

app = Flask(__name__)

@app.route('/<path:filename>')
def server_static(filename):
    return app.send_static_file(filename)

@app.route('/')
def home():
    db = Database()
    productos = db.get_all_products()  # Obtener todos los productos
    return render_template('index.html', productos=productos)

@app.route('/clientes')
def cliente():
    db = Database()
    return render_template('clientes.tpl')

if __name__ == '__main__':
    app.run(debug=True)