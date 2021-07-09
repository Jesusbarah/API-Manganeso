from flask import Flask
from flask_restful import Api
from resources.producto_resource import Producto

app = Flask(__name__)
api = Api(app)

api.add_resource(Producto, "/producto/<int:id>")

if __name__ == "__main__":
    app.run(debug=True, port=23512)
