import 'package:flutter/material.dart';

class BtnAzul extends StatelessWidget {
//  final raisedButtonStyle = ElevatedButton.styleFrom(
//     onPrimary: Colors.white,
//     primary: Colors.blue,
//     minimumSize: Size(88, 36),
//     padding: EdgeInsets.symmetric(horizontal: 16),
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(20)),
//     ),
//   );

  final String text;
  final Function() onPressed;

  const BtnAzul({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: this.onPressed,
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.blue,
          minimumSize: Size(88, 36),
          elevation: 5,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(this.text),
          ),
        ));
  }
}
