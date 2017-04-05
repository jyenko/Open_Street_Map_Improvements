# -*- coding: utf-8 -*-
"""
Created on Sat Apr 01 14:11:07 2017

@author: Jeremy J. Yenko
"""

"""
Your task is to use the iterative parsing to process the map file and
find out not only what tags are there, but also how many, to get the
feeling on how much of which data you can expect to have in the map.
Fill out the count_tags function. It should return a dictionary with the 
tag name as the key and number of times this tag can be encountered in 
the map as value.

Note that your code will be tested with a different data file than the 'example.osm'
"""
import xml.etree.cElementTree as ET
import pprint


file_name = 'MSP.osm'

def count_tags(filename):
    tags_dict = {}
    for event, elem in ET.iterparse(filename):
        if elem.tag not in tags_dict.keys():
            tags_dict[elem.tag] = 1
        else:
            tags_dict[elem.tag] += 1
    elem.clear()
    return tags_dict
 

print count_tags(file_name)

'''
def test():

    tags = count_tags('MSP.osm')
    pprint.pprint(tags)
    assert tags == {'bounds': 1,
                     'member': 3,
                     'nd': 4,
                     'node': 20,
                     'osm': 1,
                     'relation': 1,
                     'tag': 7,
                     'way': 1}

    

if __name__ == "__main__":
    test()
'''