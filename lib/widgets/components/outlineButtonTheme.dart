// box.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A simple blue 30x30 box.
class OutlinedButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon({
  Key key, 
  @required VoidCallback onPressed, 
  VoidCallback onLongPress, 
  ButtonStyle style, 
  FocusNode focusNode, 
  bool autofocus, 
  Clip clipBehavior, 
  @required Widget icon, 
  @required Widget label
});
  }
}
