import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {required this.productName,
      required this.imageUrl,
      required this.rating,
      required this.price,
      super.key});

  final String productName;
  final String imageUrl;
  final num rating;
  final num price;
  @override
  // ignore: library_private_types_in_public_api
  _DetailsScreenState createState() {
    return _DetailsScreenState();
  }
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                widget.productName,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                              widget.imageUrl,
                            ),
                            fit: BoxFit.fill),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black26)
                        ]),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price \$${widget.price}",
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rating: ${widget.rating}",
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
