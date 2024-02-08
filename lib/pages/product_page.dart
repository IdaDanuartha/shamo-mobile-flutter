import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  int _currentIndex = 0;

  Widget indicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: _currentIndex == index ? 16 : 4,
      height: 4,
      margin: EdgeInsets.symmetric(
        horizontal: 2
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _currentIndex == index ? primaryColor : Color(0xffC4C4C4)
      ),
    );
  }

  Widget header() {
    int index = -1;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: 20, left: defaultMargin, right: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.chevron_left),
              ),
              Icon(
                Icons.shopping_bag,
                color: bgColor1,
              )
            ],
          ),
        ),
        CarouselSlider(
          items: images
              .map((image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ))
              .toList(),
          options: CarouselOptions(
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((e) {
            index++;
            return indicator(index);
          }).toList()
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor6,
        body: Column(
          children: [header()],
        ));
  }
}
