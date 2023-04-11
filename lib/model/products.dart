class Products {
  String? image, name, details, discount;
  double? price;
  int ?id;
  int quentity = 1;
  Products({this.image, this.details, this.price, this.name, this.discount,this.id});
}

List<Products> productlist = [
  Products(
    id: 1,
    image: "assets/images/m1.jpg",
    name: "Buck Mason",
    discount: "10%",
    price: 500,
    details: "145 GSM Cotton",
  ),
  Products(
    id: 2,
    image: "assets/images/m4.jpeg",
    name: "Gucci",
    discount: "20%",
    price: 1500,
    details: "152 GSM Cotton",
  ),
  Products(
    id: 3,
    image: "assets/images/w1.jpg",
    name: "Aidan Mattox",
    discount: "12%",
    price: 8280,
    details: "Collection Full Set-1",
  ),Products(
    id: 4,
    image: "assets/images/w2.jpg",
    name: "Aidan Mattox",
    discount: "15%",
    price: 9200,
    details: "Collection Full Set-2",
  ),Products(
    id: 5,
    image: "assets/images/m3.jpg",
    name: "Buck Mason",
    discount: "10%",
    price: 11200,
    details: "Collection Full Set-1",
  ),Products(
    id: 6,
    image: "assets/images/wall.jpg",
    name: "Mack Weldon",
    discount: "15%",
    price: 950,
    details: "156 GSM Cotton",
  ),Products(
    id: 7,
    image: "assets/images/m1.jpg",
    name: "Buck Mason",
    discount: "10%",
    price: 500,
    details: "145 GSM Cotton",
  ),Products(
    id: 8,
    image: "assets/images/m4.jpeg",
    name: "Gucci",
    discount: "20%",
    price: 1500,
    details: "152 GSM Cotton",
  ),Products(
    id: 9,
    image: "assets/images/w1.jpg",
    name: "Aidan Mattox",
    discount: "12%",
    price: 8280,
    details: "Collection Full Set-1",
  ),Products(
    id: 10,
    image: "assets/images/w2.jpg",
    name: "Aidan Mattox",
    discount: "15%",
    price: 9200,
    details: "Collection Full Set-2",
  ),Products(
    id: 11,
    image: "assets/images/m3.jpg",
    name: "Buck Mason",
    discount: "10%",
    price: 11200,
    details: "Collection Full Set-1",
  ),Products(
    id: 12,
    image: "assets/images/wall.jpg",
    name: "Mack Weldon",
    discount: "15%",
    price: 950,
    details: "156 GSM Cotton",
  ),
];
