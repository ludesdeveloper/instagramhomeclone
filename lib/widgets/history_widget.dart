import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  List<CircleHistoryWidget> listCircleHistoryWidget = [];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 30; i++) {
      listCircleHistoryWidget.add(CircleHistoryWidget());
    }
    return Container(
      height: 80,
      // width: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listCircleHistoryWidget.length,
        itemBuilder: (context, index) {
          return listCircleHistoryWidget[index];
        },
      ),
    );
  }
}

class CircleHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          ClipOval(
              child: Image.asset(
            'assets/blog_leaves.png',
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          )),
          SizedBox(
            width: 10,
          ),
          ClipOval(
              child: Image.asset(
            'assets/sword.jpg',
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          )),
          SizedBox(
            width: 10,
          ),
          ClipOval(
              child: Image.asset(
            'assets/piano.jpg',
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          )),
          SizedBox(
            width: 10,
          ),
          ClipOval(
              child: Image.asset(
            'assets/nintendo_switch.jpg',
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          )),
          SizedBox(
            width: 10,
          ),
          ClipOval(
              child: Image.asset(
            'assets/flutter.jpg',
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          )),
        ],
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
