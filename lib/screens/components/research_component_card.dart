import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/ResearchComponents.dart';
import '../../responsive.dart';

class ResearchComponentCard extends StatelessWidget {
  final ResearchComponent researchComponent;

  const ResearchComponentCard({
    super.key,
    required this.researchComponent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              researchComponent.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2
          ),
          const Spacer(),
          Text(
            researchComponent.description,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              AwesomeDialog(
                dialogBackgroundColor: bgColor,
                showCloseIcon: true,
                dialogType: DialogType.noHeader,
                context: context,
                padding: EdgeInsets.all(defaultPadding),
                body: Container(
                  padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding, bottom: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          researchComponent.title,
                          style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 25)
                      ),
                      SizedBox(height: defaultPadding),
                      Text(
                        researchComponent.description,
                        style: const TextStyle(height: 2, fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ).show();
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Set contentPadding to EdgeInsets.zero
            ),
            child: const Text(
              "Read More >>",
              style: TextStyle(
                color: primaryColor
              ),
            ),
          )
        ],
      ),
    );
  }
}