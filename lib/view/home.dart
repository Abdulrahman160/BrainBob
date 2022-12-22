import 'package:flutter/material.dart';

import '../constant.dart';
import '../widght/chooseType.dart';
import '../widght/recommendContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/image/logo-removebg-preview (1).png",
              height: 150,
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Choose what",
              style: TextStyle(
                color: KdarkColor,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "to learn today?",
              style: TextStyle(
                color: KdarkColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChooseType(
                    width: 125,
                    text: " Brainstorm",
                    backColor: KdarkColor,
                    textColor: Colors.white.withOpacity(.8),
                  ),
                  ChooseType(
                    width: 100,
                    text: " Books",
                    backColor: KgraykColor.withOpacity(.13),
                    textColor: KdarkColor,
                  ),
                  ChooseType(
                    width: 100,
                    text: " Video",
                    backColor: KgraykColor.withOpacity(.13),
                    textColor: KdarkColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 170,
                  width: 300,
                  decoration: BoxDecoration(
                    color: KpurpleColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vocabulary",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Listen 20 new words",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 43,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Start",
                                style: TextStyle(
                                  color: KdarkColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                "assets/image/play-button.png",
                                height: 12,
                                width: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/image/music.png",
                  height: 200,
                  width: 200,
                ),
                right: -30,
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Recommended",
              style: TextStyle(
                color: KdarkColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 280,
              width: 300,
              child: ListView(
                children: [
                  RecommendContainerView(
                    text: "Chatting",
                    containerColor: Color(0XFFD53A2B),
                    icon: "bubble.png",
                    bookMarkColor: Colors.black,
                    minute: 5,
                  ),
                  RecommendContainerView(
                    text: "Listen",
                    containerColor: Color(0XFF4C4297),
                    icon: "headphones.png",
                    bookMarkColor: KgraykColor,
                    minute: 2,
                  ),
                  RecommendContainerView(
                    text: "Speak",
                    containerColor: Color(0XFFf57c00),
                    icon: "microphone.png",
                    bookMarkColor: KgraykColor,
                    minute: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
