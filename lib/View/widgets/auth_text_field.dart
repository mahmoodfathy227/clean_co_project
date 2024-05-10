import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key, required this.controller, required this.hintText, required this.isPassword});
final TextEditingController controller;
final String hintText;
final bool isPassword;
  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: deviceWidth - 40 ,
 height: 50.h,
      child: TextField(
        style:  TextStyle(color: Colors.black , fontSize: 12.sp),
        obscureText: widget.isPassword ? isVisible : false,
        controller: widget.controller,
        decoration: InputDecoration(

            filled: true,
            fillColor: Color(0xffF5F6FA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.sp),
            ),

            hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp),
            hintText: widget.hintText,
            suffixIcon: widget.isPassword ?
           IconButton(onPressed: (){
             isVisible =! isVisible;
             setState(() {

             });
           },
               icon: Icon( isVisible ? Icons.visibility_off  :  Icons.visibility ))

                : SizedBox()

        ),
      ),
    );
  }
}
