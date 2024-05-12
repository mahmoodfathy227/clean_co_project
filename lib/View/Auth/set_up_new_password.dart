import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/auth_text_field.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';

import 'package:clean_co_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_auth_text_field.dart';


class SetUpNewPasswordScreen extends StatefulWidget {
  const SetUpNewPasswordScreen({super.key});

  @override
  State<SetUpNewPasswordScreen> createState() => _SetUpNewPasswordScreenState();
}

class _SetUpNewPasswordScreenState extends State<SetUpNewPasswordScreen> {

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
          height: 320.h,
          child: Column(


            children: [
              SizedBox(height: largeSpacing,),
              SvgPicture.asset("images/setUpNewPassword.svg" , width: 190.w,),
              SizedBox(height: largeSpacing,),
              SvgPicture.asset("images/Please, setup a new password for your account.svg" , width: 260.w,),
              SizedBox(height: 50.h,),
              //Phone Field
               CustomAuthTextField(
                controller: passwordController,
                 hintText: 'New Password',
                 isPassword: true,
               ),
              SizedBox(height: smallSpacing,),
              CustomAuthTextField(
                controller: passwordController,
                hintText: 'Repeat Password',
                isPassword: true,
              )




            ],
          ),
        ),
      );




  }

  buildLowerPageStack() {
    return Column(

      children: [

        Center(
          child: SizedBox(
              width: 342.w,
              height: 80.h,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SvgPicture.asset("images/save.svg" , height: 100.h ))),
        ),
        SizedBox(height: largeSpacing),
        SvgPicture.asset("images/cancel.svg")
      ],
    );
  }
}
