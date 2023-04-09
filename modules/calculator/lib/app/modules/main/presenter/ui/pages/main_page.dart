import 'package:calculator/app/modules/main/domain/usecases/calculate_usecase.dart';
import 'package:calculator/app/modules/main/domain/usecases/string_to_expression_usecase.dart';
import 'package:calculator/app/modules/main/presenter/stores/main_page_store.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final store = MainPageStore(
      calculate: Modular.get<ICalculateUsecase>(),
      stringToExpressionUsecase: Modular.get<IStringToExpressionUsecase>(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA'),
      ),
      body: ScopedBuilder<MainPageStore, String>(
          store: store,
          onLoading: (
            _,
          ) {
            return const CircularProgressIndicator();
          },
          onState: (context, state) {
            return Column(
              children: [
                Text(
                  state,
                  style: const TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        store.addSymbol('1');
                      },
                      child: const Text('1'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('2');
                      },
                      child: const Text('2'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('3');
                      },
                      child: const Text('3'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('-');
                      },
                      child: const Text('-'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        store.addSymbol('4');
                      },
                      child: const Text('4'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('5');
                      },
                      child: const Text('5'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('6');
                      },
                      child: const Text('6'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('+');
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        store.addSymbol('7');
                      },
                      child: const Text('7'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('8');
                      },
                      child: const Text('8'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('9');
                      },
                      child: const Text('9'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('*');
                      },
                      child: const Text('x'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        store.addSymbol('0');
                      },
                      child: const Text('0'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.addSymbol('/');
                      },
                      child: const Text('/'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.erase();
                      },
                      child: const Text('C'),
                    ),
                    TextButton(
                      onPressed: () {
                        store.calculate();
                      },
                      child: const Text('='),
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}
