import 'dart:async';

import 'package:first_app/style/color/color_style.dart';

import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Home/home_screen.dart';
import '../../bottomnavigationbar/bottomnavigationbar_Screen.dart';
import '../forget_password/resetpassword.dart';

class OtpVerification extends StatelessWidget {
   const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 45,),
                Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => ResetPassword()));
                    }, icon: Icon(Icons.arrow_back), color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("OTP Verification",
                      style: TextStyle(color: Colors.white),),


                  ],
                ),
                const SizedBox(height: 105,),

                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 111,
                        height: 109,
                        child: Image.asset("assets/image/image_2.png"),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        child: Text("We have sent the code erification to your",
                          style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 2,),
                      Text("email  demo123@gmail.com",
                        style: TextStyle(color: Colors.white),),

                    ],
                  ),
                ),
                SizedBox(height: 45,),

                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 41,
                    activeFillColor: Color(0xFF0D222B),
                    inactiveFillColor: AppColors.secondaryColor,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),


                SizedBox(height: 50,),
                Padding(

                  padding: const EdgeInsets.all(7.0),
                  child: SizedBox(

                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainBottomNavigationBar()));
                      }, child: Text("Sign In",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                      ),)),
                ),
                SizedBox(height:44 ,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have An Account?",style: TextStyle(color: Colors.white,fontSize: 12)),
                      TextButton(onPressed:(){

                      }, child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text("Sign In now",style: TextStyle(color: Colors.red,fontSize: 12)),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
