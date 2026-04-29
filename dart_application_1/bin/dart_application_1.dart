void main() {
  
  double plantHeight = 50.0;
  int days = 0;

  //Grow untill plant reaches 150

  while(plantHeight < 150) {
    plantHeight+=20; // plantHeight = plantHeight + 20;
    days++;
    print('day $days: Height = ${plantHeight} cm');
  }
  print('Plant fully grown in ${days} days');
}
