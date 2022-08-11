import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupFlowInfo extends StatefulWidget {
  const SignupFlowInfo({Key? key, required this.userName}) : super(key: key);

  final String userName;

  @override
  State<SignupFlowInfo> createState() => _SignupFlowInfoState();
}

enum Gender {
  none,
  male,
  female,
  other,
}

class _SignupFlowInfoState extends State<SignupFlowInfo> {
  TextEditingController dateCtl = TextEditingController();
  Gender selectedGender = Gender.none;
  late DateTime dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF8AE2CA),
            Color(0xFF1B80DB),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color(0x00000000),
          elevation: 0.0,
          leadingWidth: 70,
          leading: const Center(
            child: Text(
              '<  返回',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          title: const Text(
            '註冊',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'SF Pro Text',
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_on.png'),
                  Image.asset('images/signup_flow_dot_on.png'),
                  Image.asset('images/signup_flow_line_off.png'),
                  Image.asset('images/signup_flow_dot_off.png'),
                  Image.asset('images/signup_flow_line_off.png'),
                  Image.asset('images/signup_flow_dot_off.png'),
                  Image.asset('images/signup_flow_line_off.png'),
                  Image.asset('images/signup_flow_dot_off.png'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                    MediaQuery.of(context).size.width > 400 ? 40 : 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '個人稱呼',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '基本資料',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '電子信箱',
                      style: TextStyle(
                        color: Color(0xFFAAE6EE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '設定密碼',
                      style: TextStyle(
                        color: Color(0xFFAAE6EE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '信箱驗證',
                      style: TextStyle(
                        color: Color(0xFFAAE6EE),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              // Each step container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ${widget.userName}',
                      style: const TextStyle(
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
                      '你的性別是',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                                debugPrint('selectedGender: $selectedGender');
                              });
                            },
                            child: selectedGender == Gender.male
                                ? SvgPicture.asset(
                              'images/gender_male_selected.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )
                                : SvgPicture.asset(
                              'images/gender_male_default.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                                debugPrint('selectedGender: $selectedGender');
                              });
                            },
                            child: selectedGender == Gender.female
                                ? SvgPicture.asset(
                              'images/gender_female_selected.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )
                                : SvgPicture.asset(
                              'images/gender_female_default.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.other;
                                debugPrint('selectedGender: $selectedGender');
                              });
                            },
                            child: selectedGender == Gender.other
                                ? SvgPicture.asset(
                              'images/gender_other_selected.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )
                                : SvgPicture.asset(
                              'images/gender_other_default.svg',
                              width: MediaQuery.of(context).size.width >
                                  400
                                  ? 106
                                  : 96,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      '請設定你的生日',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextFormField(
                      controller: dateCtl,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(FocusNode());

                        date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)))!;

                        dateOfBirth = date;
                        dateCtl.text =
                        "${date.year.toString()} / ${date.month.toString().padLeft(2, '0')} / ${date.day.toString().padLeft(2, '0')}";
                        //dateCtl.text = date.toIso8601String();
                      },
                      onChanged: (val) {
                        setState(() {
                          debugPrint('DOB= $val');
                        });
                      },
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFAAE6EE)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFD0D5DD)),
                        ),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        //isDense: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      '請選擇你的職業',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Noto Sans TC',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
