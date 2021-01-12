import 'package:flutter/material.dart';

import 'package:auth_ui/Widgets/ButtonLeft.dart';
import 'package:auth_ui/Widgets/Header.dart';


class LoginPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(top:0),
          physics: BouncingScrollPhysics(),
          children: [

            Stack(
              children: [

                HeaderLeftLogin(),


                ButtonLeft(texto: 'SIGN IN', top: 160, left: -20),

                ButtonLeft(texto: 'SIGN UP', top: 300, left: -28, check: false, onPressed: () => Navigator.pushReplacementNamed(context, 'register')),

                ButtonLeft(texto: 'FORGOT PASSWORD', top: 500, left: -85, check: false ),

                Positioned(
                  top: 150,
                  left: 90,
                  child: Text('Welcome back my Frave!', style: TextStyle(color: Colors.black, fontSize: 25))
                ),

                _CajaTexto(titulo: 'Email Address', icono: Icons.email_outlined, isPassword: false ,top: 220),

                _CajaTexto(titulo: 'Password', icono: Icons.lock, isPassword: true, top: 290),

                _CirclePurple(),

                _ButtonBlue(),

                Positioned(
                  top: 520,
                  left: 150,
                  child: Text('Or sign in with', style: TextStyle(color: Colors.black, fontSize: 20))
                ),

                _FbGmail()

              ],
            ),

          ],
        )
     );
  }
}

class _FbGmail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 560,
      left: 150,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.grey[400])
              ]
            ),
            child: Image.asset('Assets/fb.png', height: 10),
          ),
          SizedBox(width: 30),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.grey[400])
              ]
            ),
            child: Image.asset('Assets/gmail.png', height: 10),
          ),
        ],
      ),
    );
  }
}

class _ButtonBlue extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 410,
      right: 30,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff0057ff),
          borderRadius: BorderRadius.circular(10)
        ),
        child: FlatButton(
          child: Icon(Icons.arrow_right_alt, color: Colors.white, size: 28),
          onPressed: null,
        ),
      ),
    );
  }
}

class _CirclePurple extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 370,
      right: 0,
      child: Container(
        height: 120,
        width: 60,
        decoration: BoxDecoration(
          color: Color(0xffC299FC),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(100), bottomLeft: Radius.circular(100))
        ),
      ),
    );
  }
}

class _CajaTexto extends StatelessWidget {

  final bool isPassword;
  final String titulo;
  final IconData icono;
  final double top;

  const _CajaTexto({ this.isPassword, this.titulo, this.icono, this.top});
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 90,
      child: Container(
        width: 280,
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            prefixIcon: Icon(icono),
            hintText: titulo
          ),
        )
      )
    );
  }
}