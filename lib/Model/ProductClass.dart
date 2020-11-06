class Product {
  String name;
  String subtitle;
  String image;
  String price;
  String water;
  String sunshine;

  Product(
      {this.name,
      this.subtitle,
      this.image,
      this.price,
      this.water,
      this.sunshine});
}

List<Product> productList = [
  Product(
    name: "Fiddle Leaf Fig Topiary",
    subtitle: "10\" nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/fejka-artificial-potted-plant-in-outdoor-fiddle-leaf-fig__0748883_PE745272_S5.JPG",
    price: "\$85",
    water: "250 mg \n water",
    sunshine: "18 C \n sunshine",
  ),
  Product(
    name: "Bird of Paradise",
    subtitle: "10\"nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/strelitzia-potted-plant-bird-of-paradise__0836980_PE778631_S5.JPG",
    price: "\$185",
    water: "20 mg \n water",
    sunshine: "28 C \n sunshine",
  ),
  Product(
    name: "Himalaya Mix",
    subtitle: "20\"nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/himalayamix-potted-plant-assorted__0902903_PE594590_S5.JPG",
    price: "\$185",
    water: "150 mg \n water",
    sunshine: "30 C \n sunshine",
  ),
  Product(
    name: "Lavandula",
    subtitle: "18\"nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/lavandula-potted-plant-lavender__0635955_PE697575_S5.JPG",
    price: "\$485",
    water: "150",
    sunshine: "20",
  ),
  Product(
    name: "Coffea Arabica",
    subtitle: "8\"nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/coffea-arabica-potted-plant-with-mug-coffee-plant__0573875_PE667947_S5.JPG",
    price: "\$105",
    water: "225",
    sunshine: "19",
  ),
  Product(
    name: "Musa Banana",
    subtitle: "12\"nursery pot",
    image:
        "https://www.ikea.com/gb/en/images/products/musa-banana-potted-plant__67468_PE181309_S5.JPG",
    price: "\$9",
    water: "250",
    sunshine: "18",
  ),
];

class Overview {
 String wat;
 String humidity;
 String size;

  Overview({
    this.wat,
    this.humidity,
    this.size,
  });
}

List<Overview> overviewList = [
  Overview(wat: "every 7 days", humidity: "upto 42\%", size: "18\" - 20\""),
  Overview(wat: "every 10 days", humidity: "upto 12\%", size: "9\" - 10\""),
  Overview(wat: "every 2 days", humidity: "upto 78\%", size: "15\" - 40\"")
];
