import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolioflutter/responsive.dart';
import 'package:portfolioflutter/screens/components/reach_us_card.dart';
import 'dart:html' as html;
import '../../constants.dart';
import '../../contents.dart';

class ReachUs extends StatelessWidget {
  const ReachUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reach Us",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          Responsive(
            mobile: ReachUsGridView(crossAxisCount: 1, childAspectRatio: 2.9),
            mobileLarge: ReachUsGridView(crossAxisCount: 2, childAspectRatio: 1.78),
            tablet: ReachUsGridView(childAspectRatio: 1.68),
            desktop: ReachUsGridView()
          )
        ],
      ),
    );
  }
}

class ReachUsGridView extends StatefulWidget {
   ReachUsGridView({
    super.key, this.crossAxisCount = 3, this.childAspectRatio = 1.95,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  State<ReachUsGridView> createState() => _ReachUsGridViewState();
}

class _ReachUsGridViewState extends State<ReachUsGridView> {
  int isHovered = -1;

  void _changeHovered(int chosen) {
    setState(() {
      isHovered = chosen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: webComponents.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.crossAxisCount,
          childAspectRatio: widget.childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding/3
      ),
      itemBuilder: (context, index) => MouseRegion(
        onEnter: (event) {
          if(index != 1){
            setState(() {
              _changeHovered(index);
            });
          }
        },
        onExit: (event) {
          if(index != 1){
            setState(() {
              _changeHovered(-1);
            });
          }
        },
        child: GestureDetector(
          onTap: (){
            if(index == 0){
              html.window.open(githubLink, "GitHub Repository");
            } else if (index == 2){
              html.window.open(contactUsLink, "Contact Us!");
            }
          },
          child: ReachUsCard(webComponent: webComponents[index], isSelected: isHovered==index?true:false)
        ),
      ),
    );
  }
}