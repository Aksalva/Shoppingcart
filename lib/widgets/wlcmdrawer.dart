import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WlcmDrawer extends StatelessWidget {
  const WlcmDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgurl =
        'https://www.pngitem.com/pimgs/m/78-786293_1240-x-1240-0-avatar-profile-icon-png.png';
    return Drawer(
      child: Container(
        color: Color(0xFFFFFFFF),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color(0xFF191CD2)),
                accountName: Text('Gorakh'),
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
                "Home",
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
                "Contact Us",
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
                "About",
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
