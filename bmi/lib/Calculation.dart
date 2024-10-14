import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final double height;
  final double weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

   String getInterpritation() {
    if (_bmi >= 25) {
      return 'You Have a higher than normal body weight. try to exercise more.';
    } else if (_bmi >= 18.5) {
     return 'You Have a normal body weight. Good Job!.';
    } else {
   return 'You Have a Lower than normal body weight. You can it a bit more.';
    }
  }

}
