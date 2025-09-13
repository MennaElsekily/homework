/*Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.*/
class City {
  String name;
  int populations;
  City(this.name, this.populations);
}

void main() {
  City c1 = City("Alexandria", 10000);
  City c2 = City("Cairo", 500000);
  print("Name of the city: ${c1.name} populations:${c1.populations}");
  print("Name of the city: ${c2.name} populations:${c2.populations}");
}
