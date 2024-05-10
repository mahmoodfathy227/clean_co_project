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
              SvgPicture.asset(
                "images/registerComponent.svg",
                width: 250.w,
                height: 200.h,
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
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildUpperForm(),
          buildRegisterFields(deviceWidth),
          AuthButton(buttonText: "Next", onPressed: () {}),
        ],
      ),
    );
  }

  buildUpperForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: const Icon(Icons.arrow_back),
            )),
        SizedBox(
          height: 35.h,
        ),
        Text(
          "REGISTER",
          style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontFamily: 'allerta'),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            LoginButton(
              buttonText: 'GOOGLE',
              onPressed: () {},
            ),
            SizedBox(
              width: 20.w,
            ),
            LoginButton(
              buttonText: 'APPLE ID',
              onPressed: () {},
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        const Center(
          child: Text(
            "or",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }

  buildRegisterFields(deviceWidth) {
    return Column(
      children: [
        //Name Field
        AuthTextField(
            controller: nameController, hintText: "Name", isPassword: false),
        SizedBox(
          height: smallSpacing,
        ),
        //Phone Field
        SizedBox(
          width: deviceWidth - 50,
          height: 60.h,
          child: TextField(
            style:  TextStyle(color: Colors.black , fontSize: 12.sp),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF5F6FA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.sp),
                ),
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 12.sp),
                hintText: "Enter Your Phone Number",
                prefixIcon: Container(
                  width: 70.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          "images/qa-button-01.png",
                          width: 30.w,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 3,
                        height: 50,
                      )
                    ],
                  ),
                )),
          ),
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
                fillColor: MaterialStatePropertyAll(Colors.white),
                checkColor: Theme.of(context).primaryColor,
                value: isAgreed,
                onChanged: (value) {
                  isAgreed = !isAgreed;
                  setState(() {});
                }),
            SvgPicture.asset(
              "images/I’ve read and agree to the terms of privacy policy.svg",
              width: 250.w,
            ),
          ],
        ),
        SizedBox(
          height: smallSpacing,
        ),
      ],
    );
  }
}
