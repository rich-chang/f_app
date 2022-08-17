import 'package:flutter/material.dart';

class SignupFlowInfoContainer extends StatefulWidget {
  //const SignupFlowInfoContainer({Key? key}) : super(key: key);
  const SignupFlowInfoContainer({Key? key, required this.userName})
      : super(key: key);

  final String userName;

  @override
  State<SignupFlowInfoContainer> createState() =>
      _SignupFlowInfoContainerState();
}

class _SignupFlowInfoContainerState extends State<SignupFlowInfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.userName),
      ],
    );
  }
}
