import 'package:flutter/material.dart';

class UntapButton extends StatelessWidget {
  var icon;
  UntapButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 37,
          color: Colors.white,
        ),
        decoration: const BoxDecoration(
          color: Color(0xff4e5851),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xff26282c),
              blurRadius: 15.0,
              spreadRadius: 5.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
      ),
    );
  }
}

class OffPowerButton extends StatelessWidget {
  var icon;
  OffPowerButton({this.icon});
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
        decoration: BoxDecoration(
            color: Colors.green.shade700,
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Color(0xff26282c),
                offset: Offset(0.0, 0.0),
                blurRadius: 15.0,
                spreadRadius: 5.0,
              )
            ]),
      ),
    );
  }
}
