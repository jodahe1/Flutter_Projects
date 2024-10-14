class CalculateBmi {
  final double weight; // in kg
  final double height; // in meters
  final String gender;
  CalculateBmi(
      {required this.gender, required this.weight, required this.height});

  double calculateBMI() {
    return weight / (height * height);
  }

  String displayBMICategory(int age, double bmi) {
    if (gender.toLowerCase() == "male") {
      if (age < 18) {
        return "For males under 18, BMI recommendations may vary.";
      } else if (age >= 18 && age <= 65) {
        return "Adult male BMI categories apply.";
      } else {
        return "For elderly males, consult special BMI ranges.";
      }
    } else if (gender.toLowerCase() == "female") {
      if (age < 18) {
        return "For females under 18, BMI recommendations may vary.";
      } else if (age >= 18 && age <= 65) {
        return "Adult female BMI categories apply.";
      } else {
        return "For elderly females, consult special BMI ranges.";
      }
    } else {
      return "Gender not recognized. Please specify 'male' or 'female'.";
    }
  }

  String printBMICategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
}
