List<double> convertToF(List<double> temperaturesInC) {
  List<double> convertedTemps = temperaturesInC.map((num) => (((num * 9/5) + 32) * 100).roundToDouble() / 100).toList();
  return convertedTemps;
}
