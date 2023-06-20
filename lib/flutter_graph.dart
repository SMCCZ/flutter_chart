library flutter_graph;

import 'package:flutter/material.dart';

// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }
class ChartData {
  final int x;
  final int y;

  ChartData({
    required this.x,
    required this.y,
  });
}

class LineChart extends StatelessWidget {
  final ChartData chartData;
  const LineChart({
    super.key,
    required this.chartData,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container();
  }
}
