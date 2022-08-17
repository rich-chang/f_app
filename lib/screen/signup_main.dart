import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF8AE2CA),
                  Color(0xFF1B80DB),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(48, 200, 48, 0),
                  child: Text(
                    "Florish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(48, 25, 48, 0),
                  child: Text(
                    "幸福心光",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(48, 245, 48, 20),
                  child: SizedBox(
                    width: 318,
                    height: 56,
                    child: ElevatedButton(
                      //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                      onPressed: () {
                        debugPrint('以 E-mail 註冊');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF33C2CF), // background color
                        onSurface: Color(0x00FFFFFF), // Disable color
                        shadowColor: Color(0x00FFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(68.0),
                        ),
                      ),
                      child: const Text(
                        '以 E-mail 註冊',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(48, 0, 48, 20),
                  child: SizedBox(
                    width: 318,
                    height: 56,
                    child: ElevatedButton(
                      //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                      onPressed: () {
                        debugPrint('使用 Google 註冊');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0x00FFFFFF), // background color
                          onSurface: Color(0x00FFFFFF), // Disable color
                          shadowColor: Color(0x00FFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(68.0),
                          ),
                          side: BorderSide(
                            width: 1,
                            color: Colors.white,
                          )),
                      child: const Text(
                        '使用 Google 註冊',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(48, 0, 48, 20),
                  child: SizedBox(
                    width: 318,
                    height: 56,
                    child: ElevatedButton(
                      //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                      onPressed: () {
                        debugPrint('使用 Apple ID 註冊');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0x00FFFFFF), // background color
                          onSurface: Color(0x00FFFFFF), // Disable color
                          shadowColor: Color(0x00FFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(68.0),
                          ),
                          side: BorderSide(
                            width: 1,
                            color: Colors.white,
                          )),
                      child: const Text(
                        '使用 Apple ID 註冊',
                        style: TextStyle(
                          color: Color(0xFFAAE6EE),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 53, bottom: 79),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '已經有 Florish 帳號?  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '立即登入',
                      style: TextStyle(
                        color: Color(0xFF33C2CF),
                        fontFamily: 'Noto Sans TC',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}