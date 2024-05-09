import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Auth/login_screen.dart';
import 'on_boarding_screen_1.dart';


class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({super.key});

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
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
            Image.asset("images/onBoardingWorkingGuy.png"),
            SvgPicture.asset("images/Main headline2.svg"),
            SizedBox(height: 10.h),
            SvgPicture.asset("images/Description2.svg"),
            SizedBox(height: 20.h),

            SvgPicture.asset("images/slide3.svg"),
            SizedBox(height: 15.h),

            OnBoardingButton(buttonText: "Next", onPressed: (){
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (_)=> LoginScreen()),
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
