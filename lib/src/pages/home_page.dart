import 'package:chat_ui/src/widgets/category_selector.dart';
import 'package:chat_ui/src/widgets/favorite_contacts.dart';
import 'package:chat_ui/src/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
          title: Text('Chats',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Theme.of(context).accentColor),
                  child: Column(
                    children: <Widget>[FavoriteContacts(), RecentChats()],
                  )),
            )
          ],
        ));
  }
}
