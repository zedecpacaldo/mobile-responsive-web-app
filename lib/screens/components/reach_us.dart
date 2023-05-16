import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/responsive.dart';
import 'package:portfolioflutter/screens/components/reach_us_card.dart';

import '../../constants.dart';
import '../../contents.dart';
import '../../models/WebComponents.dart';

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
          const Responsive(
            mobile: ReachUsGridView(crossAxisCount: 1, childAspectRatio: 3),
            mobileLarge: ReachUsGridView(crossAxisCount: 2, childAspectRatio: 1.78),
            tablet: ReachUsGridView(childAspectRatio: 1.68),
            desktop: ReachUsGridView()
          )
        ],
      ),
    );
  }
}

class ReachUsGridView extends StatelessWidget {
  const ReachUsGridView({
    super.key, this.crossAxisCount = 3, this.childAspectRatio = 1.95,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: webComponents.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding/3
      ),
      itemBuilder: (context, index) => ReachUsCard(webComponent: webComponents[index]),
    );
  }
}