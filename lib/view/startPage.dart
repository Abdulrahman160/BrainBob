import 'package:brain_bob/constant.dart';
import 'package:flutter/material.dart';

class StartPageView extends StatelessWidget {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/image/logo-removebg-preview (1).png",
              height: 150,
              width: 250,
            ),
          ),
          SizedBox(height: 40,),
          Image.asset("assets/image/study.png"),
Spacer(),
          Text(
            "Be ready to learn",
            style: TextStyle(
              color: KdarkColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "English easily",
            style: TextStyle(
              color: KdarkColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Listen to stories,watch videos and improve ",
            style: TextStyle(
              color: KgraykColor,
              fontSize: 15,
            ),
          ),
          Text(
            "your language with BrainBob ",
            style: TextStyle(
              color: KgraykColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: KpurpleColor,
            ),
            child: Text(
              "Start Now",
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
