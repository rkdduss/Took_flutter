import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';

class Final extends StatefulWidget {
  const Final({super.key});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('lib/assets/toolSubLogo.png'),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/finalTook.png'),
                SizedBox(width: 8,),
                Text(
                    '회원가입을 환영해요!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 210,),

              ]
            ),
            Image.asset('lib/assets/final.png'),
            SizedBox(height: 206),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('home');
              },
              child: Container(
                width: 314,
                height: 58,
                decoration: BoxDecoration(
                  color: tookColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                      '회원가입 완료',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
