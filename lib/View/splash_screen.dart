import 'package:clean_co_project/View/on_boarding_screens/on_boarding_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
  Future.delayed(Duration(seconds: 2) , (){
   Navigator.pushAndRemoveUntil(context,
       MaterialPageRoute(builder: (_)=> OnBoardingScreen1()
   ), (route) => false);
  })  ;

  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffD9ECF8),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset("images/Bubbles.svg" , width: deviceWidth,),
            Center(child: Image.asset("images/splashLogo.png")),
            SvgPicture.asset("images/Main headline.svg"),
            Align(
              alignment: Alignment.bottomRight,
                child: SvgPicture.asset("images/bubble 04.svg")),

          ],
        ),
      ),

    ),
    );
  }
}
