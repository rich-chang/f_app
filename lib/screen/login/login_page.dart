import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  late bool _passwordVisible;
  late String password;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(108, 111, 108, 60),
                height: 90,
                child: Image.asset('images/login_page_logo.png'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: const Text(
                  '帳號 E-mail',
                  style: TextStyle(
                    color: Color(0xFF344854),
                    fontFamily: 'Noto Sans TC',
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: TextFormField(
                  //validator: (value) => Validator.validateEmail(value ?? ""),
                  //controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "ex.abc@gmail.com",
                    isDense: true,
                  ),
                  style:
                      const TextStyle(color: Color(0xFFB5BEBE), fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: const Text(
                  '密碼',
                  style: TextStyle(
                    color: Color(0xFF344854),
                    fontFamily: 'Noto Sans TC',
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                height: 47,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 48),
                  child: TextFormField(
                    obscureText: !_passwordVisible,
                    //validator: (value) => Validator.validatePassword(value ?? ""),
                    //controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "密碼為8-16字",
                      isDense: true,
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                              debugPrint('_passwordVisible= $_passwordVisible');
                            });
                          },
                          icon: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: const Color(0xFF667C85)),
                    ),
                    onChanged: (val) {
                      setState(() {
                        password = val.trim();
                        debugPrint('password= $val');
                      });
                    },
                    style:
                        const TextStyle(color: Color(0xFFB5BEBE), fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 99.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: SizedBox(
                  width: 318,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onSurface: Colors.grey, // Disable color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: const Text(
                      '登入',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: SizedBox(
                  width: 318,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('使用 Google 登入');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onSurface: Colors.grey, // Disable color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                        side: const BorderSide(color: Color(0xFF33C2CF)),
                      ),
                    ),
                    child: const Text(
                      '使用 Google 登入',
                      style: TextStyle(
                        color: Color(0xFF33C2CF),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: SizedBox(
                  width: 318,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('使用 Apple ID 登入');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onSurface: Colors.grey, // Disable color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                        side: const BorderSide(color: Color(0xFF00727C)),
                      ),
                    ),
                    child: const Text(
                      '使用 Apple ID 登入',
                      style: TextStyle(
                        color: Color(0xFF00727C),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 52, bottom: 65),
                  child: SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '還沒有 Florish 帳號? ',
                        style: TextStyle(
                          height: 16.41 / 14,
                          color: Color(0xFF00727C),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '立即註冊',
                        style: TextStyle(
                          height: 16.41 / 14,
                          color: Color(0xFF33C2CF),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
