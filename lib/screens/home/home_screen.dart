import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/constants.dart';
import 'package:portfolioflutter/screens/main_screen.dart';
import '../components/home_banner.dart';
import '../components/reach_us.dart';
import '../components/research.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        Research(),
        ReachUs(),
      ]
    );
  }
}







