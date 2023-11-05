class DataModel {
  final String title;
  final String imageName;
  final double price;
  DataModel(
    this.title,
    this.imageName,
    this.price,
  );
}

List<DataModel> dataList = [
  DataModel("All Black Formals", "assets/img1.jpg", 2546),
  DataModel("Party Formals", "assets/img2.jpg", 3252),
  DataModel("Casual Wear", "assets/img3.jpg", 1682),
  DataModel("Formal Dress", "assets/img4.jpg", 1367),
  DataModel("Party Wear", "assets/img5.jpg", 4507),
  ];
