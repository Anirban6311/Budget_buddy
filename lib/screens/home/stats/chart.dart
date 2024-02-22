import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return const BarChart(
      mainBarChart(),
    );
  }
};

BarChartData mainBarChart(){
  return BarChartData(
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        side
      )
    )
  )
}

