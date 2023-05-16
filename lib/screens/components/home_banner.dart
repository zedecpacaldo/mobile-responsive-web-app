import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
            Container(color: darkColor.withOpacity(0.66)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Leni Robredo's alleged allegiance\nwith the CPP-NDA-NDF",
                    style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ) : Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  if (Responsive.isMobileLarge(context))
                    const SizedBox(height: defaultPadding / 2),
                  Responsive.isMobile(context) ? const Expanded(child: MyAnimatedText()) : const MyAnimatedText(),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            )
          ],
        )
    );
  }
}