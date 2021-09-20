import 'package:flutter/material.dart';
import 'package:smart_detector/Buttons/un_tap_button.dart';
import 'package:smart_detector/Buttons/tap_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var iconStraight = Icons.keyboard_arrow_up;
  var iconLeft = Icons.keyboard_arrow_left;
  var iconRight = Icons.keyboard_arrow_right;
  var iconBack = Icons.keyboard_arrow_down;
  var iconStart = Icons.play_arrow;
  var iconPause = Icons.pause;

// Bool
  bool isStart = false;
  bool buttonStart = false;
  bool buttonStraight = false;
  bool buttonLeft = false;
  bool buttonRight = false;
  bool buttonBack = false;

  // Functions

  void pressStart() {
    setState(() {
      isStart = false;
      buttonStart = false;
      buttonStraight = false;
      buttonLeft = false;
      buttonRight = false;
      buttonBack = false;
    });
  }

  void pressStop() {
    setState(() {
      isStart = true;
      buttonStart = true;
      buttonStraight = false;
      buttonLeft = false;
      buttonRight = false;
      buttonBack = false;
    });
  }

  void pressStright() {
    setState(() {
      buttonStraight = true;
      buttonLeft = false;
      buttonRight = false;
      buttonBack = false;
    });
  }

  void pressLeft() {
    setState(() {
      buttonStraight = false;
      buttonLeft = true;
      buttonRight = false;
      buttonBack = false;
    });
  }

  void pressRight() {
    setState(() {
      buttonStraight = false;
      buttonLeft = false;
      buttonRight = true;
      buttonBack = false;
    });
  }

  void pressBack() {
    setState(() {
      buttonStraight = false;
      buttonLeft = false;
      buttonRight = false;
      buttonBack = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202226),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xff202226),
        elevation: 0.0,
        child: Text(
          '                Developed under the instructions of: \n \n                            instagram.com/DholaSain\n\n',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isStart
                ? GestureDetector(
                    onTap: pressStright,
                    child: buttonStraight
                        ? TapButton(
                            icon: iconStraight,
                          )
                        : UntapButton(
                            icon: iconStraight,
                          ),
                  )
                : UntapButton(
                    icon: iconStraight,
                  ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isStart
                    ? GestureDetector(
                        // Left BUTTON
                        onTap: pressLeft,
                        child: buttonLeft
                            ? TapButton(
                                icon: iconLeft,
                              )
                            : UntapButton(
                                icon: iconLeft,
                              ),
                      )
                    : UntapButton(
                        icon: iconLeft,
                      ),
                const SizedBox(
                  width: 5,
                ),
                isStart
                    ? GestureDetector(
                        onTap: pressStart,
                        child: PowerButton(
                          icon: iconPause,
                        ),
                      )
                    : GestureDetector(
                        onTap: pressStop,
                        child: OffPowerButton(
                          icon: iconStart,
                        ),
                      ),
                const SizedBox(
                  width: 5,
                ),
                isStart
                    ? GestureDetector(
                        // Right BUTTON
                        onTap: pressRight,
                        child: buttonRight
                            ? TapButton(
                                icon: iconRight,
                              )
                            : UntapButton(
                                icon: iconRight,
                              ),
                      )
                    : UntapButton(
                        icon: iconRight,
                      ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            isStart
                ? GestureDetector(
                    onTap: pressBack,
                    child: buttonBack
                        ? TapButton(
                            icon: iconBack,
                          )
                        : UntapButton(
                            icon: iconBack,
                          ),
                  )
                : UntapButton(
                    icon: iconBack,
                  ),
          ],
        ),
      ),
    );
  }
}
