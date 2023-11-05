// import 'dart:convert';

// import 'package:carousel_builder/MODEL/products_list.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProductsListProvider extends ChangeNotifier{
//   final String productsListApi = 'https://fakestoreapi.com/products';

//   List<ProductsListModel> getProducts = [];

//   Future<List<ProductsListModel>> fetchAllProducts() async {
//     final response = await http.get(Uri.parse(productsListApi));

//     if(response.statusCode == 200){
//             List<dynamic> data = json.decode(response.body);
//       data.map((item) => ProductsListModel.fromJson(item)).toList();
//       getProducts.add(data as ProductsListModel);
//       return getProducts;
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }