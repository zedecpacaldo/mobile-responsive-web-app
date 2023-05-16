import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/constants.dart';

import '../../contents.dart';

class Progress extends StatelessWidget {
  const Progress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Our Progress",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        ResearchProgress(index: 0),
        SizedBox(height: defaultPadding),
        ResearchProgress(index: 1),
        SizedBox(height: defaultPadding),
        ResearchProgress(index: 2),
        SizedBox(height: defaultPadding),
        ResearchProgress(index: 3),
        SizedBox(height: defaultPadding),
        ResearchProgress(index: 4),
      ],
    );
  }
}

class ResearchProgress extends StatelessWidget {
  final int index;

  ResearchProgress({
    super.key,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: progress[index].value), duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                progress[index].name,
                style: TextStyle(color: Colors.white)
              ),
              Text(
                  "${(value*100).toStringAsFixed(0)}%",
                  style: TextStyle(color: Colors.white)
              ),
            ],
          ),
          SizedBox(height: defaultPadding),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),
    );
  }
}