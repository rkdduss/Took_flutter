import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';


class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  final _password = TextEditingController();
  final _passwordCheck = TextEditingController();
  bool samePassword = false;

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
                    '비밀번호를 입력해 주세요',
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
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "비밀번호를 입력해주세요",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: placeholderColor,
                      ),
                      prefixIcon: Icon(CupertinoIcons.lock_fill,size: 30,color: Colors.black.withOpacity(0.5),),
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
                    controller: _passwordCheck,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "비밀번호를 한번 더 입력해주세요",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: placeholderColor,
                      ),
                      prefixIcon: Icon(CupertinoIcons.lock_fill,size: 30,color: Colors.black.withOpacity(0.5),),
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
                    Navigator.of(context).pushNamed('final');
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

