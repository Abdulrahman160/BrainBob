import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class RecommendContainerView extends StatelessWidget {
  const RecommendContainerView({
    Key? key,
    required this.containerColor,
    required this.icon,
    required this.minute,
    required this.bookMarkColor,
    required this.text,
  }) : super(key: key);
  final Color containerColor;
  final String icon;
  final int minute;
  final String text;
  final Color bookMarkColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 70,
          decoration: BoxDecoration(
            color: KgraykColor.withOpacity(.13),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: containerColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/$icon",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Chatting",
                        style: TextStyle(
                            fontSize: 15,
                            color: KdarkColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$minute minutes",
                        style: TextStyle(
                          fontSize: 15,
                          color: KgraykColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Image.asset(
                    "assets/image/bookmark.png",
                    height: 20,
                    width: 20,
                    color: bookMarkColor,
                  )
                ],
              )),

        ),
        SizedBox(height: 15,)
      ],
    );
  }
}
