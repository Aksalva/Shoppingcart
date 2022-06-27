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
        color: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color(0xFF191CD2)),
                accountName: Text('EXAMPLE'),
                accountEmail: Text('example@abc.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "List Element 1",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.black,
              ),
              title: Text(
                "List Element 2",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.black,
              ),
              title: Text(
                "List Element 3",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
