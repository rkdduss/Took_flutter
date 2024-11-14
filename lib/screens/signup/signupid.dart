import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';

class Signupid extends StatefulWidget {
  const Signupid({super.key});

  @override
  State<Signupid> createState() => _SignupidState();
}

class _SignupidState extends State<Signupid> {
  final _id = TextEditingController();
  bool sameCheck = false;
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
                    '아이디를 입력해 주세요',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 42),
                Container(
                  margin: EdgeInsets.only(left: 37),
                  padding: EdgeInsets.only(right: 10),
                  width: 314,
                  height: 58,
                  decoration: BoxDecoration(
                    color: greyTextField,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: _id,
                    decoration: InputDecoration(
                      hintText: "아이디를 입력해주세요",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: placeholderColor,
                      ),
                      prefixIcon:  Icon(
                          CupertinoIcons.person_fill,
                          size: 30,
                          color: Colors.black.withOpacity(0.5)
                      ),

                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            sameCheck = true;
                          });
                        },
                        child: sameCheck
                            ? Icon(CupertinoIcons.check_mark,color: tookColor,)
                            : Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 80,
                      decoration: BoxDecoration(
                        color: sameCheckColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '중복 체크하기',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )

                  ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                if (sameCheck)
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 40,top: 10),
                        child: Text(
                          '사용 가능한 아이디입니다',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: sameCheck ? 423 : 453,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('password');
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