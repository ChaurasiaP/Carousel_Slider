class DataModel {
  final String title;
  final String imageName;
  final double price;
  final String rating;
  // bool isLiked = false;
  DataModel(
    this.title,
    this.imageName,
    this.price,
    this.rating,
    // this.isLiked,
  );
}

List<DataModel> dataList = [
  DataModel("All Black Formals", "assets/img1.jpg", 2546, "3/5"),
  DataModel("Party Formals", "assets/img2.jpg", 3252, "2/5"),
  DataModel("Casual Wear", "assets/img3.jpg", 1682, "4/5"),
  DataModel("Formal Dress", "assets/img4.jpg", 1367, "3.5/5"),
  DataModel("Party Wear", "assets/img5.jpg", 4507, "4/5"),
  ];
