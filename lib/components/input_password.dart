import 'package:flutter/material.dart';

class PaswwordField extends StatefulWidget {
  final IconData icon;
  final String hint;

  PaswwordField({this.icon, this.hint});
  @override
  _PaswwordFieldState createState() => _PaswwordFieldState();
}

bool invisible = true;
bool obscure = true;

class _PaswwordFieldState extends State<PaswwordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFBC7C7C7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            child: Icon(
              widget.icon,
              size: 20,
              color: Color(0xFFBB9B9B9),
            ),
          ),
          Expanded(
            child: TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                hintText: widget.hint,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      invisible = !invisible;
                      obscure = !obscure;
                    });
                  },
                  child:
                      Icon(invisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
