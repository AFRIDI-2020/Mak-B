import 'package:flutter/material.dart';
import 'package:mak_b/models/Product.dart';

import 'package:mak_b/variables/constants.dart';
import 'package:mak_b/variables/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(context, 10)),
      child: SizedBox(
        width: getProportionateScreenWidth(context, 140),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //   context,
          //   DetailsScreen.routeName,
          //   arguments: ProductDetailsArguments(product: product),
          //),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF19B52B).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.02,
                          child: Container(
                            padding: EdgeInsets.all(
                                getProportionateScreenWidth(context, 20)),
                            decoration: BoxDecoration(
                              color: kSecondaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Hero(
                              tag: product.id.toString(),
                              child: Image.asset(product.images[0]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0, right: 2.0),
                          child: Icon(
                            Icons.add_circle_outline,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, left: 3),
                      child: Text(
                        product.title,
                        style: TextStyle(color: Colors.black),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, left: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontSize:
                                  getProportionateScreenWidth(context, 15),
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize:
                                  getProportionateScreenWidth(context, 12),
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
