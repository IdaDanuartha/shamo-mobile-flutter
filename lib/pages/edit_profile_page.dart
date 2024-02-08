import 'package:flutter/material.dart';
import 'package:mobile_flutter/models/user_model.dart';
import 'package:mobile_flutter/providers/auth_provider.dart';
import 'package:mobile_flutter/themes.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController(text: '');  
  TextEditingController usernameController = TextEditingController(text: '');  
  TextEditingController emailController = TextEditingController(text: '');  

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

  Widget nameInput(String name) {
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
            controller: nameController,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Enter your name',
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

  Widget usernameInput(String username) {
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
            controller: usernameController,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Enter your username',
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

  Widget emailInput(String email) {
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
            controller: emailController,
            style: primaryTextStyle,
            decoration: InputDecoration(
              hintText: 'Enter your email',
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
  
  Widget content(UserModel user) {
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
                fit: BoxFit.fill,
                image: NetworkImage(
                  user.profilePhotoUrl
                )
              )
            ),
          ),
          nameInput(user.name),
          usernameInput(user.username),
          emailInput(user.email),          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    nameController.text = user.name;
    usernameController.text = user.username;
    emailController.text = user.email;

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(user),
      resizeToAvoidBottomInset: false,
    );
  }
}