import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ChooseType extends StatelessWidget {
  const ChooseType({
    Key? key,
    required this.text,
    required this.width,
    required this.textColor,
    required this.backColor,
  }) : super(key: key);
  final String text;
  final double width;
  final Color textColor;
  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 48,
          width:width,
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(25)),
          child: Text(
            text,
            style: TextStyle(
              color:textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        SizedBox(width: 15,)
      ],
    );
  }
}
