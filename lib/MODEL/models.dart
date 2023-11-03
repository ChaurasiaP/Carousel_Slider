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
  DataModel("All Black Formals", "assets/img1.jpg", 300.8),
  DataModel("Party Formals", "assets/img2.jpg", 245.2),
  DataModel("Casual Wear", "assets/img3.jpg", 168.2),
  DataModel("Formal Dress", "assets/img4.jpg", 136.7),
  DataModel("Party Wear", "assets/img5.jpg", 450),
  ];
