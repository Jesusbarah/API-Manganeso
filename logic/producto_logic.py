from core.pyba_logic import PybaLogic


class ProductoLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    # post
    def getProductoById(self, id):
        database = self.createDatabaseObj()
        sql = (f"SELECT inventario.id, producto.nombre, producto.categoria, producto.precio, inventario.talla, inventario.inventario, producto.imagen"
        + " FROM inventario JOIN producto ON inventario.idproducto = producto.id"
        + f" WHERE inventario.id = {id};")
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result[0]
        else:
            return {}

    # get
    def getAllProductos(self):
        database = self.createDatabaseObj()
        sql = (f"SELECT inventario.id, producto.nombre, producto.categoria, producto.precio, inventario.talla, inventario.inventario, producto.imagen"
        + " FROM inventario JOIN producto ON inventario.idproducto = producto.id;")
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result
        else:
            return []
