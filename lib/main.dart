import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:florish_app/screen/splash.dart';
import 'package:florish_app/screen/onboarding/onboarding_page.dart';
import 'package:florish_app/screen/login/login_page.dart';
import 'package:florish_app/screen/signup/agreement_page.dart';
import 'package:florish_app/screen/signup/signup_page.dart';
import 'package:florish_app/screen/signup/signup_flow_name.dart';
import 'package:florish_app/screen/home/home_page.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Home page'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 36),
        child: SingleChildScrollView(
          child: Column(
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
                    child: const Text(
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
              const SizedBox(
                height: 32,
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
                    child: const Text(
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
              const SizedBox(
                height: 32,
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
                    child: const Text(
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
              const SizedBox(
                height: 32,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('Register Agreement');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgreementPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: const Color(0xFF33C2CF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: const Text(
                      'Register Agreement',
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
              const SizedBox(
                height: 32,
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
                    child: const Text(
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
              const SizedBox(
                height: 32,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('Signup flow - name');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupFlowName()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: const Color(0xFF33C2CF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: const Text(
                      'Signup flow - name',
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
              const SizedBox(
                height: 32,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 56,
                  child: ElevatedButton(
                    //If onPressed and onLongPress callbacks are null, then the button will be disabled.
                    onPressed: () {
                      debugPrint('Home');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: const Color(0xFF33C2CF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                    ),
                    child: const Text(
                      'Home',
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
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
