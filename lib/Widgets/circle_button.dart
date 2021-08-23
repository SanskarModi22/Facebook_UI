import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  // const CircleButton({key}) : super(key: key);
  final IconData iconData;
  final Function onPressed;
  final double iconSize;

  const CircleButton(
      {Key key,
      @required this.iconData,
      @required this.onPressed,
      @required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(iconData),
        iconSize: iconSize,
        onPressed: onPressed,
      ),
    );
  }
}
