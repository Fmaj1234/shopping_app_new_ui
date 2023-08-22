import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    // use i variable to change pictures in loop
                    "images/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    "Sandal",
                    style: TextStyle(
                      color: Color(0xff4c53a5),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            )
                .animate()
                .fadeIn(
                  delay: Duration(milliseconds: 200 * i),
                )
                .slideX(),
        ],
      ),
    );
  }
}
