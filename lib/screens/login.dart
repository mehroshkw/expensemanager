import 'package:expensemanager/screens/homeuserroles.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final width = MediaQuery.of(context).size.width;
  final  height = MediaQuery.of(context).size.height;
   SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp,
     DeviceOrientation.portraitDown,
   ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/9,),
              Container(
                width: width,
                height: height/8,
                child: Image.network(
                  // "https://w7.pngwing.com/pngs/890/998/png-transparent-expense-management-appbrain-deloitte-luxembourg-expense-grass-revenue-money-thumbnail.png",
              "https://banner2.cleanpng.com/20180508/veq/kisspng-xbox-360-logo-xbox-one-computer-icons-tmall-super-brand-day-5af1f10abe93b3.4018466415258053227806.jpg",
                width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: height/20,),
              Text("Welcome!"
              ,style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1ecb82),
                ),
              ),
              Text("Please sign in to continue",
              style: TextStyle(
                fontSize: 16,
              ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(16.0),
                // margin: EdgeInsets.all(4.0),
                height: height/2,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("User Name"),
                    TextFormField(

                      decoration: const InputDecoration(hintText: 'Username',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Password"),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text("Forgot Password?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color:Color(0xff1ECB82),
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    ReusablePrimaryButton(buttonText: 'LOGIN', onTap: () {
                      Get.to(UserRoles());
                    },)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
