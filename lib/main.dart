import 'package:flutter/material.dart';
import 'package:portfolioflutter/responsive/desktop_scaffold.dart';
import 'package:portfolioflutter/responsive/mobile_scaffold.dart';
import 'package:portfolioflutter/responsive/responsive_layout.dart';
import 'package:portfolioflutter/responsive/tablet_scaffold.dart';

import 'views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Science Project',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Roboto')),
      // home: ResponsiveLayout(
      //   mobileScaffold: const MobileScaffold(),
      //   tabletScaffold: const TabletScaffold(),
      //   desktopScaffold: const DesktopScaffold(),
      // ),
      home: HomeView(),
    );
  }
}
