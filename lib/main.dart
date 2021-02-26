import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'result.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
    
}
class _MyAppState extends State<MyApp> {
//controller
TextEditingController etInput = new TextEditingController();
//variabel
double _input = 0;
double _kelvin = 0;
double _reamur = 0;
  final inputController = TextEditingController() ;

void perhitungan(){ 
  setState((){
    _input = double.parse(etInput.text);
    _kelvin = _input + 273;
    _reamur = (4/5) * _input;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          leading: new Icon(Icons.home),
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
            Input(etInput: etInput),
            Result(kelvin: _kelvin, reamur: _reamur),
            Button(konvertHandler: perhitungan),
            ],
          ),
        ),
      )
    );
  }
}