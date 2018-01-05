import requests
from bs4 import BeautifulSoup
import mysql.connector

url = 'https://www.newegg.com/Video-Cards-Video-Devices/Category/ID-38?Tpk=graphics%20card'

source = requests.get(url).text

soup = BeautifulSoup(source, 'lxml')



conn = mysql.connector.connect(host='127.0.0.1', user='x', database='scrape',password="x")                         
cursor = conn.cursor()  



# final_pic =('http:' + item_picture)
# print(final_pic)

# split_pic = (final_pic.split('CompressAll300/'))[1]
# print(split_pic)
item_container = soup.find_all('div', class_='item-container')
# if item-container.find_all('a', class_='item-title').text
	# item_picture = 'http:' + item_container.find('img', class_='lazy-img')['data-src']
		# item_name = item_container.get('a', class_='item-title').text
	# item_price = '$' + item_container.find('li', class_='price-current').find('strong').text + '.99'
	# item_shipping = (item_container.find('li', class_='price-ship').text).strip()
for item_name in item_container:
	name = item_name.find_all('a', class_='item-title')
	print (name[0].text)
# except Exception as e:
# 	item_container = None
# 	item_title = None
# 	item_picture = None
# 	item_price = None
# 	item_shipping = None
	
# print(item_container)
# print(len(item_name))
# print(item_picture)
# print(item_name.text)

# print(item_price)
# print(item_shipping)

# add_item = ("INSERT INTO newegg "
# 			"(id, itemname, itempic, itemprice, itemshipping) "
# 			"VALUES (%s, %s, %s, %s, %s)")

# data_item = ('1', item_name, item_picture, item_price, item_shipping)


# cursor.execute("DELETE FROM newegg ")
# conn.commit()
# cursor.execute(add_item, data_item)  
# conn.commit()

cursor.close() 
conn.close()                                                                  


