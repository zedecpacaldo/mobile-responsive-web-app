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
    List<AssetImage> researcherPics = researchers.map((researcher) => AssetImage(researcher.image)).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Researchers",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MouseRegion(
                  onEnter: (event){
                    changeHover(0);
                  },
                  child: GestureDetector(
                    onTap: (){
                      changeHover(-1);
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
                      changeHover(-1);
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
                      changeHover(-1);
                    },
                    child: Text(
                        researchers[2].name,
                        textAlign: TextAlign.end,
                        style: selected == 2?TextStyle(color: Colors.white):null
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Divider(),
        const SizedBox(height: defaultPadding),
        Text(
          "About Us",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        if(selected == -1)
        const Column(
          children: [
            const SizedBox(height: defaultPadding),
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
            CircleAvatar(
              radius: 50,
              backgroundImage: researcherPics[selected],
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