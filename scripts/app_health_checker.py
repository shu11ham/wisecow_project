import requests

url = "http://127.0.0.1:54617"  # Use your Minikube service URL

try:
    response = requests.get(url)
    if response.status_code == 200:
        print("Application is UP ✅")
    else:
        print("Application is DOWN ❌")
except:
    print("Application is DOWN ❌")

