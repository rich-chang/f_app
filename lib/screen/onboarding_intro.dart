import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // for kIsWeb
import 'package:introduction_screen/introduction_screen.dart';
import 'onboarding_contents.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int _currentPage = 0;

  void _onIntroEnd(context) {
    //
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalFooter: _currentPage + 1 == contents.length
          ? Container(
              //margin: EdgeInsets.only(bottom: 100),
              //padding: EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        width: 334,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () => _onIntroEnd(context),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF33C2CF), // background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(68.0),
                            ),
                          ),
                          child: const Text(
                            '進入體驗吧',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              //margin: EdgeInsets.only(bottom: 100),
              //padding: EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 52),
                      child: TextButton(
                        onPressed: () {
                          debugPrint('跳過');
                        },
                        child: const Text(
                          '跳過',
                          style: TextStyle(color: Color(0xFF667C85), fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: 134,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () => _onIntroEnd(context),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF33C2CF), // background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(68.0),
                            ),
                          ),
                          child: const Text(
                            '下一個',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      pages: [
        PageViewModel(
          titleWidget: const Text(
            '心情日記',
            style: TextStyle(
              color: Color(0xFF33C2CF),
              fontFamily: 'Noto Sans TC',
              fontSize: 32,
              height: 40 / 32,
            ),
          ),
          bodyWidget: const Text(
            "釋放壓力\r\n讓明天重新開始",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF344854),
              fontFamily: 'Noto Sans TC',
              fontSize: 24,
              height: 36 / 24,
            ),
          ),
          image: _buildImage('images/onboarding_slide1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const Text(
            '心理測驗',
            style: TextStyle(
              color: Color(0xFF33C2CF),
              fontFamily: 'Noto Sans TC',
              fontSize: 32,
              height: 40 / 32,
            ),
          ),
          bodyWidget: const Text(
            "讓自己\r\n隨時掌握當前狀態",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF344854),
              fontFamily: 'Noto Sans TC',
              fontSize: 24,
              height: 36 / 24,
            ),
          ),
          image: _buildImage('images/onboarding_slide2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const Text(
            '幸福練習',
            style: TextStyle(
              color: Color(0xFF33C2CF),
              fontFamily: 'Noto Sans TC',
              fontSize: 32,
              height: 40 / 32,
            ),
          ),
          bodyWidget: const Text(
            "每日5分鐘\r\n一個人的自我療癒",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF344854),
              fontFamily: 'Noto Sans TC',
              fontSize: 24,
              height: 36 / 24,
            ),
          ),
          image: _buildImage('images/onboarding_slide3.png'),
          decoration: pageDecoration,
        ),
      ],
      onChange: (value) => setState(() => _currentPage = value),
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      skipOrBackFlex: 0,
      nextFlex: 0,
      showSkipButton: false,
      showBackButton: false,
      showNextButton: false,
      showDoneButton: false,
      //rtl: true, // Display as right-to-left
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(8),
      controlsPadding: kIsWeb ? const EdgeInsets.all(12.0) : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromRGBO(51, 194, 207, 0.2),
        activeColor: Color(0xFF33C2CF),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
