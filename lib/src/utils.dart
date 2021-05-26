import 'dart:math' as math;

double randomWeight(double min, double max) {
  math.Random rand = new math.Random();
  return rand.nextDouble() * (max - min) + min;
}

double sigmoid(double x) {
  return (1 / (1 + math.pow(math.e, -1 * x))).toDouble();
}
