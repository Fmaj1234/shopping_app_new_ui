import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          // badges.Badge(
          //   badgeColor: Colors.red,
          //   padding: EdgeInsets.all(7),
          //   badgeContent: Text(
          //     "3",
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.pushNamed(
          //         context,
          //         "cartPage",
          //       );
          //     },
          //     child: Icon(
          //       Icons.shopping_bag_outlined,
          //       size: 32,
          //       color: Color(0xFF4C53A5),
          //     ),
          //   ),
          // ),
          badges.Badge(
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            position: badges.BadgePosition.topEnd(),
            showBadge: true,
            ignorePointer: false,
            // badgeAnimation: badges.BadgeAnimation.slide(toAnimate: true, animation(secons: 1),),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(6),
              shape: badges.BadgeShape.circle,
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red, width: 2),
              // badgeGradient: badges.BadgeGradient.linear(
              //   colors: [Colors.red, Colors.black],
              // ),
              elevation: 4,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "cartPage",
                );
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          // badges.Badge(
          //   position: badges.BadgePosition.topEnd(top: -10, end: -12),
          //   showBadge: true,
          //   ignorePointer: false,
          //   onTap: () {},
          //   badgeContent: Icon(Icons.check, color: Colors.white, size: 10),
          //   badgeAnimation: badges.BadgeAnimation.rotation(
          //     animationDuration: Duration(seconds: 1),
          //     colorChangeAnimationDuration: Duration(seconds: 1),
          //     loopAnimation: false,
          //     curve: Curves.fastOutSlowIn,
          //     colorChangeAnimationCurve: Curves.easeInCubic,
          //   ),
          //   badgeStyle: badges.BadgeStyle(
          //     shape: badges.BadgeShape.square,
          //     badgeColor: Colors.blue,
          //     padding: EdgeInsets.all(5),
          //     borderRadius: BorderRadius.circular(4),
          //     borderSide: BorderSide(color: Colors.white, width: 2),
          //     borderGradient: badges.BadgeGradient.linear(
          //         colors: [Colors.red, Colors.black]),
          //     badgeGradient: badges.BadgeGradient.linear(
          //       colors: [Colors.blue, Colors.yellow],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ),
          //     elevation: 0,
          //   ),
          //   child: Text('Badge'),
          // ),
        ],
      ),
    ).animate().fade(duration: const Duration(milliseconds: 800));
  }
}
