// import 'dart:convert';

// class ProductsListModel {
//   ProductsListModel({
//     required this.productsList
//   });

//     List<ProductList> productsList = [];

//     ProductsListModel productsListFromJson(String str) => ProductsListModel.fromJson(json.decode(str));
//     String productsListToJson(List<ProductsListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson()).toList()));

    
//     // ProductsListModel.fromJson(Map<String, dynamic> json){
//     //   productsList = List.from(json).map((e) => productsList.fromJson(e)).toList();
//     // }
    
//     //   Map<ProductList, dynamic> toJson() {
        
//     //   }
    
// }

// class ProductList{
//   ProductList({
//         required this.id,
//         required this.title,
//         required this.price,
//         required this.description,
//         required this.category,
//         required this.image,
//         required this.rating,
//     });

//   final int id;
//     final String title;
//     final double price;
//     final String description;
//     final String category;
//     final String image;
//     final Rating rating;
// }
// class Rating {
//     final double rate;
//     final int count;

//     Rating({
//         required this.rate,
//         required this.count,
//     });
// }



// ///
// ///   https://fakestoreapi.com/products
