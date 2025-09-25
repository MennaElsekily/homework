/*Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).*/
class Vehicle {
  String _name = "";
  double _tankLiters = 40;
  double _kmPerLiter = 10;

  Vehicle(String name, double tankLiters, double kmPerLiter) {
    setName(name);
    setTankLiters(tankLiters);
    setKmPerLiter(kmPerLiter);
  }

  void setName(String value) {
    if (value.trim().isEmpty) {
      print("Invalid name");
    } else {
      _name = value;
    }
  }

  void setTankLiters(double value) {
    if (value <= 0) {
      print("Invalid tank size");
    } else {
      _tankLiters = value;
    }
  }

  void setKmPerLiter(double value) {
    if (value <= 0) {
      print("Invalid efficiency");
    } else {
      _kmPerLiter = value;
    }
  }

  String get name => _name;
  double get tankLiters => _tankLiters;
  double get kmPerLiter => _kmPerLiter;

  double fuelNeeded(double distanceKm) {
    return distanceKm / _kmPerLiter;
  }
}

class Car extends Vehicle {
  bool _acOn;
  Car(String name, double tankLiters, double kmPerLiter, this._acOn)
    : super(name, tankLiters, kmPerLiter);
  @override
  double fuelNeeded(double distanceKm) {
    double baseFuel = super.fuelNeeded(distanceKm);

    return _acOn ? baseFuel * 1.1 : baseFuel;
  }
}

class Truck extends Vehicle {
  double _cargoWeight;

  Truck(String name, double tankLiters, double kmPerLiter, this._cargoWeight)
    : super(name, tankLiters, kmPerLiter);
  @override
  double fuelNeeded(double distanceKm) {
    double penalty = 1 + (_cargoWeight / 10000);
    return super.fuelNeeded(distanceKm) * penalty;
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car("Family Car", 50, 15, true),
    Truck("Delivery Truck", 120, 8, 3000),
  ];

  double tripDistance = 100;

  for (var v in vehicles) {
    double fuel = v.fuelNeeded(tripDistance);
    print(
      "${v.name} needs ${fuel.toStringAsFixed(2)} liters for $tripDistance km",
    );
  }
}
