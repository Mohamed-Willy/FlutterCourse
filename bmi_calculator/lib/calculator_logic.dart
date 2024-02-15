
import 'dart:math';

class CalculatorLogic {
  CalculatorLogic({required this.weight, required this.height});
  final int weight;
  final int height;
  double _bmi = -1;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25){
      return "Overweight";
    }
    else if (_bmi >= 18.5){
      return "Normal";
    }
    else{
      return "Underweight";
    }
  }

  String getAdvise() {
    if (_bmi >= 25){
      return "Prioritize a balanced diet rich in fruits, vegetables, and lean proteins.";
    }
    else if (_bmi >= 18.5){
      return "Maintain your healthy weight by continuing to make nutritious food choices and staying active.";
    }
    else{
      return "Focus on nutrient-dense foods like whole grains, lean proteins, and healthy fats to promote weight gain in a gradual and healthy manner.";
    }
  }
}