import 'package:flutter/material.dart';
import 'package:roll_sp_app/main.dart';
import 'package:roll_sp_app/acervo.dart';
import 'package:roll_sp_app/quiz.dart';

void result() {
  runApp(const MaterialApp(
    title: "RollSP",
    home: resultado(),
  ));
}

int Acertos = 3;
int Total = 3;
int Erros = Total - Acertos;
String Roll = 'A Fundação de Santos';
String Mensagem = 'Parabéns!';
String Incentivo = 'Continue Assim!';

class resultado extends StatelessWidget {
  const resultado({super.key});

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
                    top: MediaQuery.of(context).size.height / 6,
                    left: MediaQuery.of(context).size.width * 15 / 292,
                    right: MediaQuery.of(context).size.width * 15 / 292,
                    bottom: MediaQuery.of(context).size.height / 12),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 2 / 63,
                    left: MediaQuery.of(context).size.width * 3 / 73,
                    right: MediaQuery.of(context).size.width * 3 / 73),
                color: Colors.white,
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      Mensagem,
                      style: TextStyle(fontSize: 30),
                    )),
                    Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                              color: Colors.black),
                          child: Center(
                            child: Text("$Acertos/$Total",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                )),
                          )),
                    ),
                    Row(
                      children: [
                        const Text('Roll: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(Roll)
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Acertos: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("$Acertos")
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Erros: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("$Erros")
                      ],
                    ),
                    Container(child: Center(child: Text(Incentivo))),
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 5 / 170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black),
                            color: Colors.black),
                        child: Center(
                            child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Quiz()));
                          },
                          child: const Text("Iniciar novo Roll",
                              style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.black)),
                        ))),
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black),
                            color: Colors.black),
                        child: Center(
                            child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainApp()));
                          },
                          child: const Text("Voltar Para o Menu",
                              style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.black)),
                        ))),
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 5 / 170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black),
                            color: Colors.black),
                        child: Center(
                            child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const acervo()),
                            );
                          },
                          child: const Text("Ir Para o Acervo",
                              style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.black)),
                        ))),
                  ],
                ),
              )
            ])));
  }
}
