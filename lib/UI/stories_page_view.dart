import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:flutter/material.dart';

class StoriesViewCircle extends StatefulWidget {
  const StoriesViewCircle({super.key});

  @override
  State<StoriesViewCircle> createState() => _StoriesViewCircleState();
}

class _StoriesViewCircleState extends State<StoriesViewCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stories"),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder:  (context, index)=> Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: MyTheme.candyRed, width: 2.5),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Container(
                margin: EdgeInsets.all(3.5),
                height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: MyTheme.purple,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Icon(Icons.handshake, size: 44 ),
              ),
            )
          ],
        )))
    );
  }
}