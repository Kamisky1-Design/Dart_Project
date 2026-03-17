void main() {
  List<double> dailyHarvests = [20.50, 12.6, 27.80, 90.38, 11.39, 10.0, 39.60];
  double total = 0.0;

  for (int i = 0; i < dailyHarvests.length; i++) {
    total += dailyHarvests[i];
    print('day ${i + 1} : ${dailyHarvests[i]} kg, total = $total kg ');
  }

  print('Final total: $total kg ');
}
