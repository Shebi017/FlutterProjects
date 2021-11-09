class CatelogModel {
  static final items = [
    Item(1, "iPhone12", "Apple iphone 12th Generation", 233, "Black",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzE3RNNz-0hsfNcdVf_mvZAq4QD5PdM9Ho5w&usqp=CAU"),
    Item(2, "Nokia", "Nokia phone", 999, "White",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQic9f2YrjiAEU1nfxKO8YMjqnshPFfDngvSQ&usqp=CAU")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
// Objects creates

