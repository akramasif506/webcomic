import sys
import requests
import urllib
import webbrowser
import json
import random
from pprint import pprint
from mysql import connector

def get_cofig(config_path):
    rd = open(config_path).read()
    return json.loads(rd)

def parser(data,url,table):
    output_dict = {}
    inner_dict = {}
    comic = data.get("safe_title")
    alt_text = data.get("alt")
    number = data.get("num")
    link = url.replace("/info.0.json","")
    image = data.get('img').split("/")[-1]
    image_link = data.get('img')
    output_dict['comic'] = comic
    inner_dict['alt_text'] = alt_text
    inner_dict['number'] = number
    inner_dict['link'] = link
    inner_dict['image'] = image
    inner_dict['image_link'] = image_link
    output_dict['comic_meta'] = inner_dict
    insert_statement = "insert into " + table + " values( "
    insert_statement = insert_statement + '"' + comic + '","' + alt_text + '",' + str(number) +',"' + link + '","' + image + '","' + image_link + '")' 
    sql_insert_list.append(insert_statement)
    return output_dict,sql_insert_list

def connect_db(db_properties):
    host = db_properties['host']
    user = db_properties['user']
    password = db_properties['password']
    database = db_properties['database']
    mydb = connector.connect(
          host=host,
          user=user,
          password=password
    )
    return mydb


if __name__ == "__main__":
    config_path = sys.argv[1] #"E:\\Akram\\RedHat\\conf\\config.json"
    properties = get_cofig(config_path)
    base_url = properties['app_properties']['base_url']
    number_of_comic = properties['app_properties']['number_of_comic']
    comic_number_range = properties['app_properties']['comic_number_range']
    db_properties = properties['db_properties']
    mydb = connect_db(db_properties)
    db_cursor = mydb.cursor()
    table = properties['app_properties']['table_name']
    final_dict = []
    sql_insert_list = []
    for num in range(number_of_comic):
        comic_id = random.randint(1,comic_number_range)
        url = base_url + "/" + str(comic_id) + "/info.0.json"
        data = requests.get(url).json()
        output_dict,sql_insert_list = parser(data,url,table)
        final_dict.append(output_dict)
    pprint(final_dict,sort_dicts=False)
    for statement in sql_insert_list:
        #print(statement)
        db_cursor.execute(statement)
        
    mydb.commit()
    mydb.close()