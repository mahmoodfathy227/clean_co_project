import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAuthTextField extends StatefulWidget {


  const CustomAuthTextField({super.key, required this.controller, required this.hintText, required this.isPassword});
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  @override
  State<CustomAuthTextField> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomAuthTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: 332.w,
      height: 50.h,
      child: TextField(
        textAlign: TextAlign.center,
        style:  TextStyle(color: Colors.black , fontSize: 12.sp),
        obscureText: widget.isPassword ? isVisible : false,
        controller: widget.controller,
        decoration: InputDecoration(

            filled: true,
            fillColor: Color(0xffF5F6FA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.sp),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),

            hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp , fontFamily: 'inter'),
            hintText: widget.hintText,


        ),
      ),
    );
  }
}
