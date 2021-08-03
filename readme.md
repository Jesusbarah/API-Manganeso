# **API MANGANESO**

## **Manual de uso**

En la presente RestAPI, se ofrece una compilación de datos sobre bikinis de la empresa Hibiscus, para cada producto dispuesto se ofrece la siguiente información:

- ID
- Nombre
- Categoría
- Precio
- Talla
- Inventario
- Imagen

Para poder hacer uso de estos, se debe accesar a la URL "https://api-manganeso.herokuapp.com/" utilizando un endpoint construido como "producto/id", donde <int:id> corresponde al ID del producto requerido. Sin embargo, para su correcto funcionamiento, se debe tomar en consideración los siguientes apartados:

### Método GET
(Método default en la URL). Este método regresa toda la información contenida en la base de datos. Es decir, retorna una lista de diccionarios con cada producto del catálogo completo de bikinis y accesorios. Para utilizarlo, se debe tomar en cuenta lo siguiente dentro de su código de programación: 

- Crear un requests.get("https://api-manganeso.herokuapp.com/producto/id") utilizando cualquier número como ID incluso si este no existiese dentro de la base de datos, ya que de todas formas traerá toda la información no importando qué número se ingrese. Se recomienda utilizar 0 en tal parámetro.


### Método POST
Este método regresa individualmente la información de un producto contenido en la base de datos. Es decir, en cada llamada retorna un diccionario con solo un elemento del catálogo de bikinis y accesorios. Para utilizarlo se debe tomar en cuenta lo siguiente dentro de su código de programación:

- Crear un requests.post("https://api-manganeso.herokuapp.com/producto/id") utilizando el número específico de ID del producto requerido. Cabe destacar que si el ID del producto no existe en la base de datos, esta llamada retornará un diccionario vacío. Por ejemplo si se ingresa un ID = 0, retornará lo siguiente: {}
