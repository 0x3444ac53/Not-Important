import BookPageMaker
from utils import *
from pprint import PrettyPrinter

books_directory = Path("./books/")
books = [yaml.load(i.open()) for i in books_directory.glob("*")]
book_list = BookPageMaker.make_book_list(books)
print(f'\n\n{book_list}')

