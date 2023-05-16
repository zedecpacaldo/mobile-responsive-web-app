import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:html' as html;

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
          researchComponent.description!=""?Text(
            researchComponent.description,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ):Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white10,
                  radius: 20,
                ),

                CircleAvatar(
                  backgroundColor: Colors.white10,
                  radius: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white10,
                  radius: 20,
                )
              ],
            )
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
                      researchComponent.html != ""?Html(
                        data: researchComponent.html,
                        onLinkTap: (url, _, __) {
                          html.window.open(url!, "Get Dataset");
                        },
                      ):Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 20,
                              ),

                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 20,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                radius: 20,
                              )
                            ],
                          )
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