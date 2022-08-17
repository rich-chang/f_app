import 'package:flutter/material.dart';
import 'package:Florish/screen/signup/signup_flow_verify_email_completed.dart';

class SignupFlowVerifyEmail extends StatefulWidget {
  const SignupFlowVerifyEmail({Key? key, required this.userName})
      : super(key: key);

  final String userName;

  @override
  State<SignupFlowVerifyEmail> createState() => _SignupFlowVerifyEmailState();
}

class _SignupFlowVerifyEmailState extends State<SignupFlowVerifyEmail> {
  late String userName;
  late bool isEmailVerified;

  @override
  void initState() {
    userName = widget.userName;
    isEmailVerified = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0x00000000),
          elevation: 0.0,
          leadingWidth: 70,
          leading: Center(
            child: TextButton(
              onPressed: () {
                debugPrint('<  返回');
                Navigator.pop(context);
              },
              child: const Text(
                '<  返回',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SF Pro Text',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          title: const Text(
            '註冊',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'SF Pro Text',
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_on.png'),
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_on.png'),
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_on.png'),
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_on.png'),
                  Image.asset('images/signup_flow_dot_on.png'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width > 400 ? 40 : 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '個人稱呼',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '基本資料',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '電子信箱',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '設定密碼',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '信箱驗證',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              // Each step container
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, ${widget.userName}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        '請驗證你的E-mail',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "已發送到您的E-mail，請點擊連結完成驗證:)",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 67,
                      ),
                      Center(
                        child: Image.asset(
                          'images/verify_email.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 124,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width > 400 ? 350 : 300,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('下一步');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignupFlowVerifyEmailCompleted(
                                      userName: userName)));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: isEmailVerified
                          ? const Color(0xFF33C2CF)
                          : const Color(0xFFE4E7EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: Text(
                      '下一步',
                      style: TextStyle(
                        color: isEmailVerified
                            ? Colors.white
                            : const Color(0xFFB5BEBE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 82,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
