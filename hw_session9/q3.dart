/*Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.*/
class Movie {
  String title;
  double rating;
  Movie(this.title, this.rating);
}

void main() {
  List<Movie> Movies = [
    Movie('Inception', 8.8),
    Movie('The Room', 3.7),
    Movie('Interstellar', 8.6),
    Movie('A Quiet Place', 7.5),
  ];
  for (var m in Movies) {
    if (m.rating > 7) print("Movie name: ${m.title} Rating: ${m.rating}");
  }
}
