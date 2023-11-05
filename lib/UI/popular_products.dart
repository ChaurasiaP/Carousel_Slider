import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:flutter/material.dart';

class PopularProductsWidget extends StatefulWidget {
  const PopularProductsWidget({super.key});

  @override
  State<PopularProductsWidget> createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular Products", style: TextStyle(
                    fontSize: 20
                  ),),
            Text("See All", style: TextStyle(
              fontSize: 12, 
              color: MyTheme.textBlue2, 
              fontWeight: FontWeight.w500),)
          ],
        ),
        Container(
          height: 350,
          decoration: BoxDecoration(
            border: Border.all(color: MyTheme.appWhite)
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            padding: const EdgeInsets.only(top: 20, right: 20),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 20),
                child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset("assets/img6.jpg"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 55, right: 120, ),
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: MyTheme.lightGrey
                      ),
                      child: const Text("Street Wear", 
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyTheme.appBlack
                            )
                            ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, right: 120, ),
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: MyTheme.lightGrey
                      ),
                      child: const Text("Rating: 4/5", 
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: MyTheme.appBlack
                            )
                            ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(180, 0, 20, 28),
                      child: const ImageIcon(AssetImage("assets/Heart.png"),
                        size: 25,
                       color: MyTheme.candyRed,))
                ],
                      ),
              );
            }
        ),),
      ],
    );
  }
}