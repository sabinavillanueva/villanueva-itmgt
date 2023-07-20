pip install requests matplotlib

import requests
import matplotlib.pyplot as plt

def fetch_iss_location():
    url = 'http://api.open-notify.org/iss-now.json'
    locations = []

    for _ in range(100):
        response = requests.get(url)
        data = response.json()
        timestamp = data['timestamp']
        latitude = float(data['iss_position']['latitude'])
        longitude = float(data['iss_position']['longitude'])
        locations.append((latitude, longitude, timestamp))
        time.sleep(10

    return locations

def plot_iss_path(locations):
    latitudes = [loc[0] for loc in locations]
    longitudes = [loc[1] for loc in locations]

    plt.figure(figsize=(10, 6))
    plt.plot(longitudes, latitudes, marker='o', linestyle='-', color='b')
    plt.xlabel('Longitude')
    plt.ylabel('Latitude')
    plt.title('Path of International Space Station')
    plt.grid(True)
    plt.show()

if __name__ == '__main__':
    iss_locations = fetch_iss_location()
    plot_iss_path(iss_locations)
