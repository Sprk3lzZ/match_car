import 'package:flutter/material.dart';

class OutlinedBtn extends StatefulWidget {
  final String btnText;
  OutlinedBtn({this.btnText});
  @override
  _OutlinedBtnState createState() => _OutlinedBtnState();
}

class _OutlinedBtnState extends State<OutlinedBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFB40284A),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
            color: Color(0xFFB40284A),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
