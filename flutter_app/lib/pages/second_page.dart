import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Cabeçalho
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.white),
            SizedBox(width: 8),
           Text(
          'List Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        ],
        ),
      ),


      // Corpo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Botão 1
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                backgroundColor: Colors.white
              ),
              child: const Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                  "Item 1          ",
                  style: TextStyle(
                color: Colors.black
              ),),
              Icon(Icons.delete, color:Colors.red),
                ]
              )
            ),

            const SizedBox(height: 20),

            // Botão 2
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                backgroundColor: Colors.white
              ),
              child: const Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                  "Item 2          ",
                  style: TextStyle(
                color: Colors.black
              ),),
              Icon(Icons.delete, color:Colors.red),
                ]
              )
            ),
           
           const SizedBox(height: 20),

            // Botão 3
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                backgroundColor: Colors.white
              ),
              child: const Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                  "Item 3          ",
                  style: TextStyle(
                color: Colors.black
              ),),
              Icon(Icons.delete, color:Colors.red),
                ]
              )
            ),

            const SizedBox(height: 170),

            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                backgroundColor: Colors.red
              ),
              child: const Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                  "Adicionar Item",
                  style: TextStyle(
                color: Colors.white
              ),),
                ]
              )
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, '/home');},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                backgroundColor: Colors.red
              ),
              child: const Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                  "Voltar para Home",
                  style: TextStyle(
                color: Colors.white
              ),),
                ]
              )
            ),
          ]
        )
      ),
    );
  }
}