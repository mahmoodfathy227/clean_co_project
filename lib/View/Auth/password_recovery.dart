import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/auth_text_field.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';

import 'package:clean_co_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
              buildUpperPageStack(deviceWidth),
              buildMiddlePageStack(deviceWidth),
              buildLowerPageStack()


            ],
          ),
        ),
      ),
    );
  }







  buildUpperPageStack(deviceWidth) {
    return Stack(

      children: [

        Container(
          width: deviceWidth,
          height: 200.h,
          child: FittedBox(
            fit: BoxFit.cover,
            child: SvgPicture.asset("images/registerComponent.svg",



            ),
          ),
        ),



        Padding(
          padding:  EdgeInsets.only( top: 30.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Padding(
                padding:  EdgeInsets.only( top: 100.h  ),
                child:   Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(

                              color: Colors.white,
borderRadius: BorderRadius.circular(66.sp),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5.sp,
                                  blurRadius: 7.sp,
                                  offset: Offset(0, 3.sp,), // changes position of shadow
                                ),

                              ]

                          ),
                          child: SvgPicture.asset("images/ellispse.svg" , )),
              
                      Image.asset("images/image.png")
                    ],
                  ),
                )
              ),
              

            ],
          ),
        ),
      ],
    );
  }

  buildMiddlePageStack(deviceWidth) {
    return
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w ),
        child: SizedBox(
          width: 332.w,
          height: 230.h,
          child: Column(


            children: [
              SizedBox(height: largeSpacing,),
              SvgPicture.asset("images/Title (1).svg" , width: 190.w,),
              SizedBox(height: largeSpacing,),
              SvgPicture.asset("images/How you would like to restore your password_.svg" , width: 260.w,),
              SizedBox(height: 50.h,),
              //Phone Field
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




            ],
          ),
        ),
      );




  }

  buildLowerPageStack() {
    return Column(

      children: [


        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: SizedBox(
                  width: 342.w,
                  height: 170.h,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                      child: SvgPicture.asset("images/next button.svg"   ))),
            ),

            Padding(
              padding:  EdgeInsets.only(bottom: 30.h),
              child: SvgPicture.asset("images/cancel.svg"),
            )
          ],
        ),


      ],
    );
  }
}
