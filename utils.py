import datetime
import yaml
import re
from pathlib import Path
import os 

def pull_YMF(ogFile):
    with open(ogFile, 'r') as og:
        justText = re.search(r'---(.*)---', og.read(), re.DOTALL).group(1).split('\n')
        for line in justText:
            if line.startswith("date-created") or line.startswith('force'):
                justText.remove(line)
    jesus = yaml.safe_load('\n'.join(justText))
    return jesus

def get_table_data_by_key(keys: list, books: dict, make_link=True) -> list:
    returnValue = []
    for book in books:
        dataList = []
        for key in keys:
            if key == "Title" and make_link:
                dataList.append(f"{book[key]}")
            elif key == "Mood":
                dataList.append(f"`<span class='emoji'> {book[key]} </span>`" + "{=html}")
            elif isinstance(book[key], datetime.date):
                dataList.append(book[key].strftime("%b %d, %Y"))
            elif isinstance(book[key], int):
                dataList.append(book[key].__str__())
            elif isinstance(book[key], type(None)):
                dataList.append('')
            else:
                dataList.append(book[key])
        returnValue.append(dataList)
    return returnValue

def make_djot_table(someData: iter) -> str:
    return "\n".join(map(lambda x: "|  " + "  |  ".join(x) + "  |" , someData))
