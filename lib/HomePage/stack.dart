import 'package:flutter/material.dart';

class Scooter extends StatefulWidget {
  const Scooter({Key? key}) : super(key: key);

  @override
  _ScooterState createState() => _ScooterState();
}

class _ScooterState extends State<Scooter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 65,
          child: Container(
            height: 150,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Positioned(
          top: 20,
          left: 45,
          child: Container(
            height: 150,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Positioned(
          top: 30,
          left: 25,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.close,
                      color: Colors.white54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "We updated your scooter!",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Reach up to 45Km of range",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "with the new soft.",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            height: 180,
            width: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF3E64FF),
                      Color(0xFF4354DD),
                    ]),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Image(
          image: AssetImage("assets/images/5.png"),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
