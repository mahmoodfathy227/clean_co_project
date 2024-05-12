import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/auth_text_field.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';

import 'package:clean_co_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              buildLowerPageStack(),


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
                padding:  EdgeInsets.only(left: 25.w , top: 20.h),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50.w,
                    height: 50.h,

                    decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5.sp,
                          blurRadius: 7.sp,
                          offset: Offset(0, 3.sp,), // changes position of shadow
                        ),

                      ]

                    ),

                    child: Icon(Icons.arrow_back , color: Colors.black, size: 15.sp,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25.w , top: 35.h  ),
                child:   Container(
                  width: 191.w,

                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff151940),
                        fontFamily: 'allerta'),
                  ),
                ),
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
          height: 430.h,
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
              //Name Field
              AuthTextField(
                  controller: nameController, hintText: "Name", isPassword: false),
              SizedBox(
                height: smallSpacing,
              ),
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
              SizedBox(
                height: smallSpacing,
              ),
              //Password Field
              AuthTextField(
                  controller: passwordController,
                  hintText: "Password",
                  isPassword: true),
              SizedBox(
                height: smallSpacing,
              ),
              //Confirm Password Field
              AuthTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  isPassword: true),
              SizedBox(
                height: smallSpacing,
              ),
              Row(
                children: [
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(Color(0xffBFC6EE)),
                      side: BorderSide(
                        color: Color(0xff5771F9)
                      ),
                      checkColor: Theme.of(context).primaryColor,
                      value: isAgreed,
                      onChanged: (value) {
                        isAgreed = !isAgreed;
                        setState(() {});
                      }),
                  SvgPicture.asset(
                    "images/I’ve read and agree to the terms of privacy policy.svg",
                    width: 260.w,
                  ),
                ],
              ),
              SizedBox(
                height: smallSpacing,
              ),

            ],
          ),
        ),
      );




  }

  buildLowerPageStack() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: const BoxDecoration(

          ),
          width: 150.w,
          height: 170.h,
          child: FittedBox(fit: BoxFit.cover,
            child: SvgPicture.asset("images/bubble 04.svg",


            ),

          ),
          // height: 40
        ),

        Center(
          child: SizedBox(
              width: 342.w,
              child: SvgPicture.asset("images/next button.svg" , width: 350.w)),
        ),
      ],
    );
  }
}
