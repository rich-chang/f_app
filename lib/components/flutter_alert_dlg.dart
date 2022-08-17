import 'package:flutter/material.dart';

class Exercise {
  String name = '';
  Exercise({required this.name});
}

class AlertDlgSample extends StatefulWidget {
  const AlertDlgSample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AlertDlgSampleState createState() => _AlertDlgSampleState();
}

class _AlertDlgSampleState extends State<AlertDlgSample> {
  int _counter = 0;
  List<Exercise> exercises = [
    Exercise(name: 'A'),
    Exercise(name: 'B'),
    Exercise(name: 'C'),
    Exercise(name: 'D'),
    Exercise(name: 'E'),
    Exercise(name: 'F'),
    Exercise(name: 'G')
  ];

  int _selected = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      actions: <Widget>[
        FlatButton(
          child: const Text('CANCEL'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            //widget.onCancel();
          },
        ),
        FlatButton(
          child: const Text('OK'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            //widget.onOk();
          },
        ),
      ],
      content: SingleChildScrollView(
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
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RadioListTile(
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text(exercises[index].name),
                          value: index,
                          groupValue: _selected,
                          onChanged: (value) {
                            setState(() {
                              _selected = index;
                            });
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
    );
  }
}
