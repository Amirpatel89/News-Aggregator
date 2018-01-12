import sys
import requests
from bs4 import BeautifulSoup
import mysql.connector


data = "test"
sys.stdout.flush()

urlGraphics = 'https://www.newegg.com/Video-Cards-Video-Devices/Category/ID-38?Tpk=graphics%20card'
urlRam = 'https://www.newegg.com/Desktop-Memory/SubCategory/ID-147?cm_sp=CAT_Memory_1-_-VisNav-_-Desktop-Memory'
urlProcessor = 'https://www.newegg.com/CPUs-Processors/Category/ID-34?Tpk=processor'
urlMotherboard = 'https://www.newegg.com/Motherboards/Category/ID-20'
urlStorage = 'https://www.newegg.com/Desktop-Internal-Hard-Drives/SubCategory/ID-14?Tid=167523'
urlCase = 'https://www.newegg.com/Computer-Cases/SubCategory/ID-7'
sourceGraphics = requests.get(urlGraphics).text
sourceRam = requests.get(urlRam).text
sourceProcessor = requests.get(urlProcessor).text
sourceMotherboard = requests.get(urlMotherboard).text
sourceStorage= requests.get(urlStorage).text
sourceCase= requests.get(urlCase).text
soup_graphics = BeautifulSoup(sourceGraphics, 'lxml')
soup_ram = BeautifulSoup(sourceRam, 'lxml')
soup_processor = BeautifulSoup(sourceProcessor, 'lxml')
soup_motherboard = BeautifulSoup(sourceMotherboard, 'lxml')
soup_storage = BeautifulSoup(sourceStorage, 'lxml')
soup_case = BeautifulSoup(sourceCase, 'lxml')





conn = mysql.connector.connect(host='127.0.0.1', user='x', database='scrape',password="x")                         
cursor = conn.cursor()  



graphics_container = soup_graphics.find_all('div', class_='item-container')
ram_container = soup_ram.find_all('div', class_='item-container')
processor_container = soup_processor.find_all('div', class_='item-container')
motherboard_container = soup_motherboard.find_all('div', class_='item-container')
storage_container = soup_storage.find_all('div', class_='item-container')
case_container = soup_case.find_all('div', class_='item-container')





def get_graphics():
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
get_graphics()

def get_ram():
	lists = []
	for index, item_name in enumerate(ram_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index

		

	for index, item_price in enumerate(ram_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:

			price == ('Not Available')
			lists[index]['price'] = price


		else:

			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price

	for index, item_picture in enumerate(ram_container):
			picture = 'http:' + item_picture.find('img')['src']
			
			lists[index]['picture'] = picture
			
	for index, item_shipping in enumerate(ram_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
	print(lists)
		
	def create_table():
		

	    cursor.execute("DELETE FROM ram")
	    conn.commit()

	    for product in lists:
	        val_index = product['index']
	        val_name = product['name']
	        val_picture = product['picture']
	        val_price = product['price']
	        val_shipping = product['shipping']


	        add_item = ("INSERT INTO ram"
	                    "(id, itemname, itempic, itemprice, itemshipping) "
	                    "VALUES (%s, %s, %s, %s, %s)")

	        data_item = (val_index, val_name, val_picture, val_price, val_shipping)

	        cursor.execute(add_item, data_item)
	        conn.commit()
                                                                 

	create_table();
get_ram()
def get_processor():
	lists = []
	for index, item_name in enumerate(processor_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index

		

	for index, item_price in enumerate(processor_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:

			price == ('Not Available')
			lists[index]['price'] = price


		else:

			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price

	for index, item_picture in enumerate(processor_container):
			picture = 'http:' + item_picture.find('img')['src']
			
			lists[index]['picture'] = picture
			
	for index, item_shipping in enumerate(processor_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
	print(lists)
		
	def create_table():
		

	    cursor.execute("DELETE FROM processors")
	    conn.commit()

	    for product in lists:
	        val_index = product['index']
	        val_name = product['name']
	        val_picture = product['picture']
	        val_price = product['price']
	        val_shipping = product['shipping']


	        add_item = ("INSERT INTO processors"
	                    "(id, itemname, itempic, itemprice, itemshipping) "
	                    "VALUES (%s, %s, %s, %s, %s)")

	        data_item = (val_index, val_name, val_picture, val_price, val_shipping)

	        cursor.execute(add_item, data_item)
	        conn.commit()
                                                                 

	create_table();
get_processor()
def get_motherboard():
	lists = []
	for index, item_name in enumerate(motherboard_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index

		

	for index, item_price in enumerate(motherboard_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:

			price == ('Not Available')
			lists[index]['price'] = price


		else:

			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price

	for index, item_picture in enumerate(motherboard_container):
			picture = 'http:' + item_picture.find('img')['src']
			
			lists[index]['picture'] = picture
			
	for index, item_shipping in enumerate(motherboard_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
	print(lists)
		
	def create_table():
		

	    cursor.execute("DELETE FROM motherboards")
	    conn.commit()

	    for product in lists:
	        val_index = product['index']
	        val_name = product['name']
	        val_picture = product['picture']
	        val_price = product['price']
	        val_shipping = product['shipping']


	        add_item = ("INSERT INTO motherboards"
	                    "(id, itemname, itempic, itemprice, itemshipping) "
	                    "VALUES (%s, %s, %s, %s, %s)")

	        data_item = (val_index, val_name, val_picture, val_price, val_shipping)

	        cursor.execute(add_item, data_item)
	        conn.commit()
                                                                 

	create_table();
get_motherboard()
def get_storage():
	lists = []
	for index, item_name in enumerate(storage_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index

		

	for index, item_price in enumerate(storage_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:

			price == ('Not Available')
			lists[index]['price'] = price


		else:

			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price

	for index, item_picture in enumerate(storage_container):
			picture = 'http:' + item_picture.find('img')['src']
			
			lists[index]['picture'] = picture
			
	for index, item_shipping in enumerate(storage_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
	print(lists)
		
	def create_table():
		

	    cursor.execute("DELETE FROM storage")
	    conn.commit()

	    for product in lists:
	        val_index = product['index']
	        val_name = product['name']
	        val_picture = product['picture']
	        val_price = product['price']
	        val_shipping = product['shipping']


	        add_item = ("INSERT INTO storage"
	                    "(id, itemname, itempic, itemprice, itemshipping) "
	                    "VALUES (%s, %s, %s, %s, %s)")

	        data_item = (val_index, val_name, val_picture, val_price, val_shipping)

	        cursor.execute(add_item, data_item)
	        conn.commit()
                                                                 

	create_table()
get_storage()
	def get_case()


