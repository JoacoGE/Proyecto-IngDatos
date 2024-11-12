
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


def llenar_productos():
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


# Listas de tipos de prendas y adjetivos
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


def generar_nombres_prendas(cantidad):
    nombres_de_prendas = set()  # Usar un conjunto para evitar duplicados
    while len(nombres_de_prendas) < cantidad:
        tipo = random.choice(tipos_de_prendas)
        adjetivo = random.choice(adjetivos)
        nombre = f"{adjetivo} {tipo.capitalize()}"
        nombres_de_prendas.add(nombre)
    return list(nombres_de_prendas)

# Genera 1000 nombres de prendas únicos
nombres_de_prendas = generar_nombres_prendas(1000)

def llenar_productos():
    i = 0
    contenido = ''
    while i < 1000:
        id = 1+i
        nombre = nombres_de_prendas[i-1]  
        codigo = random.randint(1000,9999)
        precio = random.uniform(1000.0, 9999.0)
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

llenar_productos()