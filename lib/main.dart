import 'package:doctor_app/screen/Mainpage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        100.heightBox,
        "choose the doctor \n you want"
            .text
            .black
            .capitalize
            .xl4
            .extraBold
            .make()
            .shimmer(primaryColor: Vx.black, secondaryColor: Colors.black54).pSymmetric(h:20),
        20.heightBox,
        'get started'
            .text
            .capitalize
            .white
            .makeCentered()
            .shimmer(
                primaryColor: Colors.white,
                secondaryColor: Colors.grey.shade100)
            .box
            .red600
            .roundedLg
            .height(30)
            .width(100)
            .make()
            .click(
          () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ).make().pSymmetric(h:30),
        20.heightBox,
        Expanded(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Image.asset(
                'assets/images/onboarding_illustration.png',
                fit: BoxFit.cover,
              )),
        )
      ]).centered(),
    );
  }
}
