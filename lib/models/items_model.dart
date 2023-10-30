class Items {
  final String name, image, desc;
  Items({required this.name, required this.image, required this.desc});
}

final List<Items> items = [
  Items(image: "Item1.png", name: "Vegan Resto", desc: "12 Mins"),
  Items(image: "Item2.png", name: "Heathy Food", desc: "8 Mins"),
  Items(image: "Item3.png", name: "Good Food", desc: "12 Mins"),
  Items(image: "Item4.png", name: "Smart Resto", desc: "8 Mins"),
  Items(image: "Item5.png", name: "Cake", desc: "10 Mins"),
  Items(image: "Item6.png", name: "Wheat", desc: "5 Mins"),
];
