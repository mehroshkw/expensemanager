import 'package:expensemanager/binding/add_binding.dart';
import 'package:expensemanager/binding/addasset_binding.dart';
import 'package:expensemanager/screens/add.dart';
import 'package:expensemanager/screens/add_expense.dart';
import 'package:expensemanager/screens/add_liability.dart';
import 'package:expensemanager/screens/addaccount1.dart';
import 'package:expensemanager/screens/addaccount2.dart';
import 'package:expensemanager/screens/addasset.dart';
import 'package:expensemanager/screens/assets.dart';
import 'package:expensemanager/screens/dashboard.dart';
import 'package:expensemanager/screens/home2.dart';
import 'package:expensemanager/screens/homeuserroles.dart';
import 'package:expensemanager/screens/income.dart';
import 'package:expensemanager/screens/income2.dart';
import 'package:expensemanager/screens/liability.dart';
import 'package:expensemanager/screens/login.dart';
import 'package:expensemanager/screens/saving.dart';
import 'package:expensemanager/screens/splashScreen.dart';
import 'package:expensemanager/unused/tab_screens.dart';
import 'package:expensemanager/screens/test.dart';
import 'package:expensemanager/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(GetMaterialApp(
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
    // locale: Locale('he', 'IL'),
    translationsKeys: const {
      'he_IL': {
        'userrole': 'יתרה כוללת',
      },
      'en_US': {'userrole': 'What kind of user are you?'}
    },
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    getPages: [
      GetPage(
        name: '/addAsset',
        page: () => AddAsset(),
        binding: AssetBinding(),
      ),
      GetPage(
        name: '/userrole',
        page: () => UserRoles(),
        binding: AssetBinding(),
      ),
      GetPage(
        name: '/add',
        page: () => Add(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/income',
        page: () => Income(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/saving',
        page: () => Saving(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/addaccount2',
        page: () => AddAccount2(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/addaccount1',
        page: () => AddAccount1(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/addliability',
        page: () => MyTabScreen(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/addexpense',
        page: () => AddExpense(),
        // binding: AddBinding(),
      ),
      GetPage(
        name: '/transactions',
        page: () => Transactions(),
      ),
      GetPage(
        name: '/landingpage',
        page: () => LandingPage(),
      ),
      GetPage(
        name: '/assets',
        page: () => Assets(),
      ),
      GetPage(
        name: '/splash',
        page: () => SplashScreen(),
      ),
      GetPage(
        name: '/liabilityscreen',
        page: () => LiabilityScreen(),
      ),
      GetPage(
        name: '/home2',
        page: () => Home2(),
      ),
      GetPage(
        name: '/income2',
        page: () => Income2(),
      ),
      GetPage(
        name: '/test',
        page: () => MyHomePage(),
      ),
      GetPage(
        name: '/addliascreen',
        page: () => AddLiabilityScreen(),
      ),
      GetPage(
        name: '/login',
        page: () => Login(),
      ),
    ],
  ));
}
