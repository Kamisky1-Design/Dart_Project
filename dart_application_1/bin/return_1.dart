//Functions Calculate Average using interactive code

import 'dart:io';

/*double calculateAverage(double A, double B) {
  double calculateAverage = (A + B) / 2;
  return calculateAverage;
}*/

double calculateAverage() {
  stdout.write('Enter a number: '); // To prompt the user to perform task
  double number1 =
      double.tryParse(stdin.readLineSync() ?? '') ?? 0; //Receive user's input

  stdout.write('Enter other number: ');
  double number2 =
      double.tryParse(stdin.readLineSync() ?? '') ?? 0; //Receive user's input

  double average = (number1 + number2) / 2;

  return average;

}

void main() {
 print('The total is: ${calculateAverage()+3}') ;
  //print('The average is: ${calculateAverage(23.00, 1.00)}');
}
