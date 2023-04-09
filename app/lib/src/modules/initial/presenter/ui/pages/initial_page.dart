import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MICRO APPS'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Modular.to.pushNamed('/calculator');
            },
            child: Row(
              children: const [Text('Calculadora'), Icon(Icons.numbers)],
            ),
          )
        ],
      ),
    );
  }
}
