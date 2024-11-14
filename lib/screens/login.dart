import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:took/assets/colors/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _id = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("lib/assets/tookBackground.png"),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 300,
              child: Image.asset(
                "lib/assets/Ellipse 1.png",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Image.asset('lib/assets/toolLogo.png'),
                  SizedBox(height: 80),
                  Container(
                    width: 314,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: Colors.white,
                          width: 2,
                      ),
                    ),
                    child: TextField(
                      controller: _id,
                      decoration: InputDecoration(
                        hintText: "아이디를 입력해주세요",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(CupertinoIcons.person_fill,size: 24,color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 314,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.white,
                        width: 2
                      )
                    ),
                    child: TextField(
                      controller: _password,
                      decoration: InputDecoration(
                        hintText: "비밀번호를 입력해주세요",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(CupertinoIcons.lock_fill,size: 24,color: Colors.white,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 193),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('계정이 없으신가요?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13
                          ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('signup');
                          },
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                                color: tookColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                            ),
                          ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('home');
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 314,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text('로그인',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: tookColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
