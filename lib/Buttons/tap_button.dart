import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  var icon;
  TapButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 37,
          color: Colors.grey.shade900,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffefaf0b),
          boxShadow: [
            BoxShadow(
              color: Color(0xff4e5851),
              offset: Offset(0.0, 0.0),
              blurRadius: 15.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

class PowerButton extends StatelessWidget {
  var icon;

  PowerButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          color: Colors.white,
          size: 37,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              color: Color(0xff4e5851),
              blurRadius: 15.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
