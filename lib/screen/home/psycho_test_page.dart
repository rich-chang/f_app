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
                              ? const EdgeInsets.only(bottom: 95.0, left: 24)
                              : const EdgeInsets.only(bottom: 70.0, left: 16),
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
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.width > 400 ? 130 : 105,
                    ),
                    Container(
                      width:
                          MediaQuery.of(context).size.width > 400 ? 366 : 320,
                      height:
                          MediaQuery.of(context).size.width > 400 ? 100 : 80,
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
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                        child: Text(
                          '心理測驗可以解釋、分析心理、性格或個人觀點。 Florish 提供豐富心理測驗內容，您可以定時了解當前的狀態。',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PingFang TC',
                            fontSize: MediaQuery.of(context).size.width > 400
                                ? 16
                                : 14.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          height:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'images/psycho_test_category_mental_.svg'),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "心理健康",
                                style: TextStyle(
                                  color: Color(0xFF667C85),
                                  fontFamily: 'Noto Sans TC',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 12 : 10,
                        ),
                        Container(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          height:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'images/psycho_test_category_emo_.svg'),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                '情緒健康',
                                style: TextStyle(
                                  color: Color(0xFF667C85),
                                  fontFamily: 'Noto Sans TC',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 12 : 10,
                        ),
                        Container(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          height:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'images/psycho_test_category_emo_.svg'),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                '人際關係',
                                style: TextStyle(
                                  color: Color(0xFF667C85),
                                  fontFamily: 'Noto Sans TC',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 12 : 10,
                        ),
                        Container(
                          width:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          height:
                              MediaQuery.of(context).size.width > 400 ? 82 : 76,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'images/psycho_test_category_emo_.svg'),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                '人格特質',
                                style: TextStyle(
                                  color: Color(0xFF667C85),
                                  fontFamily: 'Noto Sans TC',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width > 400
                                  ? 24
                                  : 16),
                          child: SvgPicture.asset(
                              'images/psycho_test_recommand.svg')),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width > 400
                              ? 24
                              : 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/psycho_test_#1.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width > 400
                                ? 179
                                : 165,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'images/psycho_test_#2.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width > 400
                                ? 179
                                : 165,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width > 400
                                  ? 24
                                  : 16),
                          child: SvgPicture.asset(
                              'images/psycho_test_recent.svg')),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width > 400
                              ? 24
                              : 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/psycho_test_#3.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width > 400
                                ? 179
                                : 165,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'images/psycho_test_#4.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width > 400
                                ? 179
                                : 165,
                          ),
                        ],
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
