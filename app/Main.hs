import Data.List (intercalate)
import Data.List.Split (splitOn) -- splitOn を使うためにインポート

-- Book 型の定義
data Book = Book {
    title :: String,
    publisher :: String,
    date :: String,
    authors :: [String]
} deriving (Show)

-- ユーザー入力を受け取る関数
inputBookInfo :: IO Book
inputBookInfo = do
    putStrLn "Enter book title:"
    bookTitle <- getLine
    putStrLn "Enter publisher name:"
    bookPublisher <- getLine
    putStrLn "Enter publish date (e.g., YYYYMMDD):"
    bookDate <- getLine
    putStrLn "Enter authors (comma-separated):"
    authorsInput <- getLine
    let bookAuthors = splitOn "," authorsInput -- カンマで分割してリストに変換
    return $ Book bookTitle bookPublisher bookDate bookAuthors

-- メイン関数
main :: IO ()
main = do
    myBook <- inputBookInfo -- IO アクションの結果を取得
    print myBook
