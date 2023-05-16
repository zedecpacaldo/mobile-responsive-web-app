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
                "PH Twitter Mis/Disinformation Analysis",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "on Leni Robredo's allegiance\nwith CPP-NDA-NDF",
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