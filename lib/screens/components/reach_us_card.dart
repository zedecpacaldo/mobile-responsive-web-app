import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/WebComponents.dart';
import '../../responsive.dart';

class ReachUsCard extends StatelessWidget {
  final WebComponents webComponent;
  const ReachUsCard({
    super.key, required this.webComponent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              webComponent.section,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          if (!Responsive.isMobileLarge(context) || !Responsive.isMobile(context))
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Text(
              webComponent.text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}