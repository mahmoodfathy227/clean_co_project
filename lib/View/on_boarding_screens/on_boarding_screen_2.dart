import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Auth/login_screen.dart';

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


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Image.asset("images/onBoardingGirl.png" ),
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


            GestureDetector(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (_)=> const LoginScreen()),
                          (route) => false);
                },
                child: SizedBox(
                    width: 100.h,
                    child: Center(child: Text("Skip"  , style: TextStyle(color: Colors.black54 ,fontSize: 12.sp),),))
            ),
            SizedBox(height: deviceHeight /9,),
          ],
        ),
      ),
    );
  }
}
