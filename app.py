from flask import Flask, render_template, request, redirect, url_for,flash
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
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        correo = request.form['correo']
        celular = request.form['celular']
        direccion = request.form['direccion']
        db = Database()
        try:
            db.agregar_cliente(nombre, apellido, dni, correo, celular, direccion)
        except Exception as e:
            print(f"Error al insertar datos: {e}")
            return "Error al agregar el cliente"
        return redirect(url_for('cliente'))
    return render_template('agregar_clientes.html')

@app.route('/editar_clientes', methods=['GET', 'POST'])
def buscar_cliente():
    if request.method == 'POST':
        cliente_id = request.form['cliente_id']
        return redirect(url_for('modificar_cliente', cliente_id=cliente_id))
    return render_template('buscar_clientes.html')
@app.route('/editar_clientes/<int:cliente_id>', methods=['GET', 'POST'])
def modificar_cliente(cliente_id):
    db = Database()
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        correo = request.form['correo']
        celular = request.form['celular']
        direccion = request.form['direccion']
        db.modificar_cliente(cliente_id, nombre, apellido, dni, correo, celular, direccion)
        db.close()
        return redirect(url_for('cliente'))
    cliente = db.fetchone("SELECT * FROM Clientes WHERE id = ?", (cliente_id,))
    db.close()
    if cliente:
        return render_template('editar_clientes.html', cliente=cliente)
    else:
        return "Cliente no encontrado.", 404


@app.route('/eliminar_cliente', methods=['GET', 'POST'])
def eliminar_cliente():
    db = Database()
    if request.method == 'POST':
        cliente_id = request.form.get('cliente_id')
        if cliente_id:
            cliente = db.fetchone("SELECT * FROM Clientes WHERE id = ?", (cliente_id,))
            if cliente:
                return render_template('eliminar_clientes.html', cliente=cliente)
            else:
                flash('Cliente no encontrado.', 'error')
                return redirect(url_for('eliminar_cliente'))
    
    return render_template('eliminar_clientes.html', cliente=None)

@app.route('/confirmar_eliminar_cliente', methods=['POST'])
def confirmar_eliminar_cliente():
    db = Database()
    cliente_id = request.form.get('cliente_id')
    
    try:
        db.execute("DELETE FROM Clientes WHERE id = ?", (cliente_id,))
        flash('Cliente eliminado exitosamente.', 'success')
    except Exception as e:
        flash(f'Error al eliminar el cliente: {str(e)}', 'error')
    
    return redirect(url_for('eliminar_cliente'))
 
@app.route('/pedidos')
def pedidos():
    db = Database()
    pedidos = db.get_all_pedidos()   
    return render_template('pedidos.html', pedidos=pedidos)


if __name__ == '__main__':
    app.run(debug=True)