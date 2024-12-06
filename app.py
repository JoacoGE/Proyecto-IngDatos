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
    clientes = db.get_all_clients()  # Obtener todos los clientes
    return render_template('clientes.html', clientes=clientes)

@app.route('/agregar_cliente', methods=['GET', 'POST'])
def agregar_cliente():
    if request.method == 'POST':
        # Lógica para agregar cliente
        pass
    return render_template('agregar_cliente.html')  # Crea un formulario para agregar clientes

@app.route('/editar_cliente', methods=['GET', 'POST'])
def editar_cliente():
    # Lógica para editar cliente
    pass

@app.route('/eliminar_cliente/<int:id>', methods=['GET', 'POST'])
def eliminar_cliente(id):
    # Lógica para eliminar cliente
    pass
if __name__ == '__main__':
    app.run(debug=True)