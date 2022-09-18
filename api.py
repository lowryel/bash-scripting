import requests

url = "https://api.apilayer.com/fixer/convert?to=USD&from=EUR&amount=200"
print(url)
payload = {}
headers= {
  "apikey": "GLUU6fHqsTCRg9YPdzyL99X9owIHsvjn"
}

response = requests.request("GET", url, headers=headers, data = payload)

status_code = response.status_code
result = response.json()
print(result)


