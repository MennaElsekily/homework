/*Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.*/
class Book {
  String _title = '';
  int _pages = 0;

  String get title => _title;

  set title(String value) {
    if (value.trim().isEmpty) {
      print('Invalid title');
    } else {
      _title = value;
    }
  }

  set pages(int value) {
    if (value <= 0) {
      print('Invalid pages');
    } else {
      _pages = value;
    }
  }

  int get readingTime => _pages * 2;
}

void main() {
  Book book1 = Book();
  book1.title = 'Clean Code';
  book1.pages = 300;
  print('Title: ${book1.title}');
  print('Estimated reading time: ${book1.readingTime} minutes');
}
