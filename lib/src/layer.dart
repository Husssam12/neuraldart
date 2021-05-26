import 'neuron.dart';
import 'utils.dart' as utils;

class Layer {
  List<Neuron> neurons = [];

  // Constructor for input layers
  Layer(List<double> inputs) {
    for (var value in inputs) {
      this.neurons.add(Neuron(value));
    }
  }

  // Constructor for hidden & output layers
  Layer.hidden(int number_of_neurons, int weights_per_neuron) {
    for (int i = 0; i < number_of_neurons; i++) {
      List<double> weights = [];

      /// +1 is weight for bias input
      for (var j = 0; j < weights_per_neuron + 1; j++) {
        weights.add(utils.randomWeight(Neuron.min_weight, Neuron.max_weight));
      }
      double bias = -1;
      this.neurons.add(Neuron.hidden(weights, bias));
    }
  }
}
