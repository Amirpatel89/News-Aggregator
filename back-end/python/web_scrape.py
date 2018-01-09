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


def get_data():
	lists = []
	for index, item_name in enumerate(item_container):
		name = item_name.find_all('a', class_='item-title')[0].text
		lists.append({'name': name})
		lists[index]['index'] = index
		
	# for listing in item_container:
	# 	names['name: %s' % listing.find_all('a', class_='item-title')[0].text] = ['name']
		# print(name)
	for index, item_price in enumerate(item_container):
		price = item_price.find('li', class_='price-current').find('strong')
		if price == None:
			# print('Not Available')
			price == ('Not Available')
			lists[index]['price'] = price


		else:
			# print('$' + price.text +'.99')
			price = ('$' + price.text +'.99')
			prices = []
		lists[index]['price'] = price
		# print(lists)
	for index, item_picture in enumerate(item_container):
			picture = 'http:' + item_picture.find('img', class_='lazy-img')['data-src']
			# print (picture)
			lists[index]['picture'] = picture
			# print(lists)
	for index, item_shipping in enumerate(item_container):
			shipping = (item_shipping.find('li', class_='price-ship').text).strip()
			lists[index]['shipping'] = shipping
			# print(lists[0]['name'])







	
	
	def create_table():
		# map(lists, range(0, len(lists[index])))
		val_index = lists[index]['index']
		val_name = lists[index]['name']
		val_picture = lists[index]['picture']
		val_price = lists[index]['price']
		val_shipping = lists[index]['shipping']


		add_item = ("INSERT INTO newegg "
					"(id, itemname, itempic, itemprice, itemshipping) "
					"VALUES (%s, %s, %s, %s, %s)")

		data_item = (val_index, val_name, val_picture, val_price, val_shipping)


		cursor.execute("DELETE FROM newegg ")
		conn.commit()
		cursor.execute(add_item, data_item)  
		conn.commit()

		cursor.close() 
		conn.close()                                                                  

	create_table();
get_data()

