import html_to_json
import requests
import sys

with open(sys.argv[1], "r") as html_file:
	html = html_file.read()
	
#with open("data.json", "w") as file:
#	json.dump(json_, file)
#url = "https://www.bluejeans.com"
#headers = {
#	'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 \
#	(KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'
#}	
#html_response = requests.get(url=url, headers = headers)
print(html_to_json.convert(html))
#html_response.text))
#output_json)
