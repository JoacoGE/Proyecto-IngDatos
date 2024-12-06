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
        """Ejecutar una consulta SQL que no requiere resultados."""
        self.connect()
        cursor = self.connection.cursor()
        cursor.execute(query, params)
        self.connection.commit()
        return cursor

    def executeR(self, query, params=()):
        """Ejecutar una consulta SQL que devuelve resultados."""
        self.connect()
        cursor = self.connection.cursor()
        cursor.execute(query, params)
        results = cursor.fetchall()
        return results

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
        """Obtener todos los clientes de la base de datos ordenados por ID descendente."""
        query = """
        SELECT id, nombre, apellido, DNI, correo, celular, direccion
        FROM Clientes
        ORDER BY id DESC
        """
        return self.fetchall(query)
    
    def eliminar_cliente(self, cliente_id):
        query = "DELETE FROM Clientes WHERE id = ?"
        self.execute(query, (cliente_id,))
        self.commit()

    def agregar_cliente(self, nombre, apellido, dni, correo, celular, direccion):
        """Agregar un cliente a la base de datos."""
        query = """
        INSERT INTO Clientes (nombre, apellido, DNI, correo, celular, direccion)
        VALUES (?, ?, ?, ?, ?, ?)
        """
        self.execute(query, (nombre, apellido, dni, correo, celular, direccion))
    
    def modificar_cliente(self, cliente_id, nombre, apellido, dni, correo, celular, direccion):
        """Actualiza los datos de un cliente en la base de datos."""
        query = """
        UPDATE Clientes
        SET nombre = ?, apellido = ?, dni = ?, correo = ?, celular = ?, direccion = ?
        WHERE id = ?
        """
        self.execute(query, (nombre, apellido, dni, correo, celular, direccion, cliente_id))
    
    def get_all_pedidos(self):
        """Obtener todos los pedidos de la base de datos."""
        query = "SELECT p.Nro_pedido As Nro_Pedido, p.monto as Monto, c.nombre as NombreCliente, e.nombre as Estado, t.nombre as TipoDeEntrega  FROM Pedido p inner JOIN Clientes c on c.id=p.idCliente INNER JOIN Estado e on e.id=p.idEstado INNER JOIN TipoEntrega t on t.id=p.idEntrega"
        return self.fetchall(query)

    
   
    
