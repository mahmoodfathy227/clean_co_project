import 'package:clean_co_project/View/Auth/register_screen.dart';
import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


import '../widgets/auth_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset("images/Bubbles.svg" , width: deviceWidth, height: 210.h,
              fit: BoxFit.fill,

              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset("images/bubble 04.svg")),
                  BuildLoginCore(deviceWidth),



                ],
              ),




            ],
          ),
        ),

      ),
    );
  }

  BuildLoginCore(double deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w , vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Log In" , style: TextStyle(
              fontSize: 40.sp ,
              fontWeight: FontWeight.w800 ,
              color: Colors.black,
            fontFamily: 'inter'

          ),),
          SizedBox(height: 15.h,),
         Row(

           children: [
             LoginButton(buttonText: 'GOOGLE', onPressed: () {  },),
             SizedBox(width: 20.w,),
             LoginButton(buttonText: 'APPLE ID', onPressed: () {  },)
           ],
         ),
SizedBox(height: 15.h,),
          Center(child: Text("or"),),
          SizedBox(height: 15.h,),
          //Phone Number
          Container(
            width: deviceWidth - 50 ,
            height: 60.h,
            child:
            TextField(
              style:  TextStyle(color: Colors.black , fontSize: 12.sp),
keyboardType: TextInputType.number,
              decoration: InputDecoration(

                  filled: true,
                  fillColor: Color(0xffF5F6FA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.sp),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500] ,  fontSize: 12.sp),
                  hintText: "Enter Your Phone Number",
                  prefixIcon: Container(
                    width: 70.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("images/qa-button-01.png" , width: 30.w,),
                        ),
                        SizedBox(width: 5,),
                       Container(
                         color: Colors.grey,
                         width: 2,
                         height: 50,
                       )
                      ],
                    ),
                  )

              ),
            ),

          ),
          SizedBox(height: 10.h,),
          //Password Field
          AuthTextField(controller: passwordController, hintText: "Password", isPassword: true),
          SizedBox(height: 10.h,),
          Align(
            alignment: Alignment.bottomRight,
              child: Text("Forgot Password ?" , style: TextStyle(color: Colors.blue ,
                fontSize: 12.sp,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 1.5,
                decorationStyle:
                TextDecorationStyle.solid,),)),
          SizedBox(height: 10.h,),
          AuthButton(buttonText: "Login", onPressed: (){}),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Don't Have an Account ?" , style: TextStyle(color: Colors.black ,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
       ),)),
          SizedBox(height: 10.h,),
          InkWell(
            onTap: ()
            {

Navigator.push(context, MaterialPageRoute(builder: (_)=> RegisterScreen()));


            },
              child: SvgPicture.asset("images/registerText.svg" , width: 150.w,)),
          SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}
