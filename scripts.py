
from faker import Faker
from datetime import datetime, timedelta
import random
import string

fake = Faker()

# id, nombre, apellido, DNI, correo, celular, direccion
def llenar_clientes():
    i = 0
    contenido = ''
    while i < 1000:
        id = 1+i
        nombre = fake.name()
        apellido = fake.last_name()
        dni = random.randint(70000000,79999999)
        correo = fake.email()
        telefono = fake.phone_number()
        direccion = fake.address()
        tmp = f"INSERT INTO Clientes (id, nombre, apellido, dni, correo, telefono, direccion) VALUES ({id}, '{nombre}', '{apellido}', {dni},'{correo}', '{telefono}','{direccion}' );\n"
        contenido= contenido+tmp
        i = i + 1
    with open('inserts_clientes.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)

# Listas de tipos de prendas, adjetivos y calificacion
tipos_de_prendas = [
    "camiseta", "pantalón", "chaqueta", "sudadera", "falda", "blusa", 
    "short", "abrigo", "traje", "vestido", "chaleco", "camisa", "jeans",
    "suéter", "top", "leggins", "parka", "bufanda", "camisón", "bata"
]

adjetivos = [
    "Comfort", "Essential", "Elegant", "Classic", "Cozy", "Urban", 
    "Soft", "Vintage", "Bold", "Trendy", "Relax", "Modern", "Casual",
    "Lux", "Sporty", "Luxe", "Active", "Eco", "Fresh", "Cool"
]

rangos =[
    "5 estrellas", "4 estrellas", "3 Estrellas", "2 Estrellas", "1 Estrella"
]


def generar_nombres_prendas(cantidad):
    nombres_de_prendas = set()  # Usar un conjunto para evitar duplicados
    nombres_de_prendas.add("Polo Pique")  # Agregar un nombre fijo
    while len(nombres_de_prendas) < cantidad:
        tipo = random.choice(tipos_de_prendas)
        adjetivo = random.choice(adjetivos)
        nombre = f"{adjetivo} {tipo}"
        nombres_de_prendas.add(nombre)
    return list(nombres_de_prendas)

# Genera 1000 nombres de prendas únicos
nombres_de_prendas = generar_nombres_prendas(400)

def llenar_productos():
    i = 0
    contenido = ''

    while i < 1000:
        id = 1+i
        nombre = random.choice(nombres_de_prendas)
        codigo = random.randint(1000,9999)
        precio = round(random.uniform(1000.0, 9999.0), 2)
        foto = fake.image_url()
        descripcion = fake.text()  
        especificaciones = fake.text()
        idMarca = random.randint(1,10)
        idTipoProducto = random.randint(1,10)
        idProveedor = random.randint(1,10) 
        idTemporada = random.randint(1,8)
        idGenero = random.randint(1,5)
        tmp = f"INSERT INTO Producto (id, nombre, codigo, precio, foto, descripcion, especificaciones, idMarca, idTipoProducto, idProveedor, idTemporada, idGenero ) VALUES ({id}, '{nombre}', {codigo}, {precio},'{foto}', '{descripcion}','{especificaciones}', {idMarca},{idTipoProducto}, {idProveedor},{idTemporada}, {idGenero} );\n"
        contenido= contenido+tmp
        i = i + 1
    with open('inserts_productos.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)


def llenar_producto_talla_color():
    i = 0
    contenido = ''
    combinaciones = set() 

    while i < 100000 :
        idProducto = random.randint(1, 1000)
        idTalla = random.randint(1, 26)
        idColor = random.randint(1, 15)

        combinacion = (idProducto, idTalla, idColor)
        
        if combinacion not in combinaciones:
            combinaciones.add(combinacion) 
            id = i + 1
            tmp = f"INSERT INTO Producto_Talla_Color (id, idProducto, idTalla, idColor) VALUES ({id}, {idProducto}, {idTalla}, {idColor});\n"
            contenido += tmp
            i += 1  

    with open('inserts_producto_talla_color.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)

def llenar_pedidos():
    i = 0
    contenido = ''
    while i < 10000:
        id = 1+i
        NroPedido = random.randint(10000, 99999)
        fecha = f"'{fake.date_time_between(start_date='-1y', end_date='now').strftime('%d/%m/%y')}'"
        Monto = round(random.uniform(200.0, 400.0),2)
        id_cliente = random.randint(1, 1000)
        id_estado = random.randint(1, 2)
        id_entrega = random.randint(1, 2)
        tmp = f"INSERT INTO Pedido (id, Nro_pedido, fecha, monto, idCliente, idEstado, idEntrega) VALUES ({id}, {NroPedido}, {fecha}, {Monto}, {id_cliente}, {id_estado}, {id_entrega});\n"
        contenido += tmp
        i += 1  

    with open('inserts_Pedido.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)

def llenar_entregaDomicilio():
    i = 0
    contenido = ''
    while i < 1000:
        id = 1+i
        direccion = fake.address()
        idTipoEntrega = 1
        idDistrito = random.randint(1,88)
        tmp = f"INSERT INTO EntregaDomicilio (id, direccion, idTipoEntrega, idDistrito) VALUES ({id}, '{direccion}', {idTipoEntrega}, {idDistrito});\n"
        contenido= contenido+tmp
        i = i + 1
    with open('inserts_entrega_domicilio.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)

def llenar_entregaRecojo():
    i = 0
    contenido = ''
    while i < 1000:
        id = 1+i
        idTipoEntrega = 2
        idSede = random.randint(1,19)
        tmp = f"INSERT INTO EntregaRecojo (id, idTipoEntrega, idSede) VALUES ({id}, {idTipoEntrega}, {idSede});\n"
        contenido= contenido+tmp
        i = i + 1
    with open('inserts_entregaRecojo.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)

def llenar_pedidoproductotallacolor():
    i = 0
    contenido = ''
    while i < 1000:
        id = 1+i
        idPedido = random.randint(1,10000)
        idProductoTallaColor = random.randint(1,10000)
        cantidad = random.randint(1,3)
        tmp = f"INSERT INTO PedidoProductoTallaColor (id, idPedido, idProductoTallaColor, cantidad) VALUES ({id}, '{idPedido}', '{idProductoTallaColor}', {cantidad});\n"
        contenido= contenido+tmp
        i = i + 1
    with open('inserts_pedido_producto_talla_color.sql', 'w', encoding='utf-8') as archivo:
        archivo.write(contenido)


llenar_pedidos()