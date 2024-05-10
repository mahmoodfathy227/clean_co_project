import 'package:clean_co_project/View/Auth/login_screen.dart';
import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_boarding_screen_2.dart';
class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
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
            Image.asset("images/workerImage.png" , ),

            SvgPicture.asset("images/Main headline1.svg"),
            SizedBox(height: 10.h),
            SvgPicture.asset("images/Description1.svg"),
            SizedBox(height: 20.h),

            SvgPicture.asset("images/slide.svg"),
            SizedBox(height: 15.h),

            OnBoardingButton(buttonText: "Get Started", onPressed: (){
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (_)=> OnBoardingScreen2()), 
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
