import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../contents.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontStyle: FontStyle.italic,
          color: Colors.white60
      ),
      child: AnimatedTextKit(
        animatedTexts: tweets,
        repeatForever: true,
      ),
    );
  }
}