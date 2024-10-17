
import 'package:cybershop/data/phonecat.dart';
import 'package:cybershop/data/speakercat.dart';
import 'package:cybershop/data/tabcat.dart';
import 'package:cybershop/pages/buypages/speakerbuy.dart';
import 'package:cybershop/pages/buypages/tabbuypage.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/phonewidget.dart';
import 'package:cybershop/pages/widgets/speakerwidget.dart';
import 'package:cybershop/pages/widgets/tabwidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class tabcatalog extends StatelessWidget {
  const tabcatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text("Tablets",style: TextStyle(color: Vx.red50),),iconTheme: IconThemeData(color: Vx.red50),backgroundColor: Colors.transparent,),
        drawer: const csdrawer(),
        body:
        Padding(padding: const EdgeInsets.all(15),
          child :ListView.builder(
              itemCount: tabb.tabs.length,
              itemBuilder: (context , index)
              {
                final buy = tabb.tabs[index];
                return InkWell(
                  child: tabwidget(tab: buy),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => tabbuypage(buy: buy)));
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
