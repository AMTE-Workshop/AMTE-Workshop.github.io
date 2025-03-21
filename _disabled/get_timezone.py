import requests

# Replace with your API key and city/country
api_key = "YOUR_API_KEY"
city = "Dresden"
country = "Germany"

response = requests.get(f"http://api.timezonedb.com/v2.1/get-time-zone", params={
    "key": api_key,
    "format": "json",
    "by": "zone",
    "zone": f"{city}/{country}"
})

data = response.json()
print(data["zoneName"])  # Example: "Central European Time"