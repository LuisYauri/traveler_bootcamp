import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: SizedBox(
                height: 200,
              ),
            ),
            blockCenter(),
            blockEnd(),
          ],
        ),
      ),
    );
  }

  Widget blockCenter() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TRAVELER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' .',
              style: TextStyle(
                color: Color(0xff52E4C4),
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          'Comparte el mundo y conviértete en un viajero increíble',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget blockEnd() {
    return Column(
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
          color: Color(0xff52E4C4),
          child: Text(
            'Ingresar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xff286759),
              letterSpacing: 2,
            ),
          ),
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(height: 50),
        Text(
          'Nuevo miembro',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
