import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whats_app_clone/whats_app/presentation/widgets/Home.widget/statusIcon.dart';

import '../../constants_view/theme/colors.dart';
import '../../widgets/Home.widget/ItemViewWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String imagesorce="https://i.pinimg.com/originals/28/10/70/281070e5a9b492930917b8835ad38ff0.jpg";
    return  Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child:
              Column(
              children: [
               const SizedBox(
                  height: 26,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CHATS",
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.group_add,size: 26,color: greenColor,),
                      )
                    ],
                  ),
                ),
                const  SizedBox(height:10 ,),
                const Divider(thickness: 1,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        addStoryWidget(size: 60,icon: Icons.add,text: 'New Status'),
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 90,
                          child: ListView(
                            shrinkWrap:true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(5, (index) => storyWidget(size: 60 ,imageUrl: imagesorce ,text: 'esro',showGreenStrip: true),)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
                Expanded(child: ListView.builder(
                  itemCount: 16,
                  itemBuilder: (context,index)=>  ItemViewWidget(
                      contectName: "Nobita",
                      subTitle: "Doreamon Gadget Dona",
                      context: context,
                      Imageurl: imagesorce ,
                      timeFrame: "16:30"
                  ),

                ))
              ],
            ),
          ),
        );
  }
}
