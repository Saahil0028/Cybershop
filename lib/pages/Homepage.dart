import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/earpodcatalog.dart';
import 'package:cybershop/pages/hpslide.dart';
import 'package:cybershop/pages/lapcatalog.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/speakercatalog.dart';
import 'package:cybershop/pages/tabcatalog.dart';

import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';





class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      right: true,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(backgroundColor: Colors.transparent,iconTheme: IconThemeData(color: MyTheme.creamColor),),
        drawer: csdrawer(),
        body:
        ListView(
          scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 15),
                      children: [

                        const Text("Hello Zuizz!",style: TextStyle(
                            fontSize: 30,fontFamily: 'poppins',color: Vx.red50
                        ),),
                        const Text("Welcome to CyberShop",style: TextStyle(fontSize: 20,fontFamily: 'pixel',color: Vx.red50),),
                        Padding(padding: EdgeInsets.only(top: 10),child: Text("Featured Device: ",style: TextStyle(fontFamily: 'poppins',color: Vx.red50),),),
                                Image.asset('assets/featured.png',height: 300,),


                      Padding(padding: EdgeInsets.only(bottom: 0)),

                        Text("Categories",style: TextStyle(fontFamily: 'poppins',fontSize: 25,color: Vx.red50),textAlign: TextAlign.center,),
                        Padding(padding: EdgeInsets.only(bottom: 30)),
                        Row(
                          children: [
                            GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const phonecatalog()));
                            },

                          child: Padding(padding: const EdgeInsets.only(right: 50,left: 30),
                            child: Card(
                              color: MyTheme.Grey,
                                elevation: 200,
                                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                child: Image.asset('assets/icons/mobile.png',height: 100,)
                                  ),),),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => lapcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(right: 40,),
                                child: Card(
                                    color: MyTheme.Grey,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/laptop.png',height: 90,)
                                ),),),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => tabcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(left: 10,right: 10,),
                                child: Card(
                                    color: MyTheme.Grey,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/tablet.png',height: 90,)
                                ),),),

                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const earpodcatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(top: 60,left:60 ),
                                child: Card(
                                    color: MyTheme.Grey,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/earphone.png',height: 90,)
                                ),),),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const speakercatalog()));
                              },

                              child: Padding(padding: const EdgeInsets.only(top: 60,left:110 ),
                                child: Card(
                                    color: MyTheme.Grey,
                                    elevation: 200,
                                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),

                                    child: Image.asset('assets/icons/speaker.png',height: 90,)
                                ),),),
                          ],
                        )

                    ]
                    ),
      ),
    );
  }
}
