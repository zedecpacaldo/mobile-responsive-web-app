import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/screens/components/progress.dart';

import '../../constants.dart';
import 'members_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const Progress(),
                    const SizedBox(height: defaultPadding),
                    MembersInfoText(),
                    const SizedBox(height: defaultPadding),
                    const Divider()
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}