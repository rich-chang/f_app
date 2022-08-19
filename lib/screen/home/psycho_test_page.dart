import 'package:flutter/cupertino.dart';
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
      backgroundColor: const Color(0xFFF2F4F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 0,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
                  children: [
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.width > 400 ? 130 : 50,
                    ),
                    SvgPicture.asset(
                      'images/psycho_test_bkg_gray.svg',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: MediaQuery.of(context).size.width > 400
                              ? const EdgeInsets.only(bottom: 62.0, left: 24)
                              : const EdgeInsets.only(bottom: 22.0, left: 16),
                          child: SvgPicture.asset(
                            'images/psycho_test_title.svg',
                            width: MediaQuery.of(context).size.width > 400
                                ? 128
                                : 80,
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: MediaQuery.of(context).size.width > 400
                              ? const EdgeInsets.only(right: 6.0)
                              : const EdgeInsets.only(right: 2.0),
                          child: SvgPicture.asset(
                            'images/psycho_test_logo.svg',
                            width: MediaQuery.of(context).size.width > 400
                                ? 211
                                : 169, // 80% ratio
                            height: MediaQuery.of(context).size.width > 400
                                ? 197
                                : 158, // 80% ratio
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 400 ? 31 : 0,
                    ),
                    Container(
                      width:
                          MediaQuery.of(context).size.width > 400 ? 366 : 320,
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
          ],
        ),
      ),
    );
  }
}
