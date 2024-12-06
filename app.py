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


#@app.route('/eliminar_cliente/<int:client_id>/')


@app.route('/agregar_cliente', methods=['GET', 'POST'])
def agregar_cliente():
    """Agregar un cliente a la base de datos."""
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        correo = request.form['correo']
        celular = request.form['celular']
        direccion = request.form['direccion']
        db = Database()
        db.connect()
        db.agregar_cliente(nombre, apellido, dni, correo, celular, direccion)
        db.close()
        return redirect(url_for('cliente'))
    return render_template('agregar_cliente.html')


@app.route('/mostrar_cliente', methods=['POST'])
def mostrar_cliente():
    """Mostrar los detalles de un cliente seleccionado por su ID."""
    cliente_id = request.form.get('cliente_id')
    
    # Obtener el cliente por su ID desde la base de datos
    db = Database()
    db.connect()
    cliente = db.fetchone("SELECT * FROM Clientes WHERE id = ?", (cliente_id,))
    clientes = db.fetchall("SELECT * FROM Clientes")  # Obtener todos los clientes
    db.close()

    return render_template('clientes.html', cliente=cliente, clientes=clientes)


if __name__ == '__main__':
    app.run(debug=True)