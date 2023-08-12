import 'package:flutter/material.dart';

import '../../../../style/color/color_style.dart';
import '../forget_password/resetpassword.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isChecked= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 80, 15, 50),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start your journey',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Create your account , please enter',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'your details',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Enter username',
                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Username',
                        labelStyle:
                            TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xFF5A6368),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,

                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Email address',
                        labelStyle:
                            TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xFF5A6368),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,

                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Select Country',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,

                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Phone Number',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,

                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Password',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,

                        hintStyle: TextStyle(
                            letterSpacing: 1, color: AppColors.whiteColor),
                        labelText: 'Confirm Password',
                        labelStyle:
                        TextStyle(color: AppColors.whiteColor, fontSize: 20),
                        filled: true,
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            ))),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (value){
                          setState(() {
                            isChecked = value!;
                          });
                        }
                    ),
                   const SizedBox(width: 18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("I agree with",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 2,),
                            GestureDetector(onTap: (){},
                                child: Text(" terms of services",style: TextStyle(color: Colors.red),)),
                            SizedBox(width: 2,),
                            Text("and",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("our",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 2,),
                            GestureDetector(onTap: (){},
                                child: Text("our privacy policy",style: TextStyle(color: Colors.red),)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
               const SizedBox(height: 33,),
                Padding(

                  padding: const EdgeInsets.all(7.0),
                  child: SizedBox(

                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                      }, child: Text("Sign In",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                      ),)),
                ),
                const SizedBox(height: 17,),
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
