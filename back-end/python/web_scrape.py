import sys
import requests
from bs4 import BeautifulSoup
import mysql.connector


data = "test"
sys.stdout.flush()

urlGraphics = 'https://www.newegg.com/Video-Cards-Video-Devices/Category/ID-38?Tpk=graphics%20card'
urlRam = 'https://www.newegg.com/Desktop-Memory/SubCategory/ID-147?cm_sp=CAT_Memory_1-_-VisNav-_-Desktop-Memory'
sourceGraphics = requests.get(urlGraphics).text
sourceRam = requests.get(urlRam).text
soup_graphics = BeautifulSoup(sourceGraphics, 'lxml')
soup_ram = BeautifulSoup(sourceRam, 'lxml')


conn = mysql.connector.connect(host='127.0.0.1', user='x', database='scrape',password="x")                         
cursor = conn.cursor()  



graphics_container = soup_graphics.find_all('div', class_='item-container')


def get_data():
	lists = []
	for index, item_name in enumerate(graphics_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index
		

	for index, item_price in enumerate(graphics_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:

			price == ('Not Available')
			lists[index]['price'] = price


		else:

			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price

	for index, item_picture in enumerate(graphics_container):
			picture = 'http:' + item_picture.find('img', class_='lazy-img')['data-src']
			
			lists[index]['picture'] = picture
			
	for index, item_shipping in enumerate(graphics_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
		
	print(lists)
	def create_table():
		

	    cursor.execute("DELETE FROM graphicscards ")
	    conn.commit()

	    for product in lists:
	        val_index = product['index']
	        val_name = product['name']
	        val_picture = product['picture']
	        val_price = product['price']
	        val_shipping = product['shipping']


	        add_item = ("INSERT INTO graphicscards "
	                    "(id, itemname, itempic, itemprice, itemshipping) "
	                    "VALUES (%s, %s, %s, %s, %s)")

	        data_item = (val_index, val_name, val_picture, val_price, val_shipping)

	        cursor.execute(add_item, data_item)
	        conn.commit()
                                                                 

	create_table();
get_data()

