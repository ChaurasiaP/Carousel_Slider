// import 'package:carousel_builder/STYLE/MyTheme.dart';
// import 'package:flutter/material.dart';

// class CarouselBuilder extends StatefulWidget {
//   const CarouselBuilder({super.key});

//   @override
//   State<CarouselBuilder> createState() => _CarouselBuilderState();
// }

// class _CarouselBuilderState extends State<CarouselBuilder> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         title: Text("Carousel Builder"),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Container(
//               padding: EdgeInsets.all(20),
//               margin: EdgeInsets.all(20),
//               height: 350,
//               //width: MediaQuery.of(context).size.width*0.8,
//               decoration: BoxDecoration(
//                 color: MyTheme.lightGrey,
//                 border: Border.all(color: MyTheme.appWhite)
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(5),
//                         //width: MediaQuery.of(context).size.width*0.37,
//                         color: MyTheme.appWhite,
//                         child: Column(children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Nifty 50",
//                                     style: TextStyle(
//                                       fontSize: 18
//                                     ),),
//                               SizedBox(width: 60),
//                               Icon(Icons.chevron_right)
//                             ],
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                             Text("18,300.32"),
//                             SizedBox(width: 5),
//                             Icon(Icons.arrow_upward_rounded),
//                             Text("18.05%")
//                           ],)
//                         ]),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(5),
//                         //width: MediaQuery.of(context).size.width*0.37,
//                         color: MyTheme.appWhite,
//                         child: Column(children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Sensex", style: TextStyle(
//                                       fontSize: 18
//                                     ),),
//                               SizedBox(width: 60),
//                               Icon(Icons.chevron_right)
//                             ],
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                             Text("64,408.97"),
//                             SizedBox(width: 5),
//                             Icon(Icons.arrow_upward_rounded),
//                             Text("0.097%")
//                           ],)
//                         ]),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     color: MyTheme.lightYellow
//                   )
//                 ],
//               ),
//             ),
//           )
//         ),
//       ),
//     );
//   }
// }

import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:carousel_builder/UI/popular_products.dart';
import 'package:carousel_builder/UI/search_bar_widget.dart';
import 'package:carousel_builder/provider/products_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {


    return Consumer(
      builder: (context, value, child) { 
        return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyTheme.appWhite,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shop Your Style",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: "BegumSans"
                  ),
                ),
                 const SizedBox(height: 20),
                 const SearchBarWidget(),
                 const SizedBox(height: 20),
                 buildSlidableList(),
                 const PopularProductsWidget()
              ],
            ),
          ),
        ),
      );
       });
  }
  Widget buildSlidableList(){
    var productProvider = Provider.of<ProductDetailsProvider>(context, listen: true);
    return Container(
      height: 70,
      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
      padding: const EdgeInsets.all(15),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              productProvider.changeItemCategoryTabStatus();
              debugPrint("$productProvider.itemCategoryTabTapped");
            },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: const EdgeInsets.fromLTRB(8, 1.5, 8, 0),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: productProvider.itemCategoryTabTapped ? MyTheme.lightBlue : Colors.transparent,
//  /               border: Border.all(color: MyTheme.appWhite),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(index == 0 ? "Party Wear"
                          : index == 1 ? "Ethnic Wear"
                          : index == 2 ? "Casual Wear"
                          : index == 3 ? "Formal Wear"
                          : index == 4 ? "Street Wear"
                          : "",
                          style: TextStyle(
                                fontSize: 16,
                                color: productProvider.itemCategoryTabTapped ? MyTheme.textBlue1 : MyTheme.appBlack,
                                fontWeight: isTapped ? FontWeight.w500
                                            : FontWeight.normal
                          ),)
            ),
          );
        }),
    );
  }
}