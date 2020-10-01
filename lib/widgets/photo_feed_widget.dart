import 'package:flutter/material.dart';

class PhotoFeedWidget extends StatelessWidget {
  String avatar = '';
  String username = '';
  String position = '';
  String picture = '';
  String pictureDescription = '';

  PhotoFeedWidget(this.avatar, this.username, this.position, this.picture,
      this.pictureDescription);

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
                avatar, //use constructor
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username, //use constructor
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(position), //use constructor
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
          picture, //use constructor
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
              username, //use constructor
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(pictureDescription), //use constructor
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
