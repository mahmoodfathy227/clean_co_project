import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final VoidCallback onPressed;
  @override
  State<AuthButton> createState() => _AuthButtonButtonState();
}

class _AuthButtonButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return   Padding(
      padding:  EdgeInsets.symmetric( vertical: 10.h),
      child: Container(
        width: deviceWidth - 60.w,
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
