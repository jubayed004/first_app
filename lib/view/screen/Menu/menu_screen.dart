
import 'package:flutter/material.dart';

class Menu_Screen extends StatelessWidget {
  const Menu_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xff0D222B),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:Color(0xff192D36),
        title: Text("User Menu",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
      ),

      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(
              width: 340,
              height: 370,
              child: Card(
                color: Color(0xff192D36),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Icon(Icons.perm_identity_rounded,color: Colors.red,),
                              SizedBox(width: 18,),
                              Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
                            ],
                          ),
                        ),
                      Divider(
                        color: Color(0xff293B44)
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.perm_identity_rounded,color: Colors.red,),
                            SizedBox(width: 18,),
                            Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ],
                        ),
                      ),
                      Divider(
                          color: Color(0xff293B44)
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.perm_identity_rounded,color: Colors.red,),
                            SizedBox(width: 18,),
                            Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ],
                        ),
                      ),
                      Divider(
                          color: Color(0xff293B44)
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.perm_identity_rounded,color: Colors.red,),
                            SizedBox(width: 18,),
                            Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ],
                        ),
                      ),
                      Divider(
                          color: Color(0xff293B44)
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.perm_identity_rounded,color: Colors.red,),
                            SizedBox(width: 18,),
                            Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ],
                        ),
                      ),
                      Divider(
                          color: Color(0xff293B44)
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.perm_identity_rounded,color: Colors.red,),
                            SizedBox(width: 18,),
                            Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Column(
              children: [
               Card(
                 color: Color(0xff192D36),
                 child: SizedBox(
                   height: 60,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(Icons.perm_identity_rounded,color: Colors.red,),
                         SizedBox(width: 18,),
                         Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                       ],
                     ),
                   ),
                 ),
               )
              ],
            ),
            SizedBox(height: 12,),
            Column(
              children: [
                Card(
                  color: Color(0xff192D36),
                  child: SizedBox(
                    height: 60,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.perm_identity_rounded,color: Colors.red,),
                          SizedBox(width: 18,),
                          Text("User Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
