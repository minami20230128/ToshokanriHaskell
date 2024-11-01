import Data.List (intercalate)

data book = Book{
    title::String,
    publisher::String,
    date::String,
    authors::[String]
}

book::ook
book = Book {
    title = "title",
    publisher = "publisher",
    date = "20241101",
    authors = ["author"]
}

displayBookInfo::Book->String
displayBookInfo book = "title:" ++ title Book ++ ", publisher:" ** publisher book ++ ", date:" ++ date book ++ ", authors: " ++ intercalate ", " (authors) book

main::IO()
main = putString(displayBookInfo book)