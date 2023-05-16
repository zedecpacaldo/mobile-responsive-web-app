import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/constants.dart';

import '../../contents.dart';

class Progress extends StatefulWidget {
  const Progress({
    super.key,
  });

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  bool show = false;

  void toggleShow(){
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sum = 0;

    progress.forEach((element) {
      sum += element.value;
    });

    double average = sum/progress.length;

    return Container(
      color: bgColor,
      child: Column(
        children: [
          Divider(),
          show?
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text("Our Progress",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  SizedBox(width: defaultPadding/2),
                  GestureDetector(
                      onTap: (){
                        toggleShow();
                      },
                      child: Icon(Icons.arrow_drop_up_outlined, color: Colors.white30)
                  )
                ],
              ),
              Column(
                children: [
                  ResearchProgress(index: 0),
                  SizedBox(height: defaultPadding),
                  ResearchProgress(index: 1),
                  SizedBox(height: defaultPadding),
                  ResearchProgress(index: 2),
                  SizedBox(height: defaultPadding),
                  ResearchProgress(index: 3),
                  SizedBox(height: defaultPadding),
                  ResearchProgress(index: 4),
                  SizedBox(height: defaultPadding),
                ],
              )
            ],
          ):
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: average), duration: defaultDuration*1,
              builder: (context, double value, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                            child: Text("Our Progress",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                          SizedBox(width: defaultPadding/2),
                          GestureDetector(
                            onTap: (){
                              toggleShow();
                            },
                            child: Icon(Icons.arrow_drop_down_outlined, color: Colors.white30)
                          )
                        ],
                      ),
                      Text(
                          "${(value*100).toStringAsFixed(0)}%",
                          style: TextStyle(color: Colors.white)
                      ),
                    ],
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  SizedBox(height: defaultPadding),
                ],
              )
          ),
          Divider(),
        ],
      ),
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
      tween: Tween<double>(begin: 0, end: progress[index].value), duration: defaultDuration * 3,
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
          const SizedBox(height: defaultPadding),
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