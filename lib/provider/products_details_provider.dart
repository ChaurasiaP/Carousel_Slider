// import 'dart:convert';

// import 'package:carousel_builder/MODEL/products_list.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProductsListProvider extends ChangeNotifier{
//   final String productsListApi = 'https://fakestoreapi.com/products';

//   List<ProductsListModel> getProducts = [];

//   Future<List<ProductsListModel>> fetchAllProducts() async {
//     final response = await http.get(Uri.parse(productsListApi));

import 'package:flutter/material.dart';

class ProductDetailsProvider extends ChangeNotifier{

  List<int> likedItemsList = [];

  bool isItemLiked = false;

  checkIfItemIsLiked(int index){
    isItemLiked = !isItemLiked;
    likedItemsList.add(index);

    if(isItemLiked == false && likedItemsList.contains(index)){
      likedItemsList.remove(index);
    }
    notifyListeners();
  }

  bool itemCategoryTabTapped = false;

  changeItemCategoryTabStatus(){
    itemCategoryTabTapped = !itemCategoryTabTapped;
      notifyListeners();
  }
}