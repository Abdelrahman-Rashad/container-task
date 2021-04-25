import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    model(Colors.amber, 'Amber'),
                    model(Colors.blueAccent, 'BlueAccent'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    model(Colors.teal, 'Teal'),
                    model(Colors.greenAccent, 'GreenAccent'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    model(Colors.black, 'Black'),
                    model(Colors.indigo, 'Indigo'),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget model(Color valcolor, String valtext) {
  return Column(
    children: [
      Container(
        height: 125,
        width: 125,
        decoration: BoxDecoration(
          color: valcolor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        valtext,
        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
      )
    ],
  );
}
