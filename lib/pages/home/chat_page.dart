import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';
import 'package:mobile_flutter/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget header() {
    return Container(
      child: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          "Message Support",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        width: double.infinity,        
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon_headset.png", width: 80),
            SizedBox(height: 20),
            Text("Oops no message yet?", style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            SizedBox(height: 12),
            Text(
              'You have never done a transaction',
              style: secondaryTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 44,
              child: TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10
                  ),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,        
        color: bgColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          children: [
            ChatTile(),
            ChatTile(),
          ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}