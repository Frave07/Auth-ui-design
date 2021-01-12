import 'package:flutter/material.dart';


class ButtonLeft extends StatelessWidget
{

  final double top;
  final double left;
  final Function onPressed;
  final String texto;
  final bool check;

  const ButtonLeft({ this.top, this.left, this.onPressed, @required this.texto, this.check = true });

 @override
 Widget build(BuildContext context)
 {
    return Positioned(
      top: top,
      left: left,
      child: Transform.rotate(
        angle: 29.85,
        child: check ? Column(
          children: [
            FlatButton(
              onPressed: onPressed,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Text( texto, style: TextStyle(color: Colors.white, letterSpacing: 2.0, fontSize: 18, fontWeight: FontWeight.bold))
            ),
            Icon(Icons.stop_circle, color: Colors.white, size: 10)
          ],
        )
        : FlatButton(
            onPressed: onPressed,
            child: Text(texto, style: TextStyle(color: Colors.white, letterSpacing: 2.0, fontSize: 18 ))
          )
      )
    );
  }
}