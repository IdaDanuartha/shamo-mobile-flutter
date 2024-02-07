import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSize appBar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: bgColor1,
          centerTitle: true,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/image_shop_logo_online.png", width: 50,),
              SizedBox(width: 12),
              Column(
                children: [
                  Text('Shoe Store', style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: appBar()
    );
  }
}