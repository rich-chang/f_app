import 'package:flutter/material.dart';

class SignupFlowName extends StatefulWidget {
  const SignupFlowName({Key? key}) : super(key: key);

  @override
  State<SignupFlowName> createState() => _SignupFlowNameState();
}

class _SignupFlowNameState extends State<SignupFlowName> {
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
              Center(
                child: Text(
                  'PPP',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Noto Sans TC',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Image.asset('images/signup_flow_dot_on.png')),
                  Center(
                    child: Text(
                      ' - - - - - - - - - - - - ',
                      style: const TextStyle(
                        color: Color(0xFFAAE6EE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Image.asset('images/signup_flow_dot_off.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
