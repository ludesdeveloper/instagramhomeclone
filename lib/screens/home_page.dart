import 'package:flutter/material.dart';
//import widgets
import 'package:instagramclone/widgets/history_widget.dart';
import 'package:instagramclone/widgets/photo_feed_widget.dart';

class HomePage extends StatelessWidget {
  List<Widget> listHomeFeed = [];
  @override
  Widget build(BuildContext context) {
    listHomeFeed.add(HistoryWidget());
    listHomeFeed.add(Column(
      children: [
        Divider(
          color: Colors.black,
          thickness: 0.2,
        ),
      ],
    ));
    for (var i = 0; i < 20; i++) {
      listHomeFeed.add(PhotoFeedWidget());
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt),
                        label: Text('')),
                    Text('Kilogram'),
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.inbox),
                        label: Text('')),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: listHomeFeed.length,
                        itemBuilder: (_, index) {
                          return listHomeFeed[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, -1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: FlatButton.icon(
                          onPressed: () {},
                          icon: Flexible(child: Icon(Icons.home)),
                          label: Text('')),
                    ),
                    Flexible(
                      child: FlatButton.icon(
                          onPressed: () {},
                          icon: Flexible(child: Icon(Icons.search)),
                          label: Text('')),
                    ),
                    Flexible(
                      child: FlatButton.icon(
                          onPressed: () {},
                          icon: Flexible(child: Icon(Icons.add)),
                          label: Text('')),
                    ),
                    Flexible(
                      child: FlatButton.icon(
                          onPressed: () {},
                          icon: Flexible(child: Icon(Icons.thumb_up)),
                          label: Text('')),
                    ),
                    Flexible(
                      child: FlatButton.icon(
                          onPressed: () {},
                          icon: Flexible(child: Icon(Icons.people)),
                          label: Text('')),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
