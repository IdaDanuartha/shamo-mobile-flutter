import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Widget header() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.chevron_left
                ),                              
              ),
              Icon(
                Icons.shopping_bag,
                color: bgColor1,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor6,
      body: Column(
        children: [
          header()
        ],
      )
    );
  }
}