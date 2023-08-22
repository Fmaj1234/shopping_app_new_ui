import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app_new_ui/widgets/item_app_bar.dart';
import 'package:shopping_app_new_ui/widgets/item_bottom_nav_bar.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ItemPage extends StatelessWidget {
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.png",
              height: 300,
            )
                .animate()
                .slideY(
                    begin: 10,
                    duration: const Duration(
                      milliseconds: 800,
                    ),
                    curve: Curves.easeOut)
                .fadeIn(
                  begin: 0.1,
                  delay: const Duration(milliseconds: 600),
                )
                .moveX(end: 0),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 48,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Product Title",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4c53a5),
                            ),
                          )
                        ],
                      )
                          .animate()
                          .fade(duration: const Duration(milliseconds: 800))
                          .slideX(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Color(0xff4c53a5),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(
                                        0,
                                        3,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Color(0xff4c53a5),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4c53a5),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(
                                        0,
                                        3,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: Color(0xff4c53a5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "This is more detailed description of the product that can be used to describe what the products looks in real life and show of some images to give a full description of the product in lifetime as well as important contents in ensuring to having satisfied products for ourcustomers.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                    )
                        .animate(
                          delay: const Duration(milliseconds: 800),
                        )
                        .fade(
                          duration: const Duration(milliseconds: 800),
                        ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(38),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff4c53a5),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 600))
                        .slideX(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Color:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(38),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800))
                        .slideX(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
