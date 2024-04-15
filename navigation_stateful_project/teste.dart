import 'package:flutter/material.dart';

void main() {
  runApp(const App(
    key: Key("key_do_app"),
    titulo: "Home Page",
  ));
}

class App extends StatelessWidget {
  // Named Parameters
  final String titulo;
  const App({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,                               // Cor do texto branco
          ),
        ),

        // backgroundColor: Color.fromRGBO(125, 96, 161, 1),     // Cor de fundo usando RGB
        backgroundColor: const Color(0xFF7D60A1),              // Cor de fundo usando hexadecimal
                                                                   // 7D60A1 --> cor
                                                                   // 0xFF   --> opacidade 
        // leading: const Icon(Icons.menu),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Texto 1
            const Text(
              "Every Purchase",              // Escrita
              style: TextStyle(
                fontWeight: FontWeight.bold, // Definindo negrito
                fontSize: 40,                // Aumentando o tamanho da fonte
              ),
            ),

            // Texto 2
            const Text(
              "Will be Made",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),

            // Texto 3
            const Text(
              "With Pleasure",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),

            const SizedBox(height: 10), // Espaçamento vertical em pixels

            // Texto 4
            const Text(
              "Buy and Enjoy",
              style: TextStyle(
                color: Color(0xFF7D60A1), // Cor do texto
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 20), // Espaçamento vertical em pixels

            // Botão 1 --> cor roxa
            SizedBox(
              width: 280, // Aumenta a largura do botão para 200 pixels
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7D60A1), // Definindo a cor de fundo do botão
                ),
                child: const Text(
                  "Start Shopping",        // Escrita do texto
                  style: TextStyle(
                    fontSize: 13,          // Fonte do botão
                    color: Colors.white, // Cor do texto do botão
                    ),
                ),
              ),
            ),

            const SizedBox(height: 10), // Espaçamento vertical em pixels

            // Alinhar os dois botões 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // Botão 2 --> cor branca e contorno roxo
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color(0xFF7D60A1),  // Definindo a cor do contorno
                      width: 1,                    // Definindo a largura do contorno
                    ),
                    elevation: 0, // Removendo a sombra do botão
                  ),
                  child: const Text(
                    "Learn More",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black, 
                    ),
                  ),
                ),

                // Botão 3 --> cor branca e contorno roxo
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color(0xFF7D60A1),  
                      width: 1,                    
                    ),
                    elevation: 0, 
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black, 
                    ),
                  ),
                ),
              ],
            )
          
          ],
        ),
      ),

      // Criação do ícone de casa 
      floatingActionButton: FloatingActionButton(
        onPressed: () {},                 
        backgroundColor: const Color(0xFF7D60A1),  // Cor de fundo roxa
        foregroundColor: Colors.white,             // Cor do ícone branca
        elevation: 0.0,                              // Remover a sombra

        child: const Icon(
          Icons.home,                                // Ícone de casa
          size: 32,                                  // Tamanho do ícone (ajuste conforme necessário)
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }
}
