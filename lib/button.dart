import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Button extends StatelessWidget {
 final Function konvertHandler;
Button({Key key, @required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
          onPressed: konvertHandler,
          color: Colors.amber[600],
          textColor: Colors.white,
          child: const Text('KONVERSI'),
      ),
    );
  }
}