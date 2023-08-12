import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../style/color/color_style.dart';
import '../pricing/pricing_screen.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.secondaryColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,),
                  child: Card(
                    color: Color(0xFF192D36),
                    elevation: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(1.0),
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF12262F),
                                image: DecorationImage(scale: 4, image: AssetImage('assets/image/money.png',))
                            ),
                          ),
                        ),
                        const  SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$ ${'7,5487'}',
                              style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Total balance',
                              style: TextStyle(color:AppColors.whiteColor,fontSize: 12,fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: 125,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return SizedBox(
                        height: 150,
                        width: 130,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 15,),
                          child: Card(
                            color: Color(0xFF192D36),
                            elevation: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 38,
                                    width: 38,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF12262F),
                                        image: DecorationImage(scale: 4, image: AssetImage('assets/image/money.png',))
                                    ),
                                  ),
                                ),
                                const  SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$ ${'7,5487'}',
                                      style: TextStyle(color: AppColors.primaryColor,fontSize: 18,fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Total balance',
                                      style: TextStyle(color:AppColors.whiteColor,fontSize: 12,fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Latest Signal",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 11,),
              SizedBox(
                height: 400,
                child: Column(
                  children: [
                    SizedBox(
                            height: 80,
                            width: double.infinity,
                            child: Card(
                              elevation: 1,
                              color: Color(0xFF192D36),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Text('01',
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),),),
                                      decoration:  BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        color: Color(0xFF30424A),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 11,),
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Signal Name Here',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                           Icon(Icons.lock_clock,color: Color(0xFFD1D5D7),size: 14,),
                                          SizedBox(width: 2,),
                                          Text('2021-12-01 09:28 AM',style: TextStyle(color: Color(0xFFD1D5D7),fontSize: 12,fontWeight: FontWeight.w600),)
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 29,
                                      width: 29,
                                      child: Center(
                                        child: Container(
                                          child: Center(
                                            child: Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,size: 14,),
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.secondaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                    SizedBox(height: 12,),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Card(
                        elevation: 1,
                        color: Color(0xFF192D36),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Text('01',
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),),),
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: Color(0xFF30424A),
                                ),
                              ),
                            ),
                            SizedBox(width: 11,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Signal Name Here',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Icon(Icons.lock_clock,color: Color(0xFFD1D5D7),size: 14,),
                                    SizedBox(width: 2,),
                                    Text('2021-12-01 09:28 AM',style: TextStyle(color: Color(0xFFD1D5D7),fontSize: 12,fontWeight: FontWeight.w600),)
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 29,
                                width: 29,
                                child: Center(
                                  child: Container(
                                    child: Center(
                                      child: Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,size: 14,),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Card(
                        elevation: 1,
                        color: Color(0xFF192D36),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Text('01',
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),),),
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: Color(0xFF30424A),
                                ),
                              ),
                            ),
                            SizedBox(width: 11,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Signal Name Here',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Icon(Icons.lock_clock,color: Color(0xFFD1D5D7),size: 14,),
                                    SizedBox(width: 2,),
                                    Text('2021-12-01 09:28 AM',style: TextStyle(color: Color(0xFFD1D5D7),fontSize: 12,fontWeight: FontWeight.w600),)
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 29,
                                width: 29,
                                child: Center(
                                  child: Container(
                                    child: Center(
                                      child: Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,size: 14,),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Card(
                        elevation: 1,
                        color: Color(0xFF192D36),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Text('01',
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),),),
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                  color: Color(0xFF30424A),
                                ),
                              ),
                            ),
                            SizedBox(width: 11,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Signal Name Here',style: TextStyle(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w400),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Icon(Icons.lock_clock,color: Color(0xFFD1D5D7),size: 14,),
                                    SizedBox(width: 2,),
                                    Text('2021-12-01 09:28 AM',style: TextStyle(color: Color(0xFFD1D5D7),fontSize: 12,fontWeight: FontWeight.w600),)
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 29,
                                width: 29,
                                child: Center(
                                  child: Container(
                                    child: Center(
                                      child: Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,size: 14,),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),


                  ],
                )

              ),
              const SizedBox(height:12),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SizedBox(
                    height: 123,
                    width: double.infinity,
                    child: Card(
                      color: Color(0xFF192D36),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Referral Link',
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            DottedBorder(
                              color: AppColors.whiteColor,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(4),
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                child: Container(
                                  height: 16,
                                  width: 250,
                                  child: Center(
                                    child: Text(
                                      'https://192.168.30.115:81/localcoins-9/',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 20,
                              width: 100,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Copy Link',
                                    style:
                                    TextStyle(color: AppColors.whiteColor),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                    backgroundColor: AppColors.primaryColor,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
    );
  }
}
