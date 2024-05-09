import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButton extends StatefulWidget {
  const OnBoardingButton({super.key, required this.buttonText, required this.onPressed});
final String buttonText;
final VoidCallback onPressed;
  @override
  State<OnBoardingButton> createState() => _OnBoardingButtonState();
}

class _OnBoardingButtonState extends State<OnBoardingButton> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w , vertical: 10.h),
      child: Container(
        width: deviceWidth - 70.w,
        height: 50.h,
        child: ElevatedButton(

          onPressed: widget.onPressed,
          style:   ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xff71CBFF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w) ))
          ),
          child:  Text(widget.buttonText, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
              fontSize: 13.sp

          ),),

        ),
      ),
    );
  }
}
