import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                height: 259,
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
                  style: const TextStyle(
                    color: Color(0xFFB5BEBE),
                    fontSize: 20
                  ),
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
              SizedBox(
                height: 4.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: TextFormField(
                  //obscureText: _showPassword,
                  //validator: (value) => Validator.validatePassword(value ?? ""),
                  //controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "密碼為8-16字",
                    isDense: true,
                  ),
                  style: const TextStyle(
                      color: Color(0xFFB5BEBE),
                      fontSize: 20
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
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: const Text(
                        '登入',
                        style: TextStyle(
                          fontSize: 16
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
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                        side: BorderSide(color: Color(0xFF33C2CF)),
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
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                        side: BorderSide(color: Color(0xFF00727C)),
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
            ],
          ),
        ),
    );
  }
}