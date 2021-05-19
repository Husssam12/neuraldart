class Neuron {
  // Static Neuron Attributes
  static late double min_weight;
  static late double max_weight;

  // Attributes
  late List<double> weights = []; // Updated weights after backpropagation
  late List<double> weights_old =
      []; // Weights before backpropagation (1 version older)
  late double gradient;
  late double bias;
  late double value;

  // Constructor for input neurons
  Neuron(double value) {
    this.weights_old = this.weights;
    this.bias = -1.0;
    this.gradient = -1.0;
    this.value = value;
  }

  // Constructor for hidden & output neurons
  Neuron.hidden(List<double> weights, double bias) {
    this.weights = weights;
    this.weights_old = this.weights;
    this.bias = bias;
    this.gradient = 0.0;
  }

  // Update method (to be used after the backpropagation for updating weights)
  void updateWeights() {
    this.weights = this.weights_old;
  }

  static void setRange(double min, double max) {
    min_weight = min;
    max_weight = max;
  }
}
