import 'package:flutter/material.dart';

class SignupFlowNameContainer extends StatefulWidget {
  const SignupFlowNameContainer({Key? key}) : super(key: key);

  @override
  State<SignupFlowNameContainer> createState() =>
      _SignupFlowNameContainerState();
}

class _SignupFlowNameContainerState extends State<SignupFlowNameContainer> {
  late String name;

  @override
  void initState() {
    name = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '歡迎來到 Florish !',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    '要怎麼稱呼你呢？',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Noto Sans TC',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    onChanged: (val) {
                      setState(() {
                        name = val.trim();
                        debugPrint('name= $name');
                      });
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFAAE6EE)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD0D5DD)),
                      ),
                      hintText: "不能輸入表情符號喔～",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      //isDense: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 183,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width > 400 ? 350 : 300,
            height: 56,
            child: ElevatedButton(
              //If onPressed and onLongPress callbacks are null, then the button will be disabled.
              onPressed: () {
                debugPrint('下一步');
              },
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: name.isNotEmpty
                    ? const Color(0xFF33C2CF)
                    : const Color(0xFFE4E7EC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(68.0),
                ),
              ),
              child: Text(
                '下一步',
                style: TextStyle(
                  color:
                      name.isNotEmpty ? Colors.white : const Color(0xFFB5BEBE),
                  fontFamily: 'Noto Sans TC',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
