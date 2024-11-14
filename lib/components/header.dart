import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:took/assets/colors/color.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.only(left: 12,bottom: 17),
            child:  Image.asset('lib/assets/toolSubLogo.png'),
          ),
          SizedBox(width: 190,),
          Padding(padding: EdgeInsets.only(left: 10,bottom: 5),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('profile');
              },
              icon: Icon(
                CupertinoIcons.person_crop_circle,
                size: 38,
                color: tookColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
