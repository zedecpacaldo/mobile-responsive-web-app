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
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  MembersInfoText(),
                  SizedBox(height: defaultPadding),
                  Progress(),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}