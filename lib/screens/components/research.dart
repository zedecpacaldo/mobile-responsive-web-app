import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/screens/components/research_component_card.dart';
import '../../constants.dart';
import '../../contents.dart';
import '../../responsive.dart';

class Research extends StatelessWidget {
  const Research({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        Text("Learn More", style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: ResearchGridView(crossAxisCount: 1, childAspectRatio: 1.7),
          mobileLarge: ResearchGridView(crossAxisCount: 2,),
          tablet: ResearchGridView(childAspectRatio: 1.1,),
          desktop: ResearchGridView(),)
      ],
    );
  }
}

class ResearchGridView extends StatelessWidget {
  const ResearchGridView({
    super.key, this.crossAxisCount = 3, this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: researchComponents.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding
      ),
      itemBuilder: (context, index) => ResearchComponentCard(researchComponent: researchComponents[index],),
    );
  }
}