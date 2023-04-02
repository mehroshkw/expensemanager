import 'package:expensemanager/screens/home2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class Home extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Flutter": 42,
      "React": 58,
    };
    return SafeArea(
      child: Scaffold(
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
                      height: 150.0,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 150.0/2,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            // color: Colors.greenAccent,
                            height: 180,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5), width: 1.0),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Now you have",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
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
                                                left: 16.0,
                                                right: 16.0,
                                                top: 16.0,
                                                bottom: 16.0),
                                            // height: 30.0,
                                            // width: 40.0,
                                            // color:Color(0xff1ECB82) ,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff1ECB82),
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(20.0),
                                                    bottomLeft: Radius.circular(20.0),
                                                    bottomRight: Radius.circular(8.0),
                                                    topLeft: Radius.circular(8.0))),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  "Income",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                                Text(
                                                  "PKR 40,00",
                                                  style: TextStyle(color: Colors.white),
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
                                                left: 16.0,
                                                right: 16.0,
                                                top: 16.0,
                                                bottom: 16.0),
                                            decoration: const BoxDecoration(
                                                color: Color(0xff1ECB82),
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(20.0),
                                                    bottomLeft: Radius.circular(20.0),
                                                    bottomRight: Radius.circular(8.0),
                                                    topLeft: Radius.circular(8.0))),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  "Savings",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                                Text(
                                                  "PKR 9,000",
                                                  style: TextStyle(color: Colors.white),
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
                                                left: 30.0,
                                                right: 30.0,
                                                top: 8.0,
                                                bottom: 8.0),
                                            // height: 30.0,
                                            // width: 40.0,
                                            // color:Color(0xff1ECB82) ,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff1ECB82),
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(20.0),
                                                    bottomLeft: Radius.circular(20.0),
                                                    bottomRight: Radius.circular(8.0),
                                                    topLeft: Radius.circular(8.0))),
                                            child: Column(
                                              children: [
                                                IconButton(onPressed: (){Get.to(Home2());}, icon: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ))
                                              ],
                                            ),
                                          ),
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
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x11000000),
                            blurRadius: 4.0,
                            offset: Offset(0, 4)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Your Liability",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Details",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xbeafeca3),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "PKR ",
                                      style: TextStyle(
                                        color: Color(0xff1ECB82),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "20,000",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xbceea0a0),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "PKR ",
                                      style: TextStyle(
                                        color: Color(0xff1ECB82),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "10,000",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "There are 20,000 to take and 1,300 is to be given.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 290.0,
                  child: Container(
                    // height: 300,
                    // // width: double.maxFinite,
                      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      padding: EdgeInsets.all(30.0),
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
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xbf93F3A8)),
                        child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xe157e478)),
                            child:PieChart(
                              dataMap: dataMap,
                              animationDuration: const Duration(milliseconds: 800),
                              chartLegendSpacing: 32,
                              chartRadius: MediaQuery.of(context).size.width / 2,
                              colorList: const [
                                Colors.red,
                                Color(0xff29c989)
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
                            )
/*
                          child: PieChart(
                            PieChartData(
                              centerSpaceRadius: 35,
                              centerSpaceColor: Colors.white,
                              borderData: FlBorderData(show: true),
                              sections: [
                                PieChartSectionData(
                                    value: 42,
                                    color: Colors.redAccent,
                                    radius: 75),
                                PieChartSectionData(
                                    value: 58,
                                    color: Color(0xff29CF4E),
                                    radius: 75),
                              ],
                            ),
                          ),
*/
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
