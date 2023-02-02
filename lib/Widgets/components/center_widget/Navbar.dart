// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_new, avoid_returning_null_for_void, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 0),
        width: 240,
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Tushar Banik',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                accountEmail: Text(
                  'evilden982@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('Images/profile.jpg'),
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('Images/bg-app.png'),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    )),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Favourites'),
                onTap: () => null,
              ),
              // SizedBox(
              //   height: 3,
              // ),
              ListTile(
                leading: Icon(Icons.people),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Friends'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.share),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Share'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Request'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Settings'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.description),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Policy'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                // iconColor: Colors.black,
                textColor: Colors.black,
                title: Text('Exit'),
                onTap: () => null,
              ),
            ],
          ),
        ));
  }
}
