// home_Screen.dart <-Snake classe.
//homeScreen.dart <-Camel clsse.

import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const colorBgAppBar = Colors.blueGrey;
  static const colorTxtAppBar = Color.fromARGB(255, 255, 255, 255);
  static const colorShadAppBar = Colors.red;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int contador = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi app"),
        backgroundColor: HomeScreen.colorBgAppBar,
        shadowColor: HomeScreen.colorShadAppBar,
        centerTitle: false,
        titleTextStyle:
            const TextStyle(color: HomeScreen.colorTxtAppBar, fontSize: 30),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(
            "images/icono.jpg",
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Veces que has hecho clic: ",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: "Comic Sans"),
              ),
              Text(
                contador.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: "Comic Sans"),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              contador++;
              setState(() {});
              // print("Hola cracks");
            }),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              contador--;
              setState(() {});
              // print("Hola cracks");
            }),
      ]),
    );
  }
}
