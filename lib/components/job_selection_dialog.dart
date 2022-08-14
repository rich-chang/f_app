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
    content:SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Divider(),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.4,
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: jobListWidget.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RadioListTile(
                        title: Text(jobList[index].title),
                        value: index,
                        groupValue: _selectedJob,
                        onChanged: (value) {
                        });
                  }),
            ),
            Divider(),
            TextField(
              autofocus: false,
              maxLines: 1,
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "hint",
              ),
            ),
          ],
        ),
      ),
    ),
    actions: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
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
      ),
    ],
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
    transitionDuration: Duration(milliseconds: 400),
  );

  // Generate some dummy data
  final List dummyList = List.generate(1000, (index) {
    return {
      "id": index,
      "title": "This is the title $index",
      "subtitle": "This is the subtitle $index"
    };
  });

  final List<Widget> jobListWidget2 = List.generate(jobList.length, (index) {
    return ListTile(
      title: Text(
        jobList[index].title,
        style: const TextStyle(
          color: Color(0xFF667C85),
          fontFamily: 'Noto Sans TC',
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  });
}

List<Widget> jobListWidget = <Widget>[
  ListTile(
    title: Text(
      jobList[0].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[1].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[2].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[3].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[4].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[5].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[6].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[7].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[8].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[9].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  ListTile(
    title: Text(
      jobList[10].title,
      style: const TextStyle(
        color: Color(0xFF667C85),
        fontFamily: 'Noto Sans TC',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
];
