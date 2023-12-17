import 'package:flutter/material.dart';
import 'package:nstweb/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

//====================MOBILE NAVBAR====================//

  Widget MobileNavBar() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.menu), navLogo()],
        ));
  }

//====================DESKTOP NAVBAR====================//

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Services'),
              navButton('About'),
              navButton('Get in Touch'),
              navButton('Blog'),
            ],
          ),
          Container(
              height: 45,
              child: ElevatedButton(
                //style: borderedButtonStyle,
                onPressed: () {},
                child: Text('Request a Callback',
                    style: TextStyle(color: AppColors.primaryColor, )),
              )),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        //style: borderedButtonStyle,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
        width: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo.png'),
          ),
        ));
  }
}
