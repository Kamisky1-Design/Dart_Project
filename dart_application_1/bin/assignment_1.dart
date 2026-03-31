void main( ){
  // Soil Moisture Irrigation

  double soilMoisture = 20;
  int cycles = 0;

  while (soilMoisture < 60 ) {
    soilMoisture += 10;
    cycles++;

    if (soilMoisture >= 50) {
      print('Cycles $cycles: Almost optimal moisture $soilMoisture%');
    }
    else {
      print('Cycle $cycles Moisture = $soilMoisture%');
    }
  }
  print('Irrigation Complete');
}