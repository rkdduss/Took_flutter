import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _name = TextEditingController();
  final _classId = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/assets/toolSubLogo.png'),
        backgroundColor: Colors.white,
      ),
        backgroundColor: Colors.white,
        body: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 54),
                  child: Text(
                    '이름과 학번을 입력해 주세요',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 42),
                Container(
                  margin: EdgeInsets.only(left: 37),
                  width: 314,
                  height: 58,
                  decoration: BoxDecoration(
                    color: greyTextField,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: "이름을 입력해주세요",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: placeholderColor,
                      ),
                      prefixIcon: Icon(CupertinoIcons.person_fill,size: 30,color: Colors.black.withOpacity(0.5),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.only(left: 37),
                  width: 314,
                  height: 58,
                  decoration: BoxDecoration(
                    color: greyTextField,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: _classId,
                    decoration: InputDecoration(
                      hintText: "학번을 입력해주세요 (1116)",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: placeholderColor,
                      ),
                      prefixIcon: Icon(CupertinoIcons.person_fill,size: 30,color: Colors.black.withOpacity(0.5),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 370,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('signupid');
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 37),
                    width: 314,
                    height: 58,
                    decoration: BoxDecoration(
                      color: tookColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                          '다음',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
//
// fonts:
// - family: Pretendard
// fonts:
// - asset: lib/assets/fonts/Pretendard-Thin.ttf
// weight: 100
// - asset: lib/assets/fonts/Pretendard-ExtraLight.ttf
// weight: 200
// - asset: lib/assets/fonts/Pretendard-Light.ttf
// weight: 300
// - asset: lib/assets/fonts/Pretendard-Regular.ttf
// weight: 400
// - asset: lib/assets/fonts/Pretendard-Medium.ttf
// weight: 500
// - asset: lib/assets/fonts/Pretendard-SemiBold.ttf
// weight: 600
// - asset: lib/assets/fonts/Pretendard-Bold.ttf
// weight: 700
// - asset: lib/assets/fonts/Pretendard-ExtraBold.ttf
// weight: 800
// - asset: lib/assets/fonts/Pretendard-Black.ttf
// weight: 900