import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants_view/theme/colors.dart';

Widget addStoryWidget(
    {required double size, IconData? icon, required String text}) {
  return Column(
    children: [
      Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [greenShadeColor.dark, greenShadeColor.light],
            )),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(text, style: TextStyle(color: grayShadeColor.light)),
    ],
  );
}

Widget storyWidget(
    {required double size,
      required String imageUrl,
      required String text,
      required bool showGreenStrip
    }) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: showGreenStrip?Border.all(color: greenColor, width: 2):null),
          child: Padding(
            padding:  showGreenStrip?EdgeInsets.all(2.2):EdgeInsets.all(0),
            child: Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: grayShadeColor.light),
        )
      ],
    ),
  );
}
