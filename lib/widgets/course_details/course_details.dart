import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'PH Twitter\nMis/Disinformation\nAnalysis',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 60),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to our data science project website! We are a team of computer science students who are passionate about using data science to extract insights.',
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
          )
        ],
      ),
    );
  }
}
