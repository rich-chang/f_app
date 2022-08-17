import 'package:Florish/screen/signup/agreement_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
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
                margin: const EdgeInsets.fromLTRB(92, 198, 92, 242),
                height: 90,
                child: Image.asset('images/signup_page_logo.png'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(48, 0, 48, 20),
                child: SizedBox(
                  width: 318,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('以 E-mail 註冊');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgreementPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Color(0xFF33C2CF), // background color
                      onSurface: Color(0x00FFFFFF), // Disable color
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgreementPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary:
                            Colors.black.withOpacity(0), // background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(68.0),
                        ),
                        side: const BorderSide(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgreementPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary:
                            Colors.black.withOpacity(0), // background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(68.0),
                        ),
                        side: const BorderSide(
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
    );
  }
}
