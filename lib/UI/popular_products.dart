import 'package:carousel_builder/MODEL/models.dart';
import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:carousel_builder/provider/products_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularProductsWidget extends StatefulWidget {
  const PopularProductsWidget({super.key});

  @override
  State<PopularProductsWidget> createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  
  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductDetailsProvider>(context, listen: true);
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
            itemCount: dataList.length,
            padding: const EdgeInsets.only(top: 20, right: 20),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 20),
                child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(dataList[index].imageName),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 240, 0, 0),
                      width: MediaQuery.of(context).size.width*0.3,
                      // padding: EdgeInsets.only(bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            //margin: const EdgeInsets.only(bottom: 55, right: 120, ),
                            padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: MyTheme.lightGrey
                            ),
                            child: Text(dataList[index].title,
                            textAlign: TextAlign.center, 
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: MyTheme.appBlack
                                  )
                                  ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                        //margin: const EdgeInsets.only(bottom: 15, right: 120, ),
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
                        ],
                      ),
                    ),
                    
                    InkWell(
                      onTap: (){
                        productProvider.checkIfItemIsLiked(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(180, 0, 20, 28),
                        child: ImageIcon(AssetImage("assets/Heart.png"),
                          size: 25,
                         color: productProvider.likedItemsList.contains(index) ? MyTheme.candyRed
                         : MyTheme.appWhite,)),
                    )
                ],
                      ),
              );
            }
        ),),
      ],
    );
  }
}