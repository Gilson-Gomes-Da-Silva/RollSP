import 'package:flutter/material.dart';
import 'package:roll_sp_app/main.dart';
import 'package:roll_sp_app/quiz.dart';

void Next() {
  runApp(const MaterialApp(
    title: "RollSP",
    home: acervo(),
  ));
}

class acervo extends StatelessWidget {
  const acervo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 19, 19, 19),
            body: Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 37 / 400),
                child: const Image(
                    image: AssetImage('assets/images/backgroundRollSP2.jpg')),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8,
                      left: MediaQuery.of(context).size.width * 15 / 292,
                      right: MediaQuery.of(context).size.width * 15 / 292,
                      bottom: MediaQuery.of(context).size.height / 12),
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 2 / 63,
                      left: MediaQuery.of(context).size.width * 3 / 73,
                      right: MediaQuery.of(context).size.width * 3 / 73),
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 100),
                              height:
                                  MediaQuery.of(context).size.height * 13 / 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 90,
                                  right: MediaQuery.of(context).size.width / 35,
                                  left: MediaQuery.of(context).size.width / 30),
                              child: Column(
                                children: [
                                  const Text('A Fundação de Santos'),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                8),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Quiz()),
                                        );
                                      },
                                      child: const Text(
                                        'Abrir',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.black)),
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 100),
                              height:
                                  MediaQuery.of(context).size.height * 13 / 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 90,
                                  right: MediaQuery.of(context).size.width / 35,
                                  left: MediaQuery.of(context).size.width / 30),
                              child: Column(
                                children: [
                                  const Text('Poluição, um problema de todos!'),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                8),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Quiz()),
                                        );
                                      },
                                      child: const Text(
                                        'Abrir',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.black)),
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.height / 100),
                              height:
                                  MediaQuery.of(context).size.height * 13 / 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 90,
                                  right: MediaQuery.of(context).size.width / 35,
                                  left: MediaQuery.of(context).size.width / 30),
                              child: Column(
                                children: [
                                  const Text('Ameaças à biodiversidade'),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                8),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Quiz()),
                                        );
                                      },
                                      child: const Text(
                                        'Abrir',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.black)),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ))),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 93 / 100,
                    left: MediaQuery.of(context).size.width * 3 / 100),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainApp()),
                    );
                  },
                  child: const Text(
                    '<          Voltar',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                ),
              )
            ])));
  }
}
