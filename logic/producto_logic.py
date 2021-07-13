from core.pyba_logic import PybaLogic


class ProductoLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    # get
    def getProductoById(self, id):
        database = self.createDatabaseObj()
        sql = (f"SELECT inventario.id, producto.nombre, producto.categoria, producto.precio, inventario.talla, inventario.inventario, producto.imagen"
        + " FROM bdapi.inventario JOIN bdapi.producto ON inventario.idproducto = producto.id"
        + f" WHERE inventario.id = {id};")
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result[0]
        else:
            return {}

    # post
"""  def getCityByCountryCode(self, countryCode):
        database = self.createDatabaseObj()
        sql = f"SELECT * FROM world.city where CountryCode='{countryCode}';"
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result
        else:
            return []
"""