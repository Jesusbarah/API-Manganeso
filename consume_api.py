import requests

response = requests.get("http://localhost:23512/city/1")
print(response)
if response.status_code == 200:
    dataJson = response.json()
    print(dataJson)

""" response = requests.post("http://localhost:23512/city/645")
print(response)
if response.status_code == 200:
    dataJson = response.json()
    print(dataJson) """

