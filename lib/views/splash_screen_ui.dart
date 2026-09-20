// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}


class _SplashScreenUiState extends State<SplashScreenUi> {
  @override

  void initState() {
    // โค้ดหน่วงเวลาเอาไว้
    //เปิดไปย้อนกลับไม่ได้
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculate.png',
              width: MediaQuery.of(context).size.width * 0.55,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.0235,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}