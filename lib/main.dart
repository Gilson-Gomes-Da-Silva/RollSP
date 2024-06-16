import 'package:flutter/material.dart';
import 'package:roll_sp_app/acervo.dart';
import 'package:roll_sp_app/quiz.dart';

void main() {
  runApp(const MaterialApp(
    title: "RollSP",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 19, 19, 19),
            body: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: const Color.fromARGB(255, 201, 161, 136),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 25 / 200),
                child: const Image(
                    image: AssetImage('assets/images/backgroundRollSP1.jpg')),
              ),
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 9777 / 10001,
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 1 / 3),
                      child: Row(children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width *
                                    7 /
                                    548),
                            width:
                                MediaQuery.of(context).size.width * 139 / 292,
                            height:
                                MediaQuery.of(context).size.width * 121 / 504,
                            color: Colors.black,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Quiz()),
                                  );
                                },
                                child: const Column(
                                  children: [
                                    Text('Iniciar um',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30)),
                                    Text('Roll',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 45))
                                  ],
                                ))),
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 139 / 292,
                            height:
                                MediaQuery.of(context).size.width * 121 / 504,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width *
                                    7 /
                                    548),
                            color: Colors.black,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const acervo()),
                                  );
                                },
                                child: const Column(children: [
                                  Text('Verificar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30)),
                                  Text('Acervo',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 45))
                                ])))
                      ])))
            ])));
  }
}
