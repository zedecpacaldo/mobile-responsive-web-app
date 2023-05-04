import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.person_3),
      title: Text('A B O U T   U S'),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text('C O N T A C T   U S'),
    ),
  ]),
);
