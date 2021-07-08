from core.pyba_logic import PybaLogic


class CityLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    # get
    def getCityById(self, id):
        database = self.createDatabaseObj()
        sql = f"SELECT * FROM world.city where ID={id};"
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result[0]
        else:
            return {}

    # post
    def getCityByCountryCode(self, countryCode):
        database = self.createDatabaseObj()
        sql = f"SELECT * FROM world.city where CountryCode='{countryCode}';"
        result = database.executeQuery(sql)
        if len(result) != 0:
            return result
        else:
            return []
            
