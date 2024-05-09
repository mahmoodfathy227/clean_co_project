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
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Image.asset("images/workerImage.png"),
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
