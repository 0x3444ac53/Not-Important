#!/bin/python3
import os
from pathlib import Path
from pathlib import Path
import re
import yaml
from pprint import PrettyPrinter
import datetime
from utils import *

def get_read_table(books: list) -> dict:
    readBooks = dict()
   # Use a list comprehension to filter the books by those that have been read
    read_books = [book for book in books if book['time-read']]
    # Loop through the read books and group them by series and fiction/non-fiction
    for book in read_books:
        key = book['Series'] if book['Series'] else "Novels" if book['fiction'] else "Non Fiction"
        readBooks.setdefault(key, []).append(book)
    return readBooks

def get_unread_table(books: list) -> list:
    tabledata = get_table_data_by_key(["Title", "Author", "Series"],
    filter(lambda x: not x["time-read"] and not x["Started"], books))
    
    return make_djot_table(tabledata)

def make_section_of_read(section, header):
        section = sorted(section, key=lambda x: x['number-in-series'] if x['number-in-series'] else 1)
        data = get_table_data_by_key(["Title", "Author", "time-read", "Mood"], section)
        return f"""
        ### {header}\n\n
        |  Title  |  Author  |  Read On  |  Mood  |
        |---------|----------|-----------|--------|
        """ + "\n".join(["|  {}  |".format("   |   ".join(i)) for i in data])


def make_read_table(monster: list) -> str:
    books = get_read_table(monster)
    Novels = books.pop("Novels")
    Nf = books.pop("Non Fiction")
    tables = [make_section_of_read(Novels, "Novels")]
    for header in books.keys():
        tables.append(make_section_of_read(books[header], header))
    tables.append(make_section_of_read(Nf, "Non Fiction"))
    return "\n\n".join(tables)

def get_currently_reading(books: list) -> str:
    currentlyReading = filter(lambda x: x['Started'], 
                       filter(lambda x: not x['time-read'], 
                       filter(lambda x: not x['abandoned'],
                              books)))
    tabledata = get_table_data_by_key(["Title", "Author", "Started"], currentlyReading)
    return make_djot_table(tabledata)

def get_abandoned_books(books : list) -> str:
    abandoned = get_table_data_by_key(
            ["Title", "Author", "abandoned"],
            filter(lambda x: x['abandoned'], books))
    return make_djot_table(abandoned)


def make_book_list(books):
    readBooks = get_read_table(books)
    unReadBooks = get_unread_table(books)
    currentlyReading = get_currently_reading(books)
    return """
`<LINK href="src/css/index.css" rel="stylesheet" type="text/css">`{{=html}}

# Nora's Book List

$(python3 Books.py | ~/.luarocks/bin/djot)

## Currently Reading
|  Title  |  Author  | Started on |
|-|-|-|
{}

## Read Books

{}

## Unread

|  Title  |  Author  |  Series  |
|---------|----------|----------|
{}

## Abandoned

|  Title  |  Author  |  Stopped reading on  |
|---------|----------|----------------------|
{}
          """.format(
              currentlyReading, 
              make_read_table(books), 
              get_unread_table(books), 
              get_abandoned_books(books))
