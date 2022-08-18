import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PsychoTestPage extends StatefulWidget {
  const PsychoTestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PsychoTestState();
}

class _PsychoTestState extends State<PsychoTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 4,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 62.0, left: 24),
                            child: SvgPicture.asset(
                              'images/psycho_test_title.svg',
                              width: 128,
                              height: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: SvgPicture.asset(
                              'images/psycho_test_logo.svg',
                              width: 211,
                              height: 197,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 31,
                      ),
                    ],
                  ),
                  Container(
                    width: 366,
                    height: 100,

                    decoration: BoxDecoration(

                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(138, 226, 202, 0.9),
                          Color.fromRGBO(27, 128, 219, 0.9),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
                      child: Text(
                        '心理測驗可以解釋、分析心理、性格或個人觀點。 Florish 提供豐富心理測驗內容，您可以定時了解當前的狀態。',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PingFang TC',
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
