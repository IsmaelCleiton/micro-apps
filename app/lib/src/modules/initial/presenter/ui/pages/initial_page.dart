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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.calculate_rounded,
                  size: 30.0,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text('Calculadora'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
