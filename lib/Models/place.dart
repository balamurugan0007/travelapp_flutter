import 'dart:ffi';

class Place {
  final String place_name;
  final String city;
  final String image;
  final String add;
  final Int cost;
  final String cat;

  Place(
      {required this.place_name,
      required this.add,
      required this.city,
      required this.cost,
      required this.image,
      required this.cat});
}
