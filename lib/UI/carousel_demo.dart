// import 'package:carousel_builder/MODEL/carousel_model.dart';
// import 'package:carousel_builder/STYLE/MyTheme.dart';
// import 'package:flutter/material.dart';

// class CarouselDemo extends StatefulWidget {
//   const CarouselDemo({super.key});

//   @override
//   State<CarouselDemo> createState() => _CarouselDemoState();
// }

// class _CarouselDemoState extends State<CarouselDemo> {

  
//   List<CarouselModel> _getItemList = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _getItemList = itemsList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Container(
//                   child: Text("Select Your Style", 
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                     color: Colors.black
//                   ),),
//                 ),
//                 // PageView.builder(
//                 //   //scrollDirection: Axis.horizontal,
//                 //   itemCount: _getItemList.length,
//                 //   physics: ClampingScrollPhysics(),
//                 //   itemBuilder: (context, index) {
//                 //     return carouselView(index);
//                 // })

//                 ListView.builder(
//                   itemCount: _getItemList.length,
//                   itemBuilder: (context, index){
//                     return carouselView(index);
//                 })
//               ],
//             ),
//           ),
//         ),
//       )
//     );
//   }
//   Widget carouselView(int index){
//     return Container(
//       height: 50,
//       width: 50,
//       //width: MediaQuery.of(context).size.width*0.8,
//       decoration: BoxDecoration(
//         color: MyTheme.blueGrey,
//         border: Border.all(color: MyTheme.appBlack)
//       ),

//     );
//   }
// }