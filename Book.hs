import Data.List (intercalate)

data Book = Book{
    title::String,
    publisher::String,
    date::String,
    authors::[String]
}

book :: Book
book = Book {
    title = "title",
    publisher = "publisher",
    date = "20241101",
    authors = ["author"]
}

displayBookInfo::Book->String
displayBookInfo book = "title:" ++ title book ++ ", publisher:" ++ publisher book ++ ", date:" ++ date book ++ ", authors: " ++ intercalate ", " (authors book)

main::IO()
main = putStrLn(displayBookInfo book)