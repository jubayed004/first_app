import 'package:first_app/style/color/color_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Home/home_screen.dart';
import '../bottomnavigationbar/bottomnavigationbar_Screen.dart';

class Pricing_Screen extends StatefulWidget {
  const Pricing_Screen({super.key});

  @override
  State<Pricing_Screen> createState() => _Pricing_ScreenState();
}

class _Pricing_ScreenState extends State<Pricing_Screen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xff192D36),

        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MainBottomNavigationBar()));
          }, icon: Icon(Icons.arrow_back),
        ),
        title: Text("Pricing Plan",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 436,
              width: 256,
              child: Card(
                color: Color(0xff192D36),
                child: Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: EdgeInsets.only(top:20 ),
                       child: Text("Basic",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
                     ),
                     SizedBox(height: 6,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text( '\$${'50.00'}',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w600) ),
                         SizedBox(width: 6,),
                         Padding(
                           padding: const EdgeInsets.only(top: 6),
                           child: Text("/1month",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
                         )
                       ],
                     ),
                     SizedBox(height:40 ,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 32),
                           child: Container(
                             height: 10,
                             width: 10,
                             decoration: const BoxDecoration(
                                   shape: BoxShape.circle,
                               color: Colors.red,
                             ),
                             child:  Icon(Icons.check_outlined,size: 10,),
                           ),
                         ),
                         SizedBox(width:16 ,),
                         Text("5-7 Signals send daily",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),

                       ],
                     ),
                     SizedBox(height: 22,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 32),
                           child: Container(
                             height: 10,
                             width: 10,
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.red,
                             ),
                             child:  Icon(Icons.check_outlined,size: 10,),
                           ),
                         ),
                         SizedBox(width:16 ,),
                         Text("85% Success rate",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),

                       ],
                     ),
                     SizedBox(height: 22,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 32),
                           child: Container(
                             height: 10,
                             width: 10,
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.red,
                             ),
                             child:  Icon(Icons.check_outlined,size: 10,),
                           ),
                         ),
                         const SizedBox(width:16 ,),
                         Text("Entry take profit & stop",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),

                       ],
                     ),
                     SizedBox(height: 22,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 32),
                           child: Container(
                             height: 10,
                             width: 10,
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.red,
                             ),
                             child:  Icon(Icons.check_outlined,size: 10,),
                           ),
                         ),
                         SizedBox(width:16 ,),
                         Text("Amount to risk per trade",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),

                       ],
                     ),
                     SizedBox(height: 22,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 32),
                           child: Container(
                             height: 10,
                             width: 10,
                             decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.red,
                             ),
                             child:  Icon(Icons.check_outlined,size: 10,),
                           ),
                         ),
                         SizedBox(width:16 ,),
                         Text("Risk reward ratio",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),

                       ],
                     ),
                     SizedBox(height: 30,),
                     SizedBox(
                       height: 40,
                       width: 220,
                       // width: MediaQuery.of(context).size.width,
                       child: ElevatedButton(onPressed: (){},
                           child: Text("Choose Plan",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),)
                       ),
                     ),
                   ],
                ),
              ),
            ),
            const SizedBox(height:40 ),
            SmoothPageIndicator(
              controller: pageController,
              count:  3,
              axisDirection: Axis.horizontal,
              effect:  const SlideEffect(
                  spacing:  8.0,
                  radius:  5,
                  dotWidth: 14,
                  dotHeight:  9,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  activeDotColor:  Colors.red
              ),
            ),

          ],
        ),
      ),
    );
  }
}
