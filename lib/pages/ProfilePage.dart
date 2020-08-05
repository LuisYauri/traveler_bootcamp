import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int siguiendo = 142;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              cardProfile(),
              SizedBox(
                height: 20,
              ),
              exitBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardProfile() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back_22.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/avatar.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'José La Rosa',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
          Text('Lima, Perú',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              )),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
            color: Color(0xff52E4C4),
            child: Text(
              'Seguir',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color(0xff286759),
                letterSpacing: 2,
              ),
            ),
            onPressed: () {
              setState(() {
                siguiendo++;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              subCardText(title: '142', subtitle: 'Publicación'),
              subCardText(title: '142', subtitle: 'Seguidores'),
              subCardText(title: '$siguiendo', subtitle: 'Siguiendo'),
            ],
          ),
        ],
      ),
    );
  }

  Widget subCardText({String title, String subtitle}) {
    return Column(
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        Text(
          '$subtitle',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget exitBtn() {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
      color: Color(0xff52E4C4),
      child: Text(
        'Salir',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Color(0xff286759),
          letterSpacing: 2,
        ),
      ),
      onPressed: () {
        setState(() {
          Navigator.pop(context);
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
