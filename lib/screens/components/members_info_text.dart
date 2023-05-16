import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioflutter/constants.dart';

import '../../contents.dart';
import '../../models/Researcher.dart';

class MembersInfoText extends StatefulWidget {
  MembersInfoText({
    super.key,
  });

  @override
  State<MembersInfoText> createState() => _MembersInfoTextState();
}

class _MembersInfoTextState extends State<MembersInfoText> {
  int selected = -1;

  void changeHover(int choice){
    setState(() {
      selected = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Adviser",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            const Expanded(
                child: Text(
                  "Dr. Paul Regonia",
                  textAlign: TextAlign.end,
                )
            ),
          ],
        ),
        SizedBox(height: defaultPadding/2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "Researchers",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MouseRegion(
                    onEnter: (event){
                      changeHover(0);
                    },
                    child: GestureDetector(
                      onTap: (){
                        if(selected == 0){
                          changeHover(-1);
                        } else {
                          changeHover(0);
                        }
                      },
                      child: Text(
                          researchers[0].name,
                          textAlign: TextAlign.end,
                          style: selected == 0?TextStyle(color: Colors.white):null
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding/2),
                  MouseRegion(
                    onEnter: (event){
                      changeHover(1);
                    },
                    child: GestureDetector(
                      onTap: (){
                        if(selected == 1){
                          changeHover(-1);
                        } else {
                          changeHover(1);
                        }
                      },
                      child: Text(
                          researchers[1].name,
                          textAlign: TextAlign.end,
                          style: selected == 1?TextStyle(color: Colors.white):null
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding/2),
                  MouseRegion(
                    onEnter: (event){
                      changeHover(2);
                    },
                    child: GestureDetector(
                      onTap: (){
                        if(selected == 2){
                          changeHover(-1);
                        } else {
                          changeHover(2);
                        }
                      },
                      child: Text(
                        researchers[2].name,
                        textAlign: TextAlign.end,
                        style: selected == 2?TextStyle(color: Colors.white):null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        const Divider(),
        const SizedBox(height: defaultPadding),
        Text(
          "About Us",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        if(selected == -1)
        const Column(
          children: [
            SizedBox(height: defaultPadding),
            Text(
              groupDescription,
              style: TextStyle(height: 2),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
        if(selected >= 0)
        Column(
          children: [
            const SizedBox(height: defaultPadding),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  researchers[selected].image,
                  fit: BoxFit.cover
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Text(
              researchers[selected].description,
              style: const TextStyle(height: 2),
              textAlign: TextAlign.justify,
            ),
          ],
        )
      ],
    );
  }
}