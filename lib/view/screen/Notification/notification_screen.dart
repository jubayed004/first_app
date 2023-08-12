import 'package:first_app/style/color/color_style.dart';

import 'package:flutter/material.dart';

class Notification_screen extends StatelessWidget {
  const Notification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff0D222B),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor:Color(0xff192D36),
        title: Text("User Menu",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
      ),
      body: Column(
        children: [
          Row(
            children: [
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color:Color(0xff192D36) ,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff192D36) ,
                          image: DecorationImage(

                              image:AssetImage('assets/image/Ellipse.png')
                          )
                      ),
                    ),
                  ),
              ),
            )
            ],
          )
        ],
      ),
    );
  }
}
