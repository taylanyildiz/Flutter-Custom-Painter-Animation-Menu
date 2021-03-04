import 'package:flutter/material.dart';
import 'package:flutter_app_test_00012/widgets/animation_bottom_menu.dart';
import 'package:flutter_app_test_00012/widgets/back_ground_page.dart';

import '../custom_painter/custom_painter_menu_bottom.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

bool isMenuOpen = false;
String im;

class _HomeScreenState extends State<HomeScreen> {
  funk(img) {
    setState(() {
      check = true;
      im = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BackgroundPage(),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: check
                        ? Image.asset(
                            im,
                            fit: BoxFit.fill,
                          )
                        : null,
                  ),
                ),
              ],
            ),
            AnimationBottomMenu(
              onPressed: funk,
            ),
          ],
        ),
      ),
    );
  }
}
