import 'dart:io';

// Global crop storage
List<Map<String, dynamic>> crops = [];

void main() {
  printWelcome();
  
  stdout.write("Enter your name: ");
  String farmerName = stdin.readLineSync() ?? "Farmer";
  
  print("\nHello, $farmerName!\n");
  
  showMenuLoop();
}

// -------------------- STEP 1: WELCOME --------------------
void printWelcome() {
  print("==================================");
  print("     Farm Management System       ");
  print("==================================");
}

// -------------------- STEP 2: MENU LOOP --------------------
void showMenuLoop() {
  while (true) {
    print("\nChoose an option:");
    print("1. Add Crop");
    print("2. View Crops");
    print("3. Calculate Yield");
    print("4. Irrigate Field");
    print("5. Simulate Rainfall");
    print("6. Exit");
    
    stdout.write("Enter choice: ");
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        addCrop();
        break;
      case '2':
        viewCrops();
        break;
      case '3':
        calculateAllYield();
        break;
      case '4':
        handleIrrigation();
        break;
      case '5':
        simulateRainfall();
        break;
      case '6':
        print("Exiting system. Goodbye!");
        return;
      default:
        print("Invalid option. Try again.");
    }
  }
}

// -------------------- STEP 3: ADD CROP --------------------
void addCrop() {
  stdout.write("Enter crop name: ");
  String name = stdin.readLineSync() ?? "";
  
  stdout.write("Enter area (acres): ");
  double area = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  
  stdout.write("Enter yield per acre (kg): ");
  double yieldPerAcre = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  
  if (area <= 0 || yieldPerAcre <= 0) {
    print("Invalid input. Values must be positive.");
    return;
  }
  
  crops.add({"name": name, "area": area, "yield": yieldPerAcre});
  
  print("Crop added successfully!");
}

// -------------------- STEP 4: VIEW CROPS --------------------
void viewCrops() {
  if (crops.isEmpty) {
    print("No crops available.");
    return;
  }
  
  print("\n--- Crop List ---");
  int index = 1;
  
  for (var crop in crops) {
    print(
      "$index. ${crop['name']} - Area: ${crop['area']} acres, Yield: ${crop['yield']} kg/acre",
    );
    index++;
  }
}

// -------------------- STEP 5: CALCULATE YIELD --------------------
double calculateYield(double area, double yieldPerAcre) {
  return area * yieldPerAcre;
}

void calculateAllYield() {
  if (crops.isEmpty) {
    print("No crops to calculate.");
    return;
  }
  
  print("\n--- Yield Report ---");
  
  for (var crop in crops) {
    double total = calculateYield(crop['area'], crop['yield']);
    print("${crop['name']} Total Yield: $total kg");
  }
}

// -------------------- STEP 6: IRRIGATION --------------------
void irrigateField(String fieldName, {bool isUrgent = false}) {
  if (isUrgent) {
    print("🚨 URGENT: Irrigating $fieldName immediately!");
  } else {
    print("✓ Scheduled irrigation for $fieldName");
  }
}

void handleIrrigation() {
  stdout.write("Enter field name: ");
  String fieldName = stdin.readLineSync() ?? "Unknown Field";
  
  stdout.write("Is it urgent? (yes/no): ");
  String response = stdin.readLineSync() ?? "no";
  
  bool isUrgent = response.toLowerCase() == "yes";
  
  irrigateField(fieldName, isUrgent: isUrgent);
}

// -------------------- STEP 7: RAINFALL SIMULATION --------------------
void simulateRainfall() {
  double totalRain = 0;
  int days = 0;

  print("\n--- Rainfall Simulation ---");

  while (totalRain < 100) {
    totalRain += 18.5;
    days++;

    // Print Day 1 and every 3rd day
    if (days == 1 || days % 3 == 0) {
      print("Day $days: Total rainfall = ${totalRain.toStringAsFixed(1)} mm");
    }
  }
  
  print("Enough rainfall reached after $days days.");
}