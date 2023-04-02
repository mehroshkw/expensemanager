import 'package:expensemanager/screens/income.dart';
import 'package:expensemanager/screens/income2.dart';
import 'package:expensemanager/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import '../widegts/reusablebutton.dart';
import 'newIncome.dart';

class Home2 extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);  // to re-show bars

    Map<String, double> dataMap = {
      "one": 42,
      "two": 58,
    };
    return Scaffold(

      key: _scaffoldKey,
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    color: const Color(0xff1ECB82),
                    width: MediaQuery.of(context).size.width,
                    height: 160.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 60.0, left: 10.0, right: 10.0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon(Icons.settings_rounded, color: Colors.white,size: 30.0,),
                          IconButton(
                              onPressed: () {
                                Get.to(Setting());
                              },
                              icon: const Icon(
                                Icons.settings_rounded,
                                color: Colors.white,
                                size: 30.0,
                              )),
                          IconButton(
                              onPressed: () {
                                Get.to(Income2());
                              },
                              icon: const Icon(Icons.compare_arrows,
                                  color: Colors.white, size: 30.0)),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 180.0 / 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          // color: Colors.greenAccent,
                          height: 250,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1.0),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Total Balance",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "PKR",
                                        style: TextStyle(
                                          fontSize: 32.0,
                                          color: Color(0xff1ECB82),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                          child: Text(
                                        "28,300",
                                        style: TextStyle(
                                          fontSize: 32.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 8.0,
                                              right: 16.0,
                                              top: 16.0,
                                              bottom: 16.0),
                                          // height: 30.0,
                                          // width: 40.0,
                                          // color:Color(0xff1ECB82) ,
                                          decoration: const BoxDecoration(
                                              color: Color(0xff1ECB82),
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                              )),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Income",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "PKR 40,00",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 8.0,
                                              right: 16.0,
                                              top: 16.0,
                                              bottom: 16.0),
                                          // height: 30.0,
                                          // width: 40.0,
                                          // color:Color(0xff1ECB82) ,
                                          decoration: const BoxDecoration(
                                              color: Color(0xff1DB7E8),
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                              )),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Savings",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "PKR 9,000",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 8.0,
                                              right: 16.0,
                                              top: 16.0,
                                              bottom: 16.0),
                                          // height: 30.0,
                                          // width: 40.0,
                                          // color:Color(0xff1ECB82) ,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffEE2727),
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                              )),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Liability",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "PKR 40,00",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 8.0,
                                              right: 16.0,
                                              top: 16.0,
                                              bottom: 16.0),
                                          // height: 30.0,
                                          // width: 40.0,
                                          // color:Color(0xff1ECB82) ,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffEA8C63),
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                              )),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "assets",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "PKR 9,000",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 210.0,
                child: Container(
                    // height: 300,
                    // // width: double.maxFinite,
                    margin: const EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x86747373),
                            blurRadius: 4.0,
                            offset: Offset(0, 0)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Monthly Expense Chart",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.bottomSheet(
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      height: 200,
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.all(2.0),
                                            child: GestureDetector(
                                              child: IconButton(
                                                onPressed: (){
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icon(Icons.close),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          ReusablePrimaryButton(
                                            buttonText: 'Add Income',
                                            onTap: () { Get.to(Income());
                                              },
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          ReusablePrimaryButton(
                                            buttonText: 'Edit Income',
                                            onTap: () { Get.to(Income2());
                                              },
                                          )
                                        ],
                                      )),
                                  barrierColor:
                                      Colors.black38.withOpacity(0.5),
                                  backgroundColor: Colors.transparent,
                                  isDismissible: true,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff1ECB82),
                              ),
                              child: const Text(
                                "Add Expense",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xbf93F3A8)),
                          child: Container(
                              margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xe157e478)),
                              child: PieChart(
                                dataMap: dataMap,
                                animationDuration:
                                    const Duration(milliseconds: 800),
                                chartLegendSpacing: 32,
                                chartRadius:
                                    MediaQuery.of(context).size.width / 1,
                                colorList: const [
                                  Colors.red,
                                  Color(0xff29CF4E)
                                ],
                                initialAngleInDegree: 0,
                                chartType: ChartType.disc,
                                ringStrokeWidth: 32,
                                centerText: "Oct 1, 2020",
                                legendOptions: const LegendOptions(
                                  showLegendsInRow: false,
                                  legendPosition: LegendPosition.right,
                                  showLegends: false,
                                  legendShape: BoxShape.circle,
                                  legendTextStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                chartValuesOptions: const ChartValuesOptions(
                                  showChartValueBackground: true,
                                  showChartValues: true,
                                  showChartValuesInPercentage: false,
                                  showChartValuesOutside: false,
                                  decimalPlaces: 1,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "You spent  PKR 20,700 in this month",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
