import 'package:flutter/material.dart';

class PhotoFeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/blog_leaves.png',
          height: 300,
        ),
        Text('my leaves'),
        Image.asset(
          'assets/flutter.jpg',
          height: 300,
        ),
        Text('flutter is beast'),
        Image.asset(
          'assets/nintendo_switch.jpg',
          height: 300,
        ),
        Text('where will come new game'),
        Image.asset(
          'assets/piano.jpg',
          height: 300,
        ),
        Text('time to play some music'),
        Image.asset(
          'assets/sword.jpg',
          height: 300,
        ),
        Text('nice sword'),
      ],
    );
  }
}
