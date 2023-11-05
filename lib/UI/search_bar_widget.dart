import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:carousel_builder/STYLE/constants.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyTheme.lightBlue,
        borderRadius: BorderRadius.circular(50)
      ),
      child: TextField(
        style: const TextStyle(
          color: MyTheme.appBlack,
        ),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          hintText: "Search",
          icon: ImageIcon(AssetImage(Constants.iconSearchBtn),)
        ),
      )
    );
  }
}