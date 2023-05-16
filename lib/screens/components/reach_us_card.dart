import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/WebComponents.dart';

class ReachUsCard extends StatelessWidget {
  bool isSelected;
  final WebComponents webComponent;
  ReachUsCard({
    super.key, required this.webComponent, required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: isSelected?Colors.white38:secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            webComponent.section,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(color: isSelected?secondaryColor:Colors.white),
          ),
          SizedBox(height: defaultPadding),
          Text(
            webComponent.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, color: isSelected?secondaryColor:Colors.white),
          ),
        ],
      ),
    );
  }
}