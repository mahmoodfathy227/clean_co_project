import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginButton extends StatefulWidget {
  const LoginButton({super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final VoidCallback onPressed;
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(

      width: 140.w,
      height: 50.h,
      child: ElevatedButton(
        style:   ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color(0xffF5F6FA)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w) ))
        ),
        onPressed: widget.onPressed,
        child: Text(widget.buttonText, style: TextStyle(
            color: Colors.black,
            letterSpacing: 4.w,
            fontSize: 12.sp
        ),),
      ),
    );
  }
}
