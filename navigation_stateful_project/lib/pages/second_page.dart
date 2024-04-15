import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(contador.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contador = contador + 1;
                });
                // print(contador);
              },
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}