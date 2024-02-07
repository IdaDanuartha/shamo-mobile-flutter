import 'package:flutter/material.dart';
import 'package:mobile_flutter/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset('assets/icon_cart.png', width: 20,),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_home.png', width: 21),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_chat.png', width: 20),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_wishlist.png', width: 20),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_profile.png', width: 18),
                label: '',
              ),
            ]
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text("Hai"),
      ),
    );
  }
}