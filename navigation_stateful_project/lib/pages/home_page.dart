import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Cabeçalho
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),


      // Corpo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Texto 1
            const Text(
              "Listagem e Navegação",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),

            // Texto 2
            const Text(
              "Uma aplicação para",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            // Texto 3
            const Text(
              "gerência de estado e",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            // Texto 4
            const Text(
              "navegação com Flutter",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            // Botão
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
              ),  
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              },
              child: const Text("Ir para List Page"),
            ),



          ],
        )
      )
    );
  }
}