import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String textButton;
  final String textButton_2;

  const Labels({
    Key? key,
    required this.ruta,
    required this.textButton,
    required this.textButton_2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.textButton_2,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                  fontWeight: FontWeight.w300)),
          //Una separacion
          SizedBox(height: 5),
          GestureDetector(
            child: Text(
              this.textButton,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          )
        ],
      ),
    );
  }
}
