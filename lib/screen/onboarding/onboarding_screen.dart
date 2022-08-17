import 'package:flutter/material.dart';
import 'onboarding_size_config.dart';
import 'onboarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  List colors = [
    //Color(0xffDAD3C8),
    //Color(0xffFFE5DE),
    //Color(0xffDCF6E6)
    Colors.white,
    Colors.white,
    Colors.white
  ];

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        color: _currentPage == index ? Color(0xFF33C2CF) : const Color.fromRGBO(51, 194, 207, 0.2),
      ),
      margin: const EdgeInsets.only(right: 5),
      curve: Curves.easeIn,
      height: 6,
      width: _currentPage == index ? 24 : 6,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Container(
                    // color: colors[i],
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image,
                            height: SizeConfig.blockV! * 35,
                          ),
                          SizedBox(
                            height: (height >= 840) ? 60 : 30,
                          ),
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF33C2CF),
                              fontFamily: "Noto Sans TC",
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                              height: 40 / 32,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            contents[i].desc,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF344854),
                              fontFamily: "Noto Sans TC",
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              height: 40 / 24,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (int index) => _buildDots(index: index),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("進入體驗吧"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: (width <= 550) ? EdgeInsets.symmetric(horizontal: 100, vertical: 20) : EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 25),
                              textStyle: TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  debugPrint("_currentPage:$_currentPage: 跳過");
                                  _controller.jumpToPage(2);
                                },
                                child: Text(
                                  "跳過",
                                  style: TextStyle(
                                    color: Color(0xFF667C85),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    height: 16.41 / 14,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: (width <= 550) ? 13 : 17,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Text("下一個"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF33C2CF), // background color
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(68),
                                  ),
                                  elevation: 0,
                                  padding: (width <= 550) ? EdgeInsets.symmetric(horizontal: 30, vertical: 20) : EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 20 / 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
