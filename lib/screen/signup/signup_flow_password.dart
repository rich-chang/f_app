import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupFlowPassword extends StatefulWidget {
  const SignupFlowPassword({Key? key, required this.userName})
      : super(key: key);

  final String userName;

  @override
  State<SignupFlowPassword> createState() => _SignupFlowPasswordState();
}

class _SignupFlowPasswordState extends State<SignupFlowPassword> {
  late String userPassword;
  late bool _passwordVisible;
  late String userCheckedPassword;
  late bool _checkedPasswordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    _checkedPasswordVisible = false;
    userPassword = '';
    userCheckedPassword = '';
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
          leading: const Center(
            child: Text(
              '<  返回',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                fontWeight: FontWeight.w400,
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
                  Image.asset('images/signup_flow_line_off.png'),
                  Image.asset('images/signup_flow_dot_off.png'),
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
                        color: Color(0xFFAAE6EE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '信箱驗證',
                      style: TextStyle(
                        color: Color(0xFFAAE6EE),
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
                        height: 24,
                      ),
                      const Text(
                        '設定你的密碼',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextFormField(
                        obscureText: !_passwordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (val) {
                          setState(() {
                            userPassword = val.trim();
                            debugPrint('userPassword= $userPassword');
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFAAE6EE)),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD0D5DD)),
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                                debugPrint(
                                    '_passwordVisible= $_passwordVisible');
                              });
                            },
                            icon: Icon(_passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: const Color(0xFFAAE6EE),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        '英文+數字組合 8 - 16字 不能輸入表情符號喔!',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.44),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        '確定你的密碼',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextFormField(
                        obscureText: !_passwordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Noto Sans TC',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (val) {
                          setState(() {
                            userCheckedPassword = val.trim();
                            debugPrint(
                                'userCheckedPassword= $userCheckedPassword');
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFAAE6EE)),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD0D5DD)),
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                                debugPrint(
                                    '_passwordVisible= $_passwordVisible');
                              });
                            },
                            icon: Icon(_passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Color(0xFFAAE6EE),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/password_checkmark.svg',
                            color: (userPassword == userCheckedPassword &&
                                    userCheckedPassword.isNotEmpty)
                                ? Colors.white
                                : const Color.fromRGBO(255, 255, 255, 0.44),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '輸入正確',
                            style: TextStyle(
                              color: (userPassword == userCheckedPassword &&
                                      userCheckedPassword.isNotEmpty)
                                  ? Colors.white
                                  : const Color.fromRGBO(255, 255, 255, 0.44),
                              fontFamily: 'Noto Sans TC',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width > 400 ? 163 : 150,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint(': $userPassword');
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary:
                              Colors.black.withOpacity(0), // background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(68.0),
                          ),
                          side: const BorderSide(
                              width: 1.0, color: Color(0xFF33C2CF))),
                      child: const Text(
                        '上一步',
                        style: TextStyle(
                          color: Color(0xFFAAE6EE),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width > 400 ? 163 : 150,
                    height: 56,
                    child: ElevatedButton(
                      //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                      onPressed: () {
                        debugPrint('下一步: $userPassword');
                        /*
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupFlowInfo(
                                      userName: name,
                                    )));
                                    */
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: userPassword.isNotEmpty
                            ? const Color(0xFF33C2CF)
                            : const Color(0xFFE4E7EC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(68.0),
                        ),
                      ),
                      child: Text(
                        '下一步',
                        style: TextStyle(
                          color: userPassword.isNotEmpty
                              ? Colors.white
                              : const Color(0xFFB5BEBE),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
