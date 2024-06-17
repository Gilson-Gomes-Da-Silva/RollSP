import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roll_sp_app/result.dart';

void questionario() {
  runApp(const MaterialApp(
    title: "RollSP",
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  int numQuestao = 1;
  int Acertos = 0;
  String Pergunta = '''1- Quem fundou a cidade de Santos?''';
  String OpcaoA = 'A) Martim Afonso de Sousa';
  String OpcaoB = 'B) Brás Cubas';
  String OpcaoC = 'C) Duarte Coelho';
  String OpcaoD = 'D) Pedro Álvares Cabral';
  bool AltA = false;
  bool AltB = false;
  bool AltC = false;
  bool AltD = false;

  void Recarregar() {
    setState(() {
      numQuestao++;
    });
  }

  void Acerto() {
    if ((numQuestao == 0 && AltB) ||
        (numQuestao == 1 && AltB) ||
        (numQuestao == 2 && AltC)) {
      Acertos++;
    }
    AltA = false;
    AltB = false;
    AltC = false;
    AltD = false;
    Recarregar();
    if (numQuestao == 1) {
      Pergunta = '''1- Quem fundou a cidade de Santos?''';
      OpcaoA = 'A) Martim Afonso de Sousa';
      OpcaoB = 'B) Brás Cubas';
      OpcaoC = 'C) Duarte Coelho';
      OpcaoD = 'D) Pedro Álvares Cabral';
    } else if (numQuestao == 2) {
      Pergunta = '''2- Em que ano foi fundada a cidade de Santos?''';
      OpcaoA = 'a) 1500';
      OpcaoB = 'b) 1546';
      OpcaoC = 'c) 1600';
      OpcaoD = 'd) 1630';
    } else if (numQuestao == 3) {
      Pergunta =
          '''3- Qual produto agrícola foi fundamental para a prosperidade de Santos durante o período colonial?''';
      OpcaoA = 'a) Algodão';
      OpcaoB = 'b) Milho';
      OpcaoC = 'c) Café';
      OpcaoD = 'd) Cana-de-açúcar';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          body: Stack(
            children: <Widget>[
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
                  decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black),
                                color: Colors.white),
                  child: Column(children: <Widget>[
                    const Center(
                        child: Text('A Fundação de Santos',
                            style: TextStyle(fontSize: 30))),
                    Container(
                        height: MediaQuery.of(context).size.height * 13 / 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            right: MediaQuery.of(context).size.width / 35,
                            left: MediaQuery.of(context).size.width / 30),
                        child: const SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                                '''Santos é uma das cidades mais antigas do Brasil, situada no litoral do estado de São Paulo. Sua fundação remonta ao século XVI, quando foi estabelecida por Brás Cubas, um explorador português. Em 1546, Brás Cubas fundou um hospital e uma capela, que foram os primeiros edifícios construídos na região. A cidade rapidamente se tornou um importante porto devido à sua localização estratégica, facilitando o comércio entre o Brasil e a Europa.

Durante o período colonial, Santos prosperou com a exportação de açúcar, café e outros produtos agrícolas. No século XIX, a cidade também se destacou na luta contra a escravidão, sendo um dos principais centros do movimento abolicionista. A ferrovia São Paulo Railway, inaugurada em 1867, conectava Santos a Jundiaí e foi fundamental para o escoamento da produção cafeeira do interior paulista até o porto.

Hoje, Santos é conhecida por suas praias, seu porto movimentado e seu rico patrimônio histórico. A cidade continua a ser um ponto vital para o comércio e a cultura no estado de São Paulo.'''))),
                    Container(
                        height: MediaQuery.of(context).size.height * 32 / 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                        ),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            right: MediaQuery.of(context).size.width / 35,
                            left: MediaQuery.of(context).size.width / 30),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 5 / 72 -
                                MediaQuery.of(context).size.height / 50),
                        child: Column(
                          children: [
                            Center(child: Text(Pergunta)),
                            Column(children: [
                              Text(OpcaoA),
                              Text(OpcaoB),
                              Text(OpcaoC),
                              Text(OpcaoD),
                            ]),
                            Container(
                                child: Column(
                              children: [
                                const Text('Resposta',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text('A'),
                                          IconButton(
                                              onPressed: () {
                                                AltA = true;
                                              },
                                              icon: Icon(
                                                Icons.check_box_outline_blank,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text('B'),
                                          IconButton(
                                              onPressed: () {
                                                AltB = true;
                                              },
                                              icon: Icon(
                                                Icons.check_box_outline_blank,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text('C'),
                                          IconButton(
                                              onPressed: () {
                                                AltC = true;
                                              },
                                              icon: Icon(
                                                Icons.check_box_outline_blank,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          const Text('D'),
                                          IconButton(
                                              onPressed: () {
                                                AltD = true;
                                              },
                                              icon: Icon(
                                                Icons.check_box_outline_blank,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 5 / 170),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: Colors.black),
                      child: TextButton(
                        onPressed: () {
                          Acerto();
                          if (numQuestao >= 4) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const resultado()),
                            );
                          }
                        },
                        child: const Text(
                          'Próxima Questão',
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black),
                        ),
                      ),
                    )
                  ]))
            ],
          )),
    );
  }
}
