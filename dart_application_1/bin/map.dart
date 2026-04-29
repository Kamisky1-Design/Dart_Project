void main() {
  //list of items and prices in a supermarket

  Map<String, dynamic> itemPrice = {
    'Rice': 100.00,
    'Soap': 30.00,
    'Shoes': 250.00,
    'Biscuit': 5.00,
    'Ice cream': 50.00,
  };
  itemPrice['Biscuit'] = 15.0; //To update map
  itemPrice['Fruit'] = 25.00; // To add a Key and its value to a existing map
  itemPrice.remove('Soap'); // To remove an exicting key
  print(itemPrice['Rice']);   // To print the value of Rice
  print(itemPrice['Comb']); //This will print Null because it is not part
  print(itemPrice['Biscuit']);
  print(itemPrice);
}
