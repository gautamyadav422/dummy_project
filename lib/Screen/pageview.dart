import 'package:dummy_project/HomePage/Homepage.dart';
import 'package:dummy_project/Screen/slide.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFFFF9401),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 100,
                width: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0C38ED),
                    Color(0xFF3E64FF),
                  ]),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(280),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideItem(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
