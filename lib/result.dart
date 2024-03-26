import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.age, required this.result, required this.gender , });


final int age; 
final double result;
final bool gender;
String get healthiness{
    String healthinessString;
    if (result < 18.5) {
      healthinessString = 'Underweight';
    } else if (result <= 24.9) { // result >= 18.5 && result <= 24.9
      healthinessString = 'Normal';
    } else if (result <= 29.9) { // result >= 25.0 && result <= 29.9
      healthinessString = 'Overweight';
    } else { // result >= 30.0
      healthinessString = 'Obese';
    }
    return healthinessString;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(gender == true ? "Male" : "Female"),
                Text(age.toString()),
                Text(result.toStringAsFixed(2)),
                Text(healthiness),
      ],)),
    );
  }
}