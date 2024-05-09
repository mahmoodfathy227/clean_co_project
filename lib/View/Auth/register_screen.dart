import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';
import 'package:clean_co_project/View/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAgreed = false;
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
              SvgPicture.asset("images/registerComponent.svg" , width: deviceWidth, height: 150.h,
                fit: BoxFit.fill,

              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset("images/bubble 04.svg")),
                  BuildRegisterCore(deviceWidth),



                ],
              ),




            ],
          ),
        ),

      ),
    );
  }

  BuildRegisterCore(double deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w , vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
InkWell(
  onTap: (){
    Navigator.pop(context);
  },
    child: Icon(Icons.arrow_back)),
          SizedBox(height: 35.h,),
          Text("REGISTER" , style: TextStyle(fontSize: 30.sp , fontWeight: FontWeight.w500, color: Colors.black),),
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
          //Name Field
          Container(
            width: deviceWidth - 40 ,

            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF5F6FA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.sp),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp),
                  hintText: "Name",


              ),
            ),
          ),
          SizedBox(height: 15.h,),
          //Phone Field
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
                hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp),

              ),

              initialCountryCode: 'QA',


              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          SizedBox(height: 10.h,),
          //Password Field
          Container(
            width: deviceWidth - 40 ,

            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF5F6FA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.sp),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp),
                  hintText: "Password",
                  suffixIcon: Icon(Icons.visibility_off)

              ),
            ),
          ),
          SizedBox(height: 10.h,),
          //Confirm Password Field
          Container(
            width: deviceWidth - 40 ,

            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF5F6FA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.sp),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp),
                  hintText: "Confirm Password",
                  suffixIcon: Icon(Icons.visibility_off)

              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Checkbox(value: isAgreed, onChanged: (value){
                isAgreed =! isAgreed;
                setState(() {

                });
              }),
              SvgPicture.asset("images/I’ve read and agree to the terms of privacy policy.svg" ,
                width: 250.w,),
            ],
          ),
          SizedBox(height: 10.h,),
          AuthButton(buttonText: "Next", onPressed: (){}),

        ],
      ),
    );
  }
}
