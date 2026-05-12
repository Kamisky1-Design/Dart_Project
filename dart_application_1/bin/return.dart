double calculateRevenue(double yield, double pricePerKg) {
  double revenue = yield * pricePerKg;
  return (revenue);
}

void main() {
  double maizeRevenue = calculateRevenue(600.0, 2.50);
  double wheatRevenue = calculateRevenue(500.0, 4.00);

  print('Maize Revenue: GHS $maizeRevenue');
  print('Wheat Revenue: GHS $wheatRevenue');
  print('Total Revenue: GHS ${maizeRevenue + wheatRevenue}');
}