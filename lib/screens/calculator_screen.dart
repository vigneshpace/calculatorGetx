import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/calculator_controller.dart';
import '../history.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculatorController());

  CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.history,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  history,
                  style: const TextStyle(
                    fontSize: 45.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: GetX<CalculatorController>(
                  init: CalculatorController(),
                  initState: (_) {},
                  builder: (_) {
                    return Text(
                      _.res.value,
                      style: TextStyle(fontSize: 48, color: Colors.black),
                    );
                  },
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  child: const Text("7"),
                  onPressed: () {
                    calculatorCtrl.btnClicked("7");
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                  child: const Text("8"),
                  onPressed: () {
                    calculatorCtrl.btnClicked("8");
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                  child: const Text("9"),
                  onPressed: () {
                    calculatorCtrl.btnClicked("9");
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                  child: const Text("+"),
                  onPressed: () {
                    calculatorCtrl.btnClicked("+");
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("4");
                    },
                    child: const Text("4"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    )),
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("5");
                  },
                  child: const Text("5"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("6");
                  },
                  child: const Text("6"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("-");
                  },
                  child: const Text("-"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("1");
                    },
                    child: const Text("1"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                    )),
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("2");
                    },
                    child: const Text("2"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    )),
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("3");
                    },
                    child: const Text("3"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    )),
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("X");
                  },
                  child: const Text("X"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("C");
                  },
                  child: const Text('C'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("0");
                    },
                    child: const Text("0"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    )),
                OutlinedButton(
                    onPressed: () {
                      calculatorCtrl.btnClicked("=");
                    },
                    child: const Text("="),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    )),
                OutlinedButton(
                  onPressed: () {
                    calculatorCtrl.btnClicked("/");
                  },
                  child: const Text("/"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
