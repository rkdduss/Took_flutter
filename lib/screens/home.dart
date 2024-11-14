
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';
import 'package:took/components/header.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final postList = [
    {
      'title' : '냄새나요',
      'category' : '악취',
    },
    {
      'title' : '냄새나요',
      'category' : '악취',
    },
    {
      'title' : '냄새나요',
      'category' : '악취',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                        Padding(
                        padding: const EdgeInsets.only(left: 25,top: 23,bottom: 20),
                      child: Text(
                        '기숙사 관련 불만들이에요!',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    postContainer(
                        title: "소음이 심해요",
                        category: "소음",
                    ),
                    postContainer(
                        title: "냄새가 심해요",
                        category: "악취"
                    ),
                    postContainer(
                        title: "시설이 망가졌어요",
                        category: "파손"
                    ),
                    postContainer(
                      title: "소음이 심해요",
                      category: "소음",
                    ),
                    postContainer(
                        title: "냄새가 심해요",
                        category: "악취"
                    ),
                    postContainer(
                        title: "시설이 망가졌어요",
                        category: "파손"
                    ),
                    postContainer(
                      title: "소음이 심해요",
                      category: "소음",
                    ),
                    postContainer(
                        title: "냄새가 심해요",
                        category: "악취"
                    ),
                    postContainer(
                        title: "시설이 망가졌어요",
                        category: "파손"
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.97),
    );
  }
  Widget postContainer({
    String title = '',
    String category = '',
    String date = '2024.10.10',
    String hearts = '23',
    String comments= '9',
  }) {
    return Column(
      children: [
        Container(
          width: 340,
          height: 1,
          color: postLineColor,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 1),
          width: 316,
          height: 90,
          child: Row(
            children: [
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: placeholderColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '카테고리: ${category}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: placeholderColor,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 2.3,right: 2),
                        child: Icon(CupertinoIcons.heart,size: 12,color: tookyellowColor,),
                      ),
                      Text(hearts,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),),
                      SizedBox(width: 10,),
                      Padding(padding: EdgeInsets.only(top: 2.3,right: 3),
                        child: Icon(CupertinoIcons.bubble_right,size: 12,color: tookyellowColor,),
                      ),
                      Text(comments,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),),
                    ],
                  ),
                ],
              ),
            ],
          ),

        ),
      ],
    );
  }
}
