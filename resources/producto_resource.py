from flask_restful import Resource, reqparse
from logic.producto_logic import ProductoLogic


class Producto(Resource):
    def __init__(self):
        #self.producto_put_args = self.createParser()
        self.logic = ProductoLogic()

    """def createParser(self):
        args = reqparse.RequestParser()
        args.add_argument("Nombre", type=str, help="Nombre del producto")
        args.add_argument("Categoria", type=str, help="Categoria del producto")
        args.add_argument("Precio", type=float, help="Precio del producto")
        args.add_argument("Imagen", type=str, help="Imagen del producto")
        return args"""

        
    def get(self, id):
        productoDict = self.logic.getAllProductos()
        result = productoDict
        return result, 200
    
    def post(self, id):
        result = self.logic.getProductoById(id)
        return result, 200
