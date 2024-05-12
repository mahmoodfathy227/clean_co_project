import 'package:clean_co_project/View/Auth/login_screen.dart';
import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    const _kDuration = const Duration(milliseconds: 300);
    const _kCurve = Curves.ease;
    nextFunction() {
      _pageController.nextPage(duration: _kDuration, curve: _kCurve);
    }
    previousFunction() {
      _pageController.previousPage(duration: _kDuration, curve: _kCurve);
    }




    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:  Column(
          children: <Widget>[
            Container(
              height: deviceHeight - 200.h,
              child: PageView(
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  firstOnBoardingScreen(deviceHeight),
                  secondOnBoardingScreen(deviceHeight),
                  thirdOnBoardingScreen(deviceHeight),



                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Indicator(
                  positionIndex: 0,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: currentIndex,
                ),
              ],
            ),
            SizedBox(height: 15.h,),
            OnBoardingButton(
                buttonText: currentIndex==0 ? "Get Started" : "Next",
                onPressed: (){
                  if(currentIndex == 2){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_)=> const LoginScreen()),
                            (route) => false);
                  }else{
                    nextFunction();
                  }


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

          ],
        ),
      ),
    );

  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  firstOnBoardingScreen(deviceHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 80.h),
        SvgPicture.asset("images/onBoardingScreen1.svg" ,height: 400.h, width: 350.w),

        SvgPicture.asset("images/Main headline1.svg"),
        SizedBox(height: 10.h),
        SvgPicture.asset("images/Description1.svg"),
        SizedBox(height: 20.h),





      ],
    );
  }

  secondOnBoardingScreen(double deviceHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 80.h),
        SvgPicture.asset("images/onBoardingScreen2.svg" , height: 400.h, width: 350.w,),
        SvgPicture.asset("images/Main headline2.svg"),
        SizedBox(height: 10.h),
        SvgPicture.asset("images/Description2.svg"),
        SizedBox(height: 20.h),


      ],
    );
  }

  thirdOnBoardingScreen(double deviceHeight) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 80.h),
        SvgPicture.asset("images/onBoardingScreen3.svg" , height: 400.h, width: 350.w,),
        SvgPicture.asset("images/Main headline2.svg"),
        SizedBox(height: 10.h),
        SvgPicture.asset("images/Description2.svg"),
        SizedBox(height: 20.h),


      ],
    );
  }
}


class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({required this.currentIndex, required this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: positionIndex == currentIndex ? 9.h : 10.h,
      width: positionIndex == currentIndex ? 25.w : 10.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          color: positionIndex == currentIndex
              ? Color(0xff71CBFF)
              : Color(0xff41455E),
          borderRadius: BorderRadius.circular(100.sp)),
    );
  }
}