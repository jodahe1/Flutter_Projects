import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("BMI CALCULATER")),
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: TextStyle(fontSize: 39),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 8, 34, 61),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        resultText,
                        style: const TextStyle(
                            fontSize: 35,
                            color: Color.fromARGB(255, 54, 231, 244)),
                      ),
                      Text(
                        bmiResult,
                        style: const TextStyle(fontSize: 26),
                      ),
                      Text(
                        interpretation,
                        style: const TextStyle(fontSize: 27),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, // Rectangular shape
                        ),
                        backgroundColor: Color.fromARGB(255, 2, 43, 49)),
                    onPressed: () {},
                    child: Text(
                      'Re-Calculate',
                      style: TextStyle(fontSize: 29),
                    ),
                  ),
                ))
          ],
        ));
  }
}
