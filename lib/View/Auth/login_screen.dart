import 'package:clean_co_project/View/Auth/register_screen.dart';
import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';
import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

          Text("LOG IN" , style: TextStyle(fontSize: 30.sp , fontWeight: FontWeight.w500 , color: Colors.black),),
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
          Container(
            width: deviceWidth - 50 ,
            height: 100,
            child: IntlPhoneField(

              decoration:  InputDecoration(

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.sp)
                ),
               filled: true,
                fillColor: Color(0xffF5F6FA),
                focusColor: Colors.blue,
hintText: "Enter Your Phone Number",
    hintStyle: TextStyle(color: Colors.grey[500] , fontSize: 12.sp),

              ),

              initialCountryCode: 'QA',
              autofocus: true,

              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            width: deviceWidth - 40 ,

            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF5F6FA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.sp),
                ),
                hintStyle: TextStyle(color: Colors.grey[500] ,  fontSize: 12.sp),
                hintText: "Password",
suffixIcon: Icon(Icons.visibility_off)

              ),
            ),
          ),
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
                fontSize: 12.sp,
       ),)),
          SizedBox(height: 10.h,),
          InkWell(
            onTap: ()
            {

Navigator.push(context, MaterialPageRoute(builder: (_)=> RegisterScreen()));


            },
              child: SvgPicture.asset("images/registerText.svg" , width: 150.w,))
        ],
      ),
    );
  }
}
