import 'package:first_app/view/screen/auth/login/SignUpScreen.dart';


import 'package:flutter/material.dart';

import '../../../../style/color/color_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool light=true;
  bool passwordVisible =false;
  bool isSwitch=true;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Padding(
          padding: EdgeInsets.fromLTRB(15, 80, 15, 50),
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let’s sign you in.',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Welcome back, please enter',
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
                  height: 50,
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        fillColor: AppColors.secondaryColor,
                        hintText: 'Enter username',

                        hintStyle:
                        TextStyle(letterSpacing: 1, color: AppColors.whiteColor,fontSize: 15),
                        labelText: 'Username',

                        labelStyle: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide()
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5A6368),
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child:Container(

                    child: TextField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(

                        hintText: "Password",
                        hintStyle:
                        TextStyle(letterSpacing: 1, color: AppColors.whiteColor,fontSize: 15),
                        labelText:"Enter Password" ,
                          labelStyle: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20
                          ),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),

                        filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide()
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF5A6368),
                              )
                          )
                      ),

                    ),
                  ),
                ),

                Row(
                  children: [
                  SizedBox(height: 15,
                    width: 31,
                    child: Switch(
                    value: isSwitch,
                    onChanged: (value) {

                      setState(() {
                        isSwitch = value;
                      });
                    }
                    ),

                  ),
                    const SizedBox(width: 10,),

                    Text("Remember me",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("Forgot password?",style: TextStyle(color: Colors.white,fontSize: 12)),),
                  ],
                ),
                const SizedBox(height: 39,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(

                      padding: const EdgeInsets.all(13.0),
                      child: SizedBox(

                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(onPressed: (){}, child: Text("Sign In",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red
                          ),)),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 12)),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      }, child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text("Register Now",style: TextStyle(color: Colors.red,fontSize: 12)),
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




