import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double progressValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: LinearProgressIndicator(
      backgroundColor: Colors.cyanAccent,
      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
      value: progressValue,
    ));
  }
}
