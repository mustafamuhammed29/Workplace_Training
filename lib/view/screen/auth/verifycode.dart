import 'package:workplace_training/controller/auth/forgetpassword_controller.dart';
import 'package:workplace_training/controller/auth/verifycode_controller.dart';
import 'package:workplace_training/core/constant/color.dart';
import 'package:workplace_training/view/widget/auth/custombuttonauth.dart';
import 'package:workplace_training/view/widget/auth/customtextbodyauth.dart';
import 'package:workplace_training/view/widget/auth/customtextformauth.dart';
import 'package:workplace_training/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =
    Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
              "Please Enter The Digit Code Sent To mustafamuhammed@gmail.com"),
          const SizedBox(height: 15),
          OtpTextField(

            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            showFieldAsBox: true,
            onCodeChanged: (String code) {
            },
            onSubmit: (String verificationCode) {
              controller.goToResetPassword() ;
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}