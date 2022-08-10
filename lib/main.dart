import 'package:flutter/material.dart';

import 'screen/splash.dart';
import 'screen/onboarding/onboarding_page.dart';
import 'screen/signup/signup_page.dart';
import 'screen/signup/agreement_page.dart';
import 'screen/signup/signup_flow_name.dart';
import 'screen/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florish App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try

        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TempHome(),
    );
  }
}

////////////////// temp ////////////////

class TempHome extends StatefulWidget {
  const TempHome({Key? key}) : super(key: key);

  @override
  State<TempHome> createState() => _TempHomeState();
}

class _TempHomeState extends State<TempHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Home page'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                  onPressed: () {
                    debugPrint('Splash page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: const Color(0xFF33C2CF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(68.0),
                    ),
                  ),
                  child: Text(
                    'Splash page',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                  onPressed: () {
                    debugPrint('Onboarding page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: const Color(0xFF33C2CF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(68.0),
                    ),
                  ),
                  child: Text(
                    'Onboarding page',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                  onPressed: () {
                    debugPrint('Login page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: const Color(0xFF33C2CF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(68.0),
                    ),
                  ),
                  child: Text(
                    'Login page',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                  onPressed: () {
                    debugPrint('Signup main page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: const Color(0xFF33C2CF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(68.0),
                    ),
                  ),
                  child: Text(
                    'Signup page',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 56,
                child: ElevatedButton(
                  //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                  onPressed: () {
                    debugPrint('Signup flow page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupFlow()));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: const Color(0xFF33C2CF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(68.0),
                    ),
                  ),
                  child: Text(
                    'Signup flow page',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
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
