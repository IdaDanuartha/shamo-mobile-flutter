import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  AppBar header() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: bgColor1,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Edit Profile'
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.check,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Alex keinnzal',
              hintStyle: secondaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: '@alexkeinn',
              hintStyle: secondaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'alex.keinn@gmail.com',
              hintStyle: secondaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

  Widget phoneInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Phone Number',
            style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: '081234567890',
              hintStyle: secondaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor
                )
              )
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_profile.png'
                )
              )
            ),
          ),
          nameInput(),
          usernameInput(),
          emailInput(),
          phoneInput(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}