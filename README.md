# ip-geolocation-lookup

A simple Bash script to look up the geolocation (city, region, country, zip, coordinates, timezone) of any IP address using [ip-api.com](http://ip-api.com).

## Installation

1. Install jq:
```
sudo apt install jq -y
```

2. Clone the repository:
```
git clone https://github.com/Vansh8182/ip-geolocation-lookup.git
```

3. Enter the folder:
```
cd ip-geolocation-lookup
```

4. Make the script executable:
```
chmod +x ip-lookup.sh
```

5. Run it:
```
./ip-lookup.sh
```

## Usage

When prompted, enter any IP address:

```
Enter IP address: 8.8.8.8
CITY: Ashburn
REGION: Virginia
COUNTRY: United States
ZIP: 20149
LAT: 39.03
LON: -77.5
TIMEZONE: America/New_York
```

## License

This project is licensed under the MIT License.
