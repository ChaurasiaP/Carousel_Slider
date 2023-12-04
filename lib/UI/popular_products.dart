import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:carousel_builder/STYLE/constants.dart';
import 'package:carousel_builder/UI/details.dart';
import 'package:carousel_builder/provider/products_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularProductsWidget extends StatefulWidget {
  const PopularProductsWidget({Key? key}) : super(key: key);

  @override
  State<PopularProductsWidget> createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint("inside build");
    var productProvider =
        Provider.of<ProductDetailsProvider>(context, listen: true);
    productProvider.fetchProducts();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Products",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "See All",
              style: TextStyle(
                fontSize: 12,
                color: MyTheme.textBlue2,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 420,
          // decoration:BoxDecoration(
          //         border: Border.all(color:MyTheme.appWhite)
          // ),
          child: AspectRatio(
            aspectRatio: 0.85,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productProvider.products.length,
              physics: const ClampingScrollPhysics(),
              controller: productProvider.pageController,
              // padding: const EdgeInsets.only(top: 20, right: 20),
              itemBuilder: (context, index) {
                return carouselView(productProvider, index);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget carouselView(ProductDetailsProvider provider, int index) {
    return AnimatedBuilder(
        animation: provider.pageController,
        builder: (context, child) {
          double value = 0.0;
          if (provider.pageController.position.haveDimensions) {
            value = index.toDouble() - (provider.pageController.page ?? 0);
            value = (value * 0.03).clamp(-1, 1);
          }
          return buildProductCards(provider, index);
        });
    // return buildProductCards(provider, index);
  }

  Widget buildProductCards(ProductDetailsProvider provider, int index) {
    return Column(
      children: [
        Hero(
          tag: provider.products[index].title ?? '',
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                        productName: provider.products[index].title ?? '',
                        imageUrl: provider.products[index].image ?? '',
                        rating: provider.products[index].rating!.rate!,
                        price: provider.products[index].price ?? 0)),
              );
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  // border: Border.all(color:MyTheme.appBlack,),
                  borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Image.network(
                  provider.products[index].image ??
                      Constants.iconImgUnavailable,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
          // height: 80,
          width: 200,
          decoration: const BoxDecoration(
              color: MyTheme.appWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )
              // border: Border.all(color:MyTheme.appBlack)
              ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        provider.products[index].title ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Text('${provider.products[index].price ?? 0}')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${provider.products[index].rating!.rate}"),
                      IconButton(
                        onPressed: () {
                          provider.toggleLike(index);
                        },
                        icon: Icon(Icons.thumb_up_outlined),
                        color: provider.products[index].isLiked
                            ? MyTheme.candyRed
                            : null,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
