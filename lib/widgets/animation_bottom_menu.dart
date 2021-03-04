import 'package:flutter/material.dart';
import 'package:flutter_app_test_00012/modal/image_modal.dart';

import '../custom_painter/custom_painter_menu_bottom.dart';
import '../screens/home_screen.dart';

class AnimationBottomMenu extends StatefulWidget {
  ValueChanged onPressed;
  AnimationBottomMenu({this.onPressed});
  @override
  _AnimationBottomMenuState createState() => _AnimationBottomMenuState();
}

bool check = false;

class _AnimationBottomMenuState extends State<AnimationBottomMenu> {
  Offset _offset = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 1500),
      bottom: isMenuOpen ? 0 : -height / 5 + 20.0,
      curve: Curves.elasticOut,
      child: Container(
        width: width,
        child: Stack(
          children: [
            GestureDetector(
              onPanStart: (detail) {
                print("start");
                setState(() {
                  _offset = detail.localPosition;
                });
              },
              onPanUpdate: (detail) {
                setState(() {
                  _offset = detail.localPosition;
                });
                print("update ${_offset}");
                if (_offset.dy > -60) {
                  setState(() {
                    isMenuOpen = true;
                  });
                }
                if (_offset.dy > 100 && isMenuOpen == true) {
                  setState(() {
                    isMenuOpen = false;
                  });
                }
              },
              onPanEnd: (detail) {
                print("end");
                setState(() {
                  _offset = Offset(0, 0);
                });
              },
              child: CustomPaint(
                size: Size(width, height / 5),
                painter: BottomMenu(
                  offset: _offset,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              width: width,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  final img = imageList[index];
                  return Dismissible(
                    onDismissed: (direction) {
                      if (direction == DismissDirection.up) {
                        widget.onPressed(img.imgUrl);
                        print("hey");
                      } else {
                        print("aşağı");
                      }
                    },
                    key: ValueKey(String),
                    background: Container(
                      color: Colors.red,
                    ),
                    secondaryBackground: Container(color: Colors.blue),
                    direction: DismissDirection.vertical,
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(
                        img.imgUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
