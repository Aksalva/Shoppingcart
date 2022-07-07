// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HmpgDrawer extends StatelessWidget {
  const HmpgDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgurl =
        'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png';
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:
                    BoxDecoration(color: Theme.of(context).selectedRowColor),
                accountName: Text('EXAMPLE',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                accountEmail: Text('example@abc.com',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                  color: Theme.of(context).primaryColor),
              title: Text(
                "List Element 1",
                textScaleFactor: 1.4,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.phone,
                  color: Theme.of(context).primaryColor),
              title: Text(
                "List Element 2",
                textScaleFactor: 1.4,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info,
                  color: Theme.of(context).primaryColor),
              title: Text(
                "List Element 3",
                textScaleFactor: 1.4,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('ShopKart v0.0.1-alpha')),
            ),
          ],
        ),
      ),
    );
  }
}
