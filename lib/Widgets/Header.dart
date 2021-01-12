import 'package:flutter/material.dart';


class HeaderLeftLogin extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderLoginPainter(),
        ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
      final paint = new Paint();
      paint.color = Color(0xff0057ff);
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 5;

      final path = new Path();
      path.lineTo( size.width * 0.3, 0);
      path.quadraticBezierTo( size.width * 0.14 , size.height * 0.01, size.width * 0.15, size.height * 0.15);
      path.lineTo( size.width * 0.15, size.height * 0.2);
      path.quadraticBezierTo( size.width * 0.2, size.height * 0.25 , size.width * 0.15, size.height * 0.3);
      path.lineTo(size.width * 0.15, size.height * 0.9);
      path.quadraticBezierTo( size.width * 0.14, size.height * 0.99 , size.width * 0.3, size.height * 1.0);
      path.lineTo( 0, size.height * 1.0);

      canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}

class HeaderLeftRegister extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderRegisterPainter(),
        ),
    );
  }
}

class _HeaderRegisterPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
      final paint = new Paint();
      paint.color = Color(0xff0057ff);
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 5;

      final path = new Path();
      path.lineTo( size.width * 0.3, 0);
      path.quadraticBezierTo( size.width * 0.14 , size.height * 0.01, size.width * 0.15, size.height * 0.15);
      path.lineTo( size.width * 0.15, size.height * 0.5);
      path.quadraticBezierTo( size.width * 0.2, size.height * 0.43 , size.width * 0.15, size.height * 0.37);
      path.lineTo(size.width * 0.15, size.height * 0.9);
      path.quadraticBezierTo( size.width * 0.14, size.height * 0.99 , size.width * 0.3, size.height * 1.0);
      path.lineTo( 0, size.height * 1.0);

      canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}