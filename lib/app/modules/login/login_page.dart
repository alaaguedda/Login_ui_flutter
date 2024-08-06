import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ofrcima_flutter/app/core/components/buttons/primary_button_one.dart';
import 'package:ofrcima_flutter/app/core/components/buttons/signin_button.dart';
import 'package:ofrcima_flutter/app/core/components/others/textfield_component.dart';
import 'package:ofrcima_flutter/app/core/constants/icon_constant.dart';
import 'package:ofrcima_flutter/app/core/constants/images_constant.dart';
import 'package:ofrcima_flutter/app/core/constants/string_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ofrcima_flutter/app/core/styles/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.backgroundColor,
        title: Center(
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
      ),
      body: Container(
        height: 926.h,
        color: MainColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.all(15).h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        child: SvgPicture.asset(IconConstant.lockIcon,color: MainColors.primaryColor,),
                      ),
                    ),
                    SizedBox(width: 20.w,)
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.all(8.0).r,
                child: Container(
                    width: 360.w,
                    child: CustomTextField(
                      
                        hintText: StringConstant.username,
                        borderColor: MainColors.whiteColor,
                        textColor: MainColors.primaryColor,
                        hintTextColor: MainColors.hintTextColor)),
              ),
              SizedBox(height: 3.0),
              Container(
                width: 360.w,
                child: CustomTextField(
                  
                    hintText: StringConstant.password,
                    borderColor: MainColors.whiteColor,
                    textColor: MainColors.primaryColor,
                    hintTextColor: MainColors.hintTextColor),
              ),
              SizedBox(height: 16.0.h),
              Container(
                  height: 80.h,
                  width: 400.w,
                  child: PrimaryButtonOne(
                      text: StringConstant.signIn ,fontSize: 22.sp,
                      color: MainColors.primaryColor,
                      textColor: Colors.white,
                      onPressed: () {})),
              SizedBox(height: 90.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    onPressed: () {print('google sign in');},
                    assetpath: ImagesConstant.googleLogo,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SignInButton(
                    onPressed: () {print('apple sign in ');},
                    assetpath: ImagesConstant.appleLogo,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(StringConstant.continueAsGuest),
                  GestureDetector(
                      onTap: () {
                        print('hello');
                      },
                      child: Container(
                          child: Text(
                        StringConstant.clickHere,
                        style: TextStyle(color: Colors.blue),
                      ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
