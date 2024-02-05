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
            return Container(
              padding: const EdgeInsets.all(16),
              color: Colors.amber.shade200,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    color: Colors.green.shade300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            state,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 44,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('1');
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('2');
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('3');
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('-');
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('4');
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('5');
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('6');
                          },
                          child: const Text(
                            '6',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('+');
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('7');
                          },
                          child: const Text(
                            '7',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('8');
                          },
                          child: const Text(
                            '8',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('9');
                          },
                          child: const Text(
                            '9',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('*');
                          },
                          child: const Text(
                            'x',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('0');
                          },
                          child: const Text(
                            '0',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.addSymbol('/');
                          },
                          child: const Text(
                            '/',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.erase();
                          },
                          child: const Text(
                            'C',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            store.calculate();
                          },
                          child: const Text(
                            '=',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
