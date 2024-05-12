import 'package:clean_co_project/View/widgets/auth_button.dart';
import 'package:clean_co_project/View/widgets/auth_text_field.dart';
import 'package:clean_co_project/View/widgets/login_button.dart';

import 'package:clean_co_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class CodeSentScreen extends StatefulWidget {
  const CodeSentScreen({super.key});

  @override
  State<CodeSentScreen> createState() => _CodeSentScreenState();
}

class _CodeSentScreenState extends State<CodeSentScreen> {
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

              Align(
                alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset("images/lowerBubble5.svg" , height: 250.h,))


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
          height: 230.h,
          child: FittedBox(
            fit: BoxFit.cover,
            child: SvgPicture.asset("images/Bubbles5.svg",



            ),
          ),
        ),



        Padding(
          padding:  EdgeInsets.only(left: 25.w , top: 50.h),
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
      ],
    );
  }

  buildMiddlePageStack(deviceWidth) {
    return
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w ),
        child: SizedBox(
          width: 332.w,
          height: 350.h,
          child: Column(


            children: [
              SizedBox(height: largeSpacing,),
             Text("Hello, Mohamed Ali !!" , style: TextStyle(fontFamily: 'allerta' ,
                 fontSize: 28.sp , fontWeight: FontWeight.w900,
             color: Color(0xff202020)
             ),),
              SizedBox(height: largeSpacing,),
              Column(
                children: [
                  Container(
                    width: deviceWidth - 60,
                    child: Text("Check Your SMS inbox, we have sent "
                      , style: TextStyle(
                        fontFamily: 'inter' ,
                        fontSize: 18.sp , fontWeight: FontWeight.w500,
                        color: Color(0xff202020)
                    ),),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    width: deviceWidth - 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("you the code at "
                          , style: TextStyle(
                              fontFamily: 'inter' ,
                              fontSize: 18.sp , fontWeight: FontWeight.w400,
                              color: Color(0xff202020)
                          ),),
                        Text("+974 6621 9400", style: TextStyle(
                            fontFamily: 'inter' ,
                            fontSize: 18.sp , fontWeight: FontWeight.w700,
                            color: Color(0xff202020)
                        ),)
                      ],
                    ),
                  ),
                ],
              ),



Row(
  children: List.generate(4, (index) =>
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 5.w , vertical: 50.h),
    child: Container(
      width: 66.w,
      height: 66.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Color(0xffF8F8F8)
      ),
    ),
  )

  ).toList(),
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
                  child: SvgPicture.asset("images/next button.svg" , height: 100.h ))),
        ),

        SvgPicture.asset("images/cancel.svg")
      ],
    );
  }
}
