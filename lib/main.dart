import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class ChartSampleData {
  ChartSampleData({
    required this.date,
    required this.lowPrice,
    required this.highPrice,
    required this.openPrice,
    required this.closePrice,
    required this.tradeAmount,
  });

  final DateTime date;
  final double lowPrice;
  final double highPrice;
  final double openPrice;
  final double closePrice;
  final double tradeAmount;
}

// Timer activate by GetXController
class TimerController extends GetxController {
  RxDouble visibleYMax = 0.0.obs;
  RxDouble visibleYMin = 0.0.obs;

  /// Specifies the list of chart sample data.
  List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(
        date: DateTime.parse('2022-03-24 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70300.0,
        openPrice: 69600.0,
        closePrice: 69800.0,
        tradeAmount: 37943356.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-25 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70200.0,
        openPrice: 70100.0,
        closePrice: 69800.0,
        tradeAmount: 12986010.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-28 00:00:00.000'),
        lowPrice: 69200.0,
        highPrice: 69900.0,
        openPrice: 69500.0,
        closePrice: 69700.0,
        tradeAmount: 12619289.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-29 00:00:00.000'),
        lowPrice: 69800.0,
        highPrice: 70300.0,
        openPrice: 70000.0,
        closePrice: 70200.0,
        tradeAmount: 13686208.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-30 00:00:00.000'),
        lowPrice: 69800.0,
        highPrice: 70500.0,
        openPrice: 70300.0,
        closePrice: 69900.0,
        tradeAmount: 12670187.0),
    ChartSampleData(
        date: DateTime.parse('2022-03-31 00:00:00.000'),
        lowPrice: 69600.0,
        highPrice: 70200.0,
        openPrice: 69900.0,
        closePrice: 69600.0,
        tradeAmount: 12510366.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-01 00:00:00.000'),
        lowPrice: 69000.0,
        highPrice: 69500.0,
        openPrice: 69500.0,
        closePrice: 69100.0,
        tradeAmount: 15916846.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-04 00:00:00.000'),
        lowPrice: 68600.0,
        highPrice: 69300.0,
        openPrice: 68900.0,
        closePrice: 69300.0,
        tradeAmount: 11107905.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-05 00:00:00.000'),
        lowPrice: 69100.0,
        highPrice: 69600.0,
        openPrice: 69400.0,
        closePrice: 69200.0,
        tradeAmount: 8467248.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-06 00:00:00.000'),
        lowPrice: 68500.0,
        highPrice: 68800.0,
        openPrice: 68600.0,
        closePrice: 68500.0,
        tradeAmount: 15517308.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-07 00:00:00.000'),
        lowPrice: 68000.0,
        highPrice: 68500.0,
        openPrice: 68500.0,
        closePrice: 68000.0,
        tradeAmount: 20683328.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-08 00:00:00.000'),
        lowPrice: 67700.0,
        highPrice: 68300.0,
        openPrice: 68100.0,
        closePrice: 67800.0,
        tradeAmount: 15453191.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-11 00:00:00.000'),
        lowPrice: 67400.0,
        highPrice: 68100.0,
        openPrice: 67800.0,
        closePrice: 67900.0,
        tradeAmount: 12263735.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-12 00:00:00.000'),
        lowPrice: 67000.0,
        highPrice: 67700.0,
        openPrice: 67600.0,
        closePrice: 67000.0,
        tradeAmount: 13924389.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-13 00:00:00.000'),
        lowPrice: 67200.0,
        highPrice: 69000.0,
        openPrice: 67300.0,
        closePrice: 68700.0,
        tradeAmount: 17378620.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-14 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68700.0,
        openPrice: 68700.0,
        closePrice: 67500.0,
        tradeAmount: 16409494.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-15 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67300.0,
        openPrice: 67200.0,
        closePrice: 66600.0,
        tradeAmount: 13176415.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-18 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 67100.0,
        openPrice: 66500.0,
        closePrice: 66700.0,
        tradeAmount: 10119203.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-19 00:00:00.000'),
        lowPrice: 67000.0,
        highPrice: 68000.0,
        openPrice: 67100.0,
        closePrice: 67300.0,
        tradeAmount: 12959434.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-20 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67400.0,
        openPrice: 67000.0,
        closePrice: 67400.0,
        tradeAmount: 16693293.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-21 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68300.0,
        openPrice: 67600.0,
        closePrice: 67700.0,
        tradeAmount: 12847448.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-22 00:00:00.000'),
        lowPrice: 66700.0,
        highPrice: 67300.0,
        openPrice: 67200.0,
        closePrice: 67000.0,
        tradeAmount: 11791478.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-25 00:00:00.000'),
        lowPrice: 66300.0,
        highPrice: 66700.0,
        openPrice: 66500.0,
        closePrice: 66300.0,
        tradeAmount: 11016474.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-26 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 66700.0,
        openPrice: 66400.0,
        closePrice: 66100.0,
        tradeAmount: 12946923.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-27 00:00:00.000'),
        lowPrice: 64900.0,
        highPrice: 65500.0,
        openPrice: 65400.0,
        closePrice: 65000.0,
        tradeAmount: 18122084.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-28 00:00:00.000'),
        lowPrice: 64500.0,
        highPrice: 65500.0,
        openPrice: 65400.0,
        closePrice: 64800.0,
        tradeAmount: 16895528.0),
    ChartSampleData(
        date: DateTime.parse('2022-04-29 00:00:00.000'),
        lowPrice: 65000.0,
        highPrice: 67600.0,
        openPrice: 65100.0,
        closePrice: 67400.0,
        tradeAmount: 26190390.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-02 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67600.0,
        openPrice: 66600.0,
        closePrice: 67300.0,
        tradeAmount: 14106184.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-03 00:00:00.000'),
        lowPrice: 67300.0,
        highPrice: 68400.0,
        openPrice: 67400.0,
        closePrice: 67500.0,
        tradeAmount: 14168875.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-04 00:00:00.000'),
        lowPrice: 67500.0,
        highPrice: 68400.0,
        openPrice: 68000.0,
        closePrice: 67900.0,
        tradeAmount: 11505248.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-06 00:00:00.000'),
        lowPrice: 66500.0,
        highPrice: 67100.0,
        openPrice: 67000.0,
        closePrice: 66500.0,
        tradeAmount: 14356156.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-09 00:00:00.000'),
        lowPrice: 66100.0,
        highPrice: 66900.0,
        openPrice: 66300.0,
        closePrice: 66100.0,
        tradeAmount: 11858736.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-10 00:00:00.000'),
        lowPrice: 65300.0,
        highPrice: 66300.0,
        openPrice: 65900.0,
        closePrice: 65700.0,
        tradeAmount: 17235604.0),
    ChartSampleData(
        date: DateTime.parse('2022-05-11 00:00:00.000'),
        lowPrice: 65200.0,
        highPrice: 66300.0,
        openPrice: 65500.0,
        closePrice: 65700.0,
        tradeAmount: 12264330.0)
  ];

  @override
  void onInit() {
    Timer.periodic(Duration(milliseconds: 500), (_) {
      if (chartData.last.date == DateTime.parse('2022-05-11 00:00:00.000')) {
        print('차트 업데이트');
        chartData.last = (ChartSampleData(
            date: DateTime.parse('2022-05-11 00:00:00.000'),
            lowPrice: 65200.0,
            highPrice: 66300.0,
            openPrice: 65500.0,
            closePrice: double.parse(
                CandleChart._getRandomInt(65000, 65300).toString()),
            tradeAmount: double.parse(
                CandleChart._getRandomInt(12000000, 15356156).toString())));
        CandleChart.updateChartData();
        print('업데이트 완료');
      } else {
        print('업데이트 실패');
        return;
      }
    });
    super.onInit();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'syncfusion chart sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CandleChart(),
      // initialBinding: BindingsBuilder(() {
      //   Get.put(TimerController(), permanent: true);
      // }),
    );
  }
}

class CandleChart extends StatelessWidget {
  CandleChart({Key? key}) : super(key: key);

  static var _timerController = Get.put(TimerController());
  // static var _timerController = Get.find<TimerController>();

  static final Random random = Random();

  /// Creates an instance of random to generate the random number.
  static int _getRandomInt(int min, int max) {
    return min + random.nextInt(max - min);
  }

  static ChartSeriesController? candleController;
  static ChartSeriesController? columnController;

  late TrackballBehavior _trackballBehavior = TrackballBehavior(
    enable: false,
    activationMode: ActivationMode.longPress,
    shouldAlwaysShow: true,
  );

  late ZoomPanBehavior _zoomPanBehavior = ZoomPanBehavior(
    enablePinching: true,
    zoomMode: ZoomMode.x,
    enablePanning: true,
    enableMouseWheelZooming: true,
  );

  // To update chartData per 1 sec.
  static void updateChartData() {
    candleController?.updateDataSource(
        updatedDataIndex: _timerController.chartData.length - 1);
    columnController?.updateDataSource(
        updatedDataIndex: _timerController.chartData.length - 1);
    print('옵데이트');
  }

  void range(ActualRangeChangedArgs args) async {
    if (args.actualMax != _timerController.chartData.length - 0.5) {
      print(
          'args.actualMax : ${args.actualMax}, args.actualMin : ${args.actualMin}');
      _timerController.visibleYMax.value =
          await double.parse(args.actualMax.toString());
      _timerController.visibleYMin.value =
          await double.parse(args.actualMin.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
        flex: 9,
        fit: FlexFit.tight,
        child: SfCartesianChart(
          // margin: const EdgeInsets.all(0),
          enableAxisAnimation: true,
          // title: ChartTitle(text: title!),
          legend: Legend(
            isVisible: false,
            // true하면 토글 가능
            // toggleSeriesVisibility: true
          ),
          // trackball 관련
          trackballBehavior: _trackballBehavior,
          // zoom 관련
          zoomPanBehavior: _zoomPanBehavior,
          onActualRangeChanged: (ActualRangeChangedArgs args) => range(args),
          axes: <ChartAxis>[
            NumericAxis(
              anchorRangeToVisiblePoints: true,
              numberFormat: NumberFormat.simpleCurrency(
                  decimalDigits: 0, name: "", locale: "ko_KR"),
              majorGridLines: const MajorGridLines(width: 0),
              // opposedPosition: true,
              name: 'ColumnSeries',
              isVisible: false,
              // visibleMinimum: _timerController.chartData
              //         .getRange(_timerController.chartData.length - 20,
              //             _timerController.chartData.length - 1)
              //         .map((e) => e.tradeAmount)
              //         .toList()
              //         .reduce(min) *
              //     0.9,
              // visibleMaximum: _timerController.chartData
              //         .getRange(_timerController.chartData.length - 20,
              //             _timerController.chartData.length - 1)
              //         .map((e) => e.tradeAmount)
              //         .toList()
              //         .reduce(max) *
              //     1.1,
              // interval: 1000,
              // minimum: 0,
              // maximum: 7000
            )
          ],
          enableSideBySideSeriesPlacement: false,
          series: <CartesianSeries>[
            ColumnSeries<ChartSampleData, DateTime>(
              onRendererCreated: (ChartSeriesController controller) {
                columnController = controller;
              },
              dataSource: _timerController.chartData,
              xValueMapper: (ChartSampleData data, _) => data.date,
              yValueMapper: (ChartSampleData data, _) =>
                  data.tradeAmount.toInt(),
              yAxisName: 'ColumnSeries',
              color: Colors.grey[300],
            ),
            CandleSeries<ChartSampleData, DateTime>(
              onRendererCreated: (ChartSeriesController controller) {
                // print(annoData.y);
                candleController = controller;
                // print('controller! $chartSeriesController');
              },
              // 차트 애니메이션 default: 1500
              animationDuration: 0,
              dataSource: _timerController.chartData,
              name: 'CandleSeries',
              yAxisName: 'CandleSeries',
              xValueMapper: (ChartSampleData data, _) => data.date,
              lowValueMapper: (ChartSampleData data, _) =>
                  data.lowPrice.toInt(),
              highValueMapper: (ChartSampleData data, _) =>
                  data.highPrice.toInt(),
              openValueMapper: (ChartSampleData data, _) =>
                  data.openPrice.toInt(),
              closeValueMapper: (ChartSampleData data, _) =>
                  data.closePrice.toInt(),
              // 데이터 포인트의 고가와 저가가 같을 때와 고가, 저가, 시가 및 종가의 모든 값이 데이터 포인트에 대해 동일한 경우 데이터 포인트의 표시를 가는 선으로 표시하는 데 사용됩니다. 기본적으로 false로 설정됩니다
              showIndicationForSameValues: true,

              dataLabelSettings: DataLabelSettings(
                isVisible: false,

                // builder: (dynamic data, dynamic point, dynamic series,
                //     int pointIndex, int seriesIndex) {
                //   return Expanded(
                //     child: Container(
                //       color: Colors.amber,
                //       // height: 1,
                //       // width: 1,
                //       // child: Column(children: [
                //       //   Text(
                //       //     '1',
                //       //     style: TextStyle(fontSize: 1),
                //       //   )
                //       // ])
                //     ),
                //   );
                // }
              ),
              bearColor: Colors.blue,
              bullColor: Colors.red[400],
              borderWidth: 1.5,
              enableSolidCandles: true,
              emptyPointSettings: EmptyPointSettings(mode: EmptyPointMode.gap),
            ),
            // LineSeries<MovingAverageFiveModel, DateTime>(
            //     onRendererCreated: (ChartSeriesController controller) {
            //       // print(annoData.y);
            //       chartSeriesLineController = controller;
            //       // print('controller! $chartSeriesController');
            //     },
            //     dataSource: _timerController.movingAverageFiveData,
            //     xValueMapper: (MovingAverageFiveModel data, _) => data.date,
            //     yValueMapper: (MovingAverageFiveModel data, _) =>
            //         data.endPrice?.toInt(),
            //     color: Colors.green,
            //     emptyPointSettings:
            //         EmptyPointSettings(mode: EmptyPointMode.gap)),

            // StackedColumnSeries<VolumeModel, DateTime>(
            //   yAxisName: 'ColumnSeries',
            //   onRendererCreated: (ChartSeriesController controller) {
            //     // print(annoData.y);
            //     chartSeriesColumnController = controller;
            //     // print('controller! $chartSeriesController');
            //   },
            //   dataSource: _timerController.volumeData,
            //   xValueMapper: (VolumeModel data, _) => data.date,
            //   yValueMapper: (VolumeModel data, _) => data.volume.toInt(),
            //   color: Colors.grey,
            // ),
          ],
          // onDataLabelRender: (DataLabelRenderArgs args) => dataLabel(args),

          // onDataLabelRender: (DataLabelRenderArgs args) {
          //   if (args.seriesRenderer.name == 'CandleSeries') {
          //     if (args.pointIndex != args.dataPoints.length - 1) {
          //       // args.text = args.pointIndex.toString();
          //       args.text = "";
          //     } else {
          //       args.text = _timerController
          //           .chartData[args.pointIndex!].endPrice
          //           .toString();
          //       args.textStyle = TextStyle(color: Colors.amber);
          //       args.offset = Offset(15, 0);
          //       // args.text = "";
          //       // Expanded(
          //       //   child: Container(
          //       //     color: Colors.red,
          //       //     child: Text('${args.text}'),
          //       //   ),
          //       // );
          //       // args.text = "${args.seriesRenderer.toString()}";
          //     }
          //   }

          //   //   if (args.pointIndex == 0) {
          //   //     Text('이거머야');
          //   //     args.color = Colors.red;
          //   //   } else {
          //   //     args.text = "";
          //   //   }
          // },

          // onDataLabelRender: (DataLabelRenderArgs args) {
          //   args.text = 'Data label';
          //   CandleSeries<ChartSampleData, DateTime> series = args.seriesRenderer;
          //   //Changed the background color of the data label based on the series type
          //   if (series.name == '차트 데이터') {
          //     args.color = Colors.black;
          //   } else {
          //     args.color = Colors.yellow;
          //   }
          // },

          primaryXAxis: DateTimeCategoryAxis(
            // 너무 많이 축소할 경우 라벨을 어떻게 핸들링할지?
            labelIntersectAction: AxisLabelIntersectAction.hide,

            // 차트의 시작 시점 설정
            // autoScrollingMode: AutoScrollingMode.end,
            // // 초기 차트 개수 설정 <-이 아니라 볼 수 있는 차트 개수
            // autoScrollingDelta: 100,
            // autoScrollingDeltaType: DateTimeIntervalType.auto,

            intervalType: DateTimeIntervalType.auto,
            // isInversed: true,
            visibleMinimum: _timerController
                .chartData[_timerController.chartData.length - 5].date,
            visibleMaximum: _timerController.chartData.last.date,

            // visibleMaximum: DateTime(2022, 4, 26),
            // minimum: DateTime.parse('20220102'),
            // maximum: DateTime.parse('20220425'),
            // visibleMinimum: DateTime.parse('2022-03-02'),
            // visibleMaximum: DateTime.parse('2022-05-18'),
            // minimum: DateTime.parse(DateFormat('yyyy-MM-dd').format(_timerController
            //     .chartData.values
            //     .toList()[_timerController.chartData.values.length - 1]
            //     .date)),
            // maximum: DateTime.parse(DateFormat('yyyy-MM-dd')
            //     .format(_timerController.chartData.values.toList()[0].date)),
            // visibleMinimum: DateTime.parse(DateFormat('yyyy-MM-dd')
            //     .format(_timerController.chartData[9].date)),
            // visibleMaximum: DateTime.parse(DateFormat('yyyy-MM-dd')
            //     .format(_timerController.chartData[1].date)),
            // maximumLabels: 10,
            interval: 1,
            dateFormat: DateFormat('yyyy-MM-dd'),
            majorGridLines: MajorGridLines(width: 0),
          ),
          // axes: <ChartAxis>[
          //   NumericAxis(name: 'CandleSeries'),
          // ],

          primaryYAxis: NumericAxis(
              // enableAutoIntervalOnZooming: false,
              rangePadding: ChartRangePadding.additional,
              anchorRangeToVisiblePoints: true,
              name: 'CandleSeries',
              // minimum: _timerController.chartData
              //         .map((e) => e.lowPrice)
              //         .toList()
              //         .reduce(min) *
              //     0.9,
              // maximum: _timerController.chartData
              //         .map((e) => e.highPrice)
              //         .toList()
              //         .reduce(max) *
              //     1.1,
              // visibleMinimum: _timerController.chartData
              //         .getRange(_timerController.chartData.length - 20,
              //             _timerController.chartData.length - 1)
              //         .map((e) => e.lowPrice)
              //         .toList()
              //         .reduce(min) *
              //     0.9,
              // visibleMaximum: _timerController.chartData
              //         .getRange(_timerController.chartData.length - 20,
              //             _timerController.chartData.length - 1)
              //         .map((e) => e.highPrice)
              //         .toList()
              //         .reduce(max) *
              //     1.1,
              // rangePadding: ChartRangePadding.additional,
              // visibleMinimum: 60000,
              // visibleMaximum: 75000,
              opposedPosition: true,
              numberFormat: NumberFormat.simpleCurrency(
                  decimalDigits: 0, name: "", locale: "ko_KR")),
        ),
        // Obx(
        //   () => Positioned(
        //     child: Container(
        //         child: Obx(
        //       () => Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.baseline,
        //         textBaseline: TextBaseline.ideographic,
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Text(
        //             "◀",
        //             style: _timerController.currentPrice.value >
        //                     _timerController.chartData.last.startPrice
        //                 ? TextStyle(fontSize: 13, color: Colors.red)
        //                 : TextStyle(fontSize: 13, color: Colors.blue),
        //           ),
        //           Text(
        //             NumberFormat.simpleCurrency(
        //                     decimalDigits: 0, name: "", locale: "ko_KR")
        //                 .format(_timerController.currentPrice.value)
        //                 .toString(),
        //             style: _timerController.currentPrice.value >
        //                     _timerController.chartData.last.startPrice
        //                 ? TextStyle(
        //                     fontSize: 12,
        //                     color: Colors.white,
        //                     backgroundColor: Colors.red)
        //                 : TextStyle(
        //                     fontSize: 12,
        //                     color: Colors.white,
        //                     backgroundColor: Colors.blue),
        //           ),
        //         ],
        //       ),
        //     )),
        //     // 바뀌어야 하는 곳 67900 -> 155
        //     top:
        //         // 76,
        //         (((_timerController.visibleYMax.value -
        //                         _timerController.currentPrice.value) /
        //                     (_timerController.visibleYMax.value -
        //                         _timerController.visibleYMin.value)) *
        //                 chartHeight +
        //             topX),
        //     // 세로모드일 때 355
        //     left: RightY,
        //   ),
        // ),
        // Positioned(
        //   child: Container(
        //       child: Obx(
        //     () => Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.baseline,
        //       textBaseline: TextBaseline.ideographic,
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         Text(
        //           "◀",
        //           style: _timerController.currentPrice.value >
        //                   _timerController.chartData.last.startPrice
        //               ? TextStyle(fontSize: 13, color: Colors.red)
        //               : TextStyle(fontSize: 13, color: Colors.blue),
        //         ),
        //         Text(
        //           NumberFormat.simpleCurrency(
        //                   decimalDigits: 0, name: "", locale: "ko_KR")
        //               .format(_timerController.currentPrice.value)
        //               .toString(),
        //           style: _timerController.currentPrice.value >
        //                   _timerController.chartData.last.startPrice
        //               ? TextStyle(
        //                   fontSize: 12,
        //                   color: Colors.white,
        //                   backgroundColor: Colors.red)
        //               : TextStyle(
        //                   fontSize: 12,
        //                   color: Colors.white,
        //                   backgroundColor: Colors.blue),
        //         ),
        //       ],
        //     ),
        //   )),
        //   // 바뀌어야 하는 곳 67900 -> 155
        //   // 0
        //   // top 412.5
        //   top: 500.5,
        //   // 세로모드일 때 355
        //   left: 355,
        // ),
      ),
      // Obx(() => Text('visibleYMax : ${_timerController.visibleYMax.toString()}')),
      // Obx(() => Text('visibleYMin : ${_timerController.visibleYMin.toString()}')),
      // Obx(() => Text(
      //     'visibleYMax - visibleYMin : ${(_timerController.visibleYMax.value - _timerController.visibleYMin.value).toString()}')),
      // Obx(() =>
      //     Text('current price : ${_timerController.currentPrice.value.toString()}')),
      // Obx(
      //   () => Text(
      //       'x값(76~535사이) : ${(((_timerController.visibleYMax.value - _timerController.currentPrice.value) / (_timerController.visibleYMax.value - _timerController.visibleYMin.value) * chartHeight) + topX).toString()}'),
      // ),
      Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 홈 버튼
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              //<-- SEE HERE
                              null,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              elevation: 0,
                              shape: CircleBorder(), //<-- SEE HERE
                            ),
                          ),
                          Text('홈'),
                        ],
                      ),
                      // 매매 버튼
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              //<-- SEE HERE
                              null,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[700],
                              elevation: 0,
                              shape: CircleBorder(), //<-- SEE HERE
                            ),
                          ),
                          Text('매매'),
                        ],
                      ),
                      // 자산내역 버튼
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              //<-- SEE HERE
                              null,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              elevation: 0,
                              shape: CircleBorder(), //<-- SEE HERE
                            ),
                          ),
                          Text('자산내역'),
                        ],
                      ),
                      // 알림 버튼
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              //<-- SEE HERE
                              null,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              elevation: 0,
                              shape: CircleBorder(), //<-- SEE HERE
                            ),
                          ),
                          Text('알림'),
                        ],
                      ),
                      // 내정보 버튼
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              //<-- SEE HERE
                              null,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              elevation: 0,
                              shape: CircleBorder(), //<-- SEE HERE
                            ),
                          ),
                          Text('내정보'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ])));
  }
}
