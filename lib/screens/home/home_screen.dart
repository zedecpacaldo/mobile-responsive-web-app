import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../constants.dart';
import '../../contents.dart';
import '../components/animated_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
              "images/bg.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              Container(color: darkColor.withOpacity(0.66)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Leni Robredo's alleged allegiance\nwith the CPP-NDA-NDF",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    MyAnimatedText(),
                  ],
                ),
              )
            ],
          )
        )
      ]
    );
  }
}

