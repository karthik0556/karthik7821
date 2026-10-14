
class Book {
    var title: String
    var author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class Library {
    var books: [Book] = []

    func addBook(_ book: Book) {
        books.append(book)
        print("Book added: \(book.title)")
    }

    func removeBook(title: String) {
        if let index = books.firstIndex(where: {
            $0.title.lowercased() == title.lowercased()
        }) {
            let removedBook = books.remove(at: index)
            print("Book removed: \(removedBook.title)")
        } else {
            print("Book not found")
        }
    }

    func searchBook(title: String) {
        if let book = books.first(where: {
            $0.title.lowercased() == title.lowercased()
        }) {
            print("Found: \(book.title) by \(book.author)")
        } else {
            print("Book not found")
        }
    }

    func listBooks() {
        if books.isEmpty {
            print("Library is empty")
        } else {
            print("Books in Library:")
            for book in books {
                print("\(book.title) by \(book.author)")
            }
        }
    }
}

let library = Library()

let book1 = Book(title: "Swift Programming", author: "John")
let book2 = Book(title: "Python Basics", author: "David")

library.addBook(book1)
library.addBook(book2)

library.listBooks()

library.searchBook(title: "Swift Programming")

library.removeBook(title: "Python Basics")

library.listBooks()
