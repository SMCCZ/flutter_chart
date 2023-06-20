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

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      width: width,
      height: height * 0.4,
      child: CustomPaint(
        painter: LineChartPainter(),
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var c = Offset(size.width * 0.5, size.height * 0.5);
    var radius = 360.0;
    var paint = Paint()..color = Colors.blue;
    canvas.drawCircle(c, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
