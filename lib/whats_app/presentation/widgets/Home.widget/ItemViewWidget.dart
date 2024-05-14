


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants_view/theme/colors.dart';

Widget ItemViewWidget({
    required BuildContext context ,
   required String Imageurl ,
  required String contectName ,
  required String subTitle,
  required String timeFrame,
}){

  return  Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 5,bottom: 10),
    child: Row(
      children: [
        Stack(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(Imageurl),
                  )
              ),
            ),
            Positioned(
                bottom: 3,
                right: 3,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 2),
                      color: greenColor
                  ),

                ))
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:MediaQuery.of(context).size.width-110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(contectName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                    Text(timeFrame,style: TextStyle(color: grayShadeColor.light))
                  ],
                ),
              ),

              SizedBox(height: 14),
              Text(subTitle,style: TextStyle(color: grayShadeColor.light),),
            ],
          ),
        ),

      ],
    ),
  );

}