// import 'package:carousel_builder/STYLE/MyTheme.dart';
// import 'package:flutter/material.dart';

// class SlidingList extends StatefulWidget {
//   const SlidingList({super.key});

//   @override
//   State<SlidingList> createState() => _SlidingListState();
// }

// class _SlidingListState extends State<SlidingList> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: MyTheme.appWhite),
//               borderRadius: BorderRadius.circular(10)
//             ),
//             child: Text(index == 1 ? "Party Wear"
//                         : index == 2 ? "Ethnic Wear"
//                         : index == 3 ? "Casual Wear"
//                         : index == 4 ? "Formal Wear"
//                         : index == 5 ? "Street Wear"
//                         : "")
//           );
//         }),
//     );
//   }
// }