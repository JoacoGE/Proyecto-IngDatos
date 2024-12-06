import sqlite3

class Database:
    def __init__(self):
        self.db_name = 'BaseDatos/ProyectoIngDatos.db'
        self.connection = None

    def connect(self):
        """Establecer una conexión a la base de datos."""
        if self.connection is None:
            self.connection = sqlite3.connect(self.db_name)
            self.connection.row_factory = sqlite3.Row  # Permite acceder a las columnas por nombre
            print("Conexión establecida.")

    def close(self):
        """Cerrar la conexión a la base de datos."""
        if self.connection:
            self.connection.close()
            self.connection = None
            print("Conexión cerrada.")

    def execute(self, query, params=()):
        """Ejecutar una consulta SQL."""
        self.connect()  # Asegúrate de estar conectado
        cursor = self.connection.cursor()
        cursor.execute(query, params)
        self.connection.commit()
        return cursor

    def fetchall(self, query, params=()):
        """Ejecutar una consulta SQL y devolver todos los resultados."""
        cursor = self.execute(query, params)
        return cursor.fetchall()

    def fetchone(self, query, params=()):
        """Ejecutar una consulta SQL y devolver un único resultado."""
        cursor = self.execute(query, params)
        return cursor.fetchone()

    def get_all_products(self):
        """Obtener todos los productos de la base de datos."""
        query = "SELECT nombre, descripcion, precio, foto AS url_imagen FROM Producto"
        return self.fetchall(query)
    
    def get_all_clients(self):
        """Obtener todos los clientes de la base de datos."""
        query = "SELECT id,nombre, apellido, DNI, correo, celular, direccion FROM Clientes"
        return self.fetchall(query)
    
    #def eliminar_cliente(self, client_id):
    #    """Eliminar un cliente por su ID."""
    #    query = "DELETE FROM Clientes WHERE id = ?"
    #    return self.execute(query, (client_id,))

    def agregar_cliente(self, nombre, apellido, dni, correo, celular, direccion):
        """Agregar un cliente a la base de datos."""
        query = """
        INSERT INTO Clientes (nombre, apellido, DNI, correo, celular, direccion)
        VALUES (?, ?, ?, ?, ?, ?)
        """
        self.execute(query, (nombre, apellido, dni, correo, celular, direccion))
    
    def modificar_cliente(cliente_id, nombre, apellido, dni, correo, celular, direccion):
        """Actualizar los datos del cliente en la base de datos."""
        db = Database()
        db.connect()
        db.execute("""
            UPDATE Clientes
            SET nombre = ?, apellido = ?, dni = ?, correo = ?, celular = ?, direccion = ?
            WHERE id = ?
        """, (nombre, apellido, dni, correo, celular, direccion, cliente_id))
        db.close()
   
    def obtener_cliente_por_id(self, cliente_id):
        """Obtener un cliente de la base de datos por su ID."""
        query = "SELECT id, nombre, apellido, DNI, correo, celular, direccion FROM Clientes WHERE id = %s"
        # Asumiendo que usas %s para parámetros en SQL (esto es compatible con muchos motores de base de datos)
        return self.fetchone(query, (cliente_id,))