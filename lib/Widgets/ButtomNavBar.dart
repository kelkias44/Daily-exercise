import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          ButtomNavItem(
            title: "Today",
            imgSrc: "",
          ),
          ButtomNavItem(
            title: "All exercises",
            imgSrc: "",
            isActive: true,
          ),
          ButtomNavItem(
            title: "Setting",
            imgSrc: "",
          ),
        ],
      ),
    );
  }
}

class ButtomNavItem extends StatelessWidget {
  final imgSrc;
  final title;
  final bool isActive;
  
  const ButtomNavItem({
    this.imgSrc, this.title, this.isActive = false 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            imgSrc,
            color: isActive ? kActiveColor : kTextColor,
            ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveColor : kTextColor)),
        ],
      ),
    );
  }
}
