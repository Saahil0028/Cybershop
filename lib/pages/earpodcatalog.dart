
import 'package:cybershop/data/earpodcat.dart';
import 'package:cybershop/pages/buypages/podbuy.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/podwidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class earpodcatalog extends StatelessWidget {
  const earpodcatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text("EarPods",style: TextStyle(fontFamily: 'poppins',color: Vx.red50),),iconTheme: IconThemeData(color: Vx.red50),backgroundColor: Colors.transparent,),
        drawer: const csdrawer(),
        body:
        Padding(padding: const EdgeInsets.all(15),
          child :ListView.builder(
              itemCount: ear.pods.length,
              itemBuilder: (context , index)
              {
                final buy = ear.pods[index];
                return InkWell(
                  child: podwidget(pod: buy),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => podbuypage(buy: buy)));
                  },
                );
              }
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
