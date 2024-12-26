import 'package:ds_consultoria/tela_cliente.dart';
import 'package:ds_consultoria/tela_contato.dart';
import 'package:ds_consultoria/tela_empresa.dart';
import 'package:ds_consultoria/tela_servico.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Image.asset('images/dsconsultoria_sombra.png',
                        width: 280)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaEmpresa(),));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: const Color(0xff00d7f3),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: 70,
                        ),
                        Text(
                          "EMPRESA",
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaServico(),));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.lightbulb,
                          size: 70,
                        ),
                        Text(
                          "SERVIÇOS",
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaCliente(),));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.language,
                          size: 70,
                        ),
                        Text(
                          "CLIENTES",
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaContato(),));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                    ),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.mail,
                          size: 70,
                        ),
                        Text(
                          "CONTATO",
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
