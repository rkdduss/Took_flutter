import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:took/assets/colors/color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool logoutAlert = false;
  bool profileEdit = false;
  String classId = "1116";
  String name = "서민덕";
  final _editInfo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: profileEdit ? editProfileColor.withOpacity(0) : Colors.white.withOpacity(1)
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.person_crop_circle_fill,
                  size: 100,
                  color: tookyellowColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      classId,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 7,),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      profileEdit = true;
                    });
                  },
                  child: Container(
                    width: 134,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 5,
                          offset: Offset(0,3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '프로필 수정',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('내 정보',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Container(
                          width: 344,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              width: 1,
                              color: disableColor,
                            )
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('mypost');
                                    },
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('내 글',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),

                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: disableColor,
                                  ),
                                  SizedBox(height: 12,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('mycomment');
                                    },
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('내 댓글',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('설정',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                        Container(
                          width: 344,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                            border: Border.all(
                              width: 1,
                              color: disableColor,
                            ),
                          ),

                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('info_agree');
                                    },
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('개인정보처리약관',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: disableColor,
                                  ),
                                  SizedBox(height: 12,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('use_agree');
                                    },
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('이용약관',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 344,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                            border: Border(
                              left: BorderSide(width: 1,color: disableColor),
                              right: BorderSide(width: 1,color: disableColor),
                              bottom: BorderSide(width: 1,color: disableColor),
                            ),
                          ),

                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(padding: EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        logoutAlert = true;
                                      });
                                    },
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('로그아웃',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: disableColor,
                                  ),
                                  SizedBox(height: 12,),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                      width: 320,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Text('회원탈퇴',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                          Spacer(),
                                          Icon(CupertinoIcons.chevron_right,size: 20,),
                                        ],
                                      ),
                                    ),                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            profileEdit ?
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 90),
                width: 273,
                height: 266,
                decoration: BoxDecoration(
                  color: editProfileColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Icon(
                        CupertinoIcons.person_crop_circle_fill,
                        color: tookyellowColor,
                        size: 105,
                      ),
                      SizedBox(height: 18,),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width: 230,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        child: TextField(
                          controller: _editInfo,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: double.infinity,
                        height: 0.5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(height: 11,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  profileEdit = false;
                                });
                              },
                              child: Text(
                                '수정 완료',
                                style: TextStyle(
                                    color: editEnd,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ) :
                Text(''),
          ],
        ),
      ),
      backgroundColor: profileEdit ? 
      Colors.white.withOpacity(0.76) : Colors.white.withOpacity(1)
    );
  }
}
