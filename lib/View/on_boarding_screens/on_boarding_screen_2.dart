import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Auth/login_screen.dart';
import 'on_boarding_screen_1.dart';
import 'on_boarding_screen_3.dart';


class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Image.asset("images/onBoardingGirl.png"),
            SvgPicture.asset("images/Main headline2.svg"),
            SizedBox(height: 10.h),
            SvgPicture.asset("images/Description2.svg"),
            SizedBox(height: 20.h),

            SvgPicture.asset("images/slide2.svg"),
            SizedBox(height: 15.h),

            OnBoardingButton(buttonText: "Next", onPressed: (){
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (_)=> OnBoardingScreen3()),
                      (route) => false);
            }),


            InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (_)=> const LoginScreen()),
                          (route) => false);
                },
                child: Center(child: Text("Skip"),)),
            SizedBox(height: deviceHeight /9,),
          ],
        ),
      ),
    );
  }
}
