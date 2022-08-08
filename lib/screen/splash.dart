import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // https://stackoverflow.com/questions/45745448/how-do-i-stretch-an-image-to-fit-the-whole-background-100-height-x-100-width
      body: Center(
        child: Image.asset(
          'images/splash.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
