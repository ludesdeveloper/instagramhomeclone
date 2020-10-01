import 'package:flutter/material.dart';

class PhotoFeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            ClipOval(
              child: Image.asset(
                'assets/blog_leaves.png',
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text('Pecinta Daon'),
                Text('Taman Wilujeng Sumping'),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    label: Text(''))
              ],
            ),
          ],
        ),
        Image.asset(
          'assets/blog_leaves.png',
          height: 250,
        ),
        Row(
          children: [
            FlatButton.icon(
                minWidth: 10,
                onPressed: () {},
                icon: Icon(Icons.favorite),
                label: Text('')),
            FlatButton.icon(
                minWidth: 10,
                onPressed: () {},
                icon: Icon(Icons.message),
                label: Text('')),
            FlatButton.icon(
                minWidth: 10,
                onPressed: () {},
                icon: Icon(Icons.inbox),
                label: Text('')),
            Spacer(),
            FlatButton.icon(
                minWidth: 10,
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text('')),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Pecinta Daon',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text('Seneng Banget bisa liat daon lagi'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
