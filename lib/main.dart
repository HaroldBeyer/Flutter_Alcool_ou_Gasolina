import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa utilizar álcool",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontFamily: "Big Shoulders Display"),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(60)),
                  child: FlatButton(
                    child: Text(
                      "Calcular novamente",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 25,
                          fontFamily: "Big Shoulders Display"),
                    ),
                    onPressed: () {
                      print("Apertou...");
                    },
                  ),
                )
              ],
            ),
          ),
          Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
          Input(ctrl: alcCtrl, label: "Álcool"),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60)),
            child: FlatButton(
              child: Text(
                "Calcular",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display"),
              ),
              onPressed: () {
                print("Apertou...");
              },
            ),
          )
        ],
      ),
    );
  }
}
