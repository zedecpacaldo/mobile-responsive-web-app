import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: Color(0xFF242430),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2),
              Image.asset(
                'images/logo.png',
                width: 200,
                height: 100,
              ),
              Spacer(),
              Text(
                "CS 132: Data Science Portfolio",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "PH Twitter Mis/Disinformation Analysis",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        )
    );
  }
}