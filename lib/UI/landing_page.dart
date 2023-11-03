import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:flutter/material.dart';

class CarouselBuilder extends StatefulWidget {
  const CarouselBuilder({super.key});

  @override
  State<CarouselBuilder> createState() => _CarouselBuilderState();
}

class _CarouselBuilderState extends State<CarouselBuilder> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Carousel Builder"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              height: 350,
              //width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                color: MyTheme.lightGrey,
                border: Border.all(color: MyTheme.appWhite)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        //width: MediaQuery.of(context).size.width*0.37,
                        color: MyTheme.appWhite,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nifty 50",
                                    style: TextStyle(
                                      fontSize: 18
                                    ),),
                              SizedBox(width: 60),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("18,300.32"),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_upward_rounded),
                            Text("18.05%")
                          ],)
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        //width: MediaQuery.of(context).size.width*0.37,
                        color: MyTheme.appWhite,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sensex", style: TextStyle(
                                      fontSize: 18
                                    ),),
                              SizedBox(width: 60),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("64,408.97"),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_upward_rounded),
                            Text("0.097%")
                          ],)
                        ]),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: MyTheme.lightYellow
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}