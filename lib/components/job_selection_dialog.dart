import 'package:flutter/material.dart';
import 'package:florish_app/components/job_list_content.dart';

showJobSelectionDialog(BuildContext context) {
  int _selectedJob = 0;

  // Init
  AlertDialog dialog = AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '請選擇你的職業',
          style: TextStyle(
            color: Color(0xFF33C2CF),
            fontFamily: 'Noto Sans TC',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Image.asset('images/job_selection_close.png'),
      ],
    ),
    actions: <Widget>[
      SizedBox(
        width: 330,
        height: 56,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: _selectedJob > 0
                ? const Color(0xFF33C2CF)
                : const Color(0xFFE4E7EC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(68.0),
            ),
          ),
          child: Text(
            "確認",
            style: TextStyle(
              color: _selectedJob > 0 ? Colors.white : const Color(0xFFB5BEBE),
              fontFamily: 'Noto Sans TC',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    ],
    content:
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
      return SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    //physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: jobList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          RadioListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: Text(
                                jobList[index].title,
                                style: const TextStyle(
                                  color: Color(0xFF667C85),
                                  fontFamily: 'Noto Sans TC',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: index,
                              groupValue: _selectedJob,
                              onChanged: (value) {
                                setState(() => _selectedJob = index);
                                debugPrint('_selectedJob: $_selectedJob');
                              }),
                          SizedBox(
                            height: 16,
                            child: Center(
                              child: Container(
                                color: Color(0xFFD9D9D9),
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    }),
  );

  // Show the dialog (showDialog() => showGeneralDialog())
  showGeneralDialog(
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Wrap();
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return Transform(
        transform: Matrix4.translationValues(
          0.0,
          (1.0 - Curves.easeInOut.transform(anim1.value)) * 400,
          0.0,
        ),
        child: dialog,
      );
    },
    transitionDuration: const Duration(milliseconds: 400),
  );
}
