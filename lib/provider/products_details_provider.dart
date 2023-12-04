// import 'dart:convert';

// import 'package:carousel_builder/MODEL/products_list.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProductsListProvider extends ChangeNotifier{
//   final String productsListApi = 'https://fakestoreapi.com/products';

//   List<ProductsListModel> getProducts = [];

//   Future<List<ProductsListModel>> fetchAllProducts() async {
//     final response = await http.get(Uri.parse(productsListApi));

import 'dart:convert';

import 'package:carousel_builder/MODEL/products_details_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetailsProvider extends ChangeNotifier {
  List<int> likedItemsList = [];

  bool isItemLiked = false;

  checkIfItemIsLiked(int index) {
    isItemLiked = !isItemLiked;
    likedItemsList.add(index);

    if (isItemLiked == false && likedItemsList.contains(index)) {
      likedItemsList.remove(index);
    }
    notifyListeners();
  }

  bool itemCategoryTabTapped = false;

  changeItemCategoryTabStatus() {
    itemCategoryTabTapped = !itemCategoryTabTapped;
    notifyListeners();
  }

  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;
  String errorMsg = '';

  Future<void> fetchProducts() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        _products =
            jsonData.map((json) => ProductModel.fromJson(json)).toList();
        notifyListeners();
      } else {
        debugPrint("$response.statusCode");
        errorMsg = 'status code: ${response.statusCode}';
      }
    } catch (e) {
      debugPrint("$e: error");
      errorMsg = '$e : could not process due to exception';
    }
  }

  void toggleLike(int index) {
    _products[index].isLiked = !_products[index].isLiked;
    notifyListeners();
  }

  final PageController pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
