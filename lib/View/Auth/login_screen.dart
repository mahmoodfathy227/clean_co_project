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


            children: [
              upperPageStack(deviceWidth),
              buildMiddlePageStack(),
buildLowerPageStack()





            ],
          ),
        ),

      ),
    );
  }



  upperPageStack(deviceWidth) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [

        Container(
          decoration: const BoxDecoration(

          ),
          width: deviceWidth,
          height: 250.h,
          child: FittedBox(fit: BoxFit.fill,
            child: SvgPicture.asset("images/Bubbles.svg",


            ),

          ),
          // height: 40
        ),



        Padding(
          padding:  EdgeInsets.only(left: 25.w),
          child: Text("Log In" , style: TextStyle(
              fontSize: 40.sp ,
              fontWeight: FontWeight.w600 ,
              color: Colors.black,
              fontFamily: 'inter'

          ),),
        ),
      ],
    );
  }

  buildMiddlePageStack() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: SizedBox(
        width: 332.w,
        height: 280.h,
        child: Column(


          children: [
            SizedBox(height: 25.h,),
            //Buttons
            Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               SvgPicture.asset("images/Google BTN.svg" ,width: 151.w, height: 53.h,),
             SizedBox(width: 9.w,),
                SvgPicture.asset("images/Apple ID BTN.svg",width: 151.w, height: 53.h,)
              ],
            ),
            SizedBox(height: 25.h,),
            Center(
              child:
              SvgPicture.asset("images/or.svg"),
            ),
            SizedBox(height: 15.h,),
            //Phone Number
            Container(
              width: 332.w,
              height: 50.h,
              child:
              TextField(
                style:  TextStyle(color: Colors.black , fontSize: 12.sp),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffF5F6FA),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0.sp),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500],  fontSize: 12.sp , fontFamily: 'inter'),
                    hintText: "Enter Your Phone Number",
                    prefixIcon: Container(
                      width: 70.w,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("images/qatar 1.png" , width: 30.w,),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            color: Colors.grey,
                            width: 1.w,
                            height: 30.h,
                          )
                        ],
                      ),
                    )

                ),
              ),

            ),
            SizedBox(height: 7.h,),
            //Password Field
            AuthTextField(controller: passwordController, hintText: "Password", isPassword: true),
            SizedBox(height: 10.h,),
            Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot Password?" , style: TextStyle(color: Colors.blue ,
                  fontSize: 13.sp,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationThickness: 1.5,
                  decorationStyle:
                  TextDecorationStyle.solid,
                  fontFamily: 'inter',

                ),))
          ],
        ),
      ),
    );
  }

  buildLowerPageStack() {

    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 30.h),
          child:
          // SvgPicture.asset("images/bubble 04.svg" , fit: BoxFit.cover, height: 220.h,
          Container(
              decoration: const BoxDecoration(

              ),
              width: 170.w,
              child: FittedBox(fit: BoxFit.fill,
                child: SvgPicture.asset("images/bubble 04.svg",


                  ),

              ),
              // height: 40
          )
        ),

        Column(
          children: [
            SizedBox(height: 10.h,),
            SvgPicture.asset("images/Login BTN.svg" , width: 325.w),
            SizedBox(height: 10.h,),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 30.w , top: 10.h),
                  child: SvgPicture.asset("images/Don’t have an account_.svg" ,
                    height: 12.h)


                )),
            SizedBox(height: 10.h,),
            GestureDetector(

                onTap: ()
                {

                  Navigator.push(context, MaterialPageRoute(builder: (_)=> RegisterScreen()));


                },
                child: Align(
                  alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w , top: 10.h),
                      child: SvgPicture.asset("images/registerText.svg" , height: 20.h,),
                    ))),
            SizedBox(height: 10.h,),
          ],
        ),
      ],
    );
  }
}
