import 'package:flutter/material.dart';

class LogoPpal extends StatelessWidget {
  final String titulo;

  const LogoPpal({Key? key, required this.titulo}) : super(key: key);

  // const LogoPpal({Key? key,
  // required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //Color del container
        width: 250,

        // color: Colors.blue,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(
              height: 10,
            ),
            Text(
              this.titulo,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
