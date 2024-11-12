
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










llenar_clientes()