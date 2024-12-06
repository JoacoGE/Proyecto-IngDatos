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
    """Formulario para agregar un nuevo cliente."""
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        correo = request.form['correo']
        celular = request.form['celular']
        direccion = request.form['direccion']
        db = Database()
        db.connect()
        db.execute("""
            INSERT INTO Clientes (nombre, apellido, dni, correo, celular, direccion)
            VALUES (?, ?, ?, ?, ?, ?)
        """, (nombre, apellido, dni, correo, celular, direccion))
        db.close()

        return redirect(url_for('cliente'))  # Redirige a la lista de clientes

    return render_template('agregar_cliente.html')  # Renderiza el formulario en GET


@app.route('/editar_clientes/<int:cliente_id>', methods=['GET', 'POST'])
def editar_cliente(cliente_id):
    """Editar los datos de un cliente."""
    db = Database()
    db.connect()
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        correo = request.form['correo']
        celular = request.form['celular']
        direccion = request.form['direccion']
        db.execute("""
            UPDATE Clientes
            SET nombre = ?, apellido = ?, dni = ?, correo = ?, celular = ?, direccion = ?
            WHERE id = ?
        """, (nombre, apellido, dni, correo, celular, direccion, cliente_id))
        db.close()
        return redirect(url_for('cliente'))   
    cliente = db.fetchone("SELECT * FROM Clientes WHERE id = ?", (cliente_id,))
    db.close()
    if cliente:
        return render_template('editar_cliente.html', cliente=cliente)
    else:
        return "Cliente no encontrado", 404

if __name__ == '__main__':
    app.run(debug=True)