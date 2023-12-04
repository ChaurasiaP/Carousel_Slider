// class GraphModel{

//   GraphModel(this.schemeName, this.returnsPercent, this.clientEnteredValue);
  
//   String schemeName;
//   double returnsPercent;
//   int clientEnteredValue;

//   List<String> graphList = [];
// }

import 'package:carousel_builder/STYLE/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphModel {
 GraphModel(this.schemeName, this.clientEnteredValue,  this.returnsPercent);

 String schemeName;
 int clientEnteredValue;
 double returnsPercent;
 

 List<String> graphList = [];
}

class StackedColumnChart extends StatefulWidget {
 @override
 _StackedColumnChartState createState() => _StackedColumnChartState();
}

class _StackedColumnChartState extends State<StackedColumnChart> {
 late TooltipBehavior _tooltipBehavior;

 @override
 void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
 }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(isVisible: false),
          series: _getSeries(),
          tooltipBehavior: _tooltipBehavior,
        ),
      ),
    );
 }

 List<ChartSeries<GraphModel, String>> _getSeries() {
    return <ChartSeries<GraphModel, String>>[
      StackedColumnSeries<GraphModel, String>(
        dataSource: <GraphModel>[
          GraphModel('Scheme A', 3000, 4000),
          GraphModel('Scheme B', 3000, 6000),
          GraphModel('Scheme C', 3000, 7000),
        ],
        xValueMapper: (GraphModel sales, _) => sales.schemeName,
        yValueMapper: (GraphModel sales, _) => sales.clientEnteredValue,
        name: 'Returns Percent',
        enableTooltip: true,
        color: MyTheme.candyRed,
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
        )
      ),
      StackedColumnSeries<GraphModel, String>(
        dataSource: <GraphModel>[
          GraphModel('Scheme A', 1500, 2000),
          GraphModel('Scheme B', 3000, 6000),
          GraphModel('Scheme C', 2500, 7000),
        ],
        xValueMapper: (GraphModel sales, _) => sales.schemeName,
        yValueMapper: (GraphModel sales, _) => sales.returnsPercent,
        name: 'Client Entered Value',
        enableTooltip: true,
        color: MyTheme.textBlue1,
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
        )
      ),
    ];
 }
}