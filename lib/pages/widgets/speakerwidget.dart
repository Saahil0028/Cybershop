import 'package:cybershop/data/earpodcat.dart';
import 'package:cybershop/data/speakercat.dart';
import 'package:cybershop/pages/buypages/podbuy.dart';
import 'package:cybershop/pages/buypages/speakerbuy.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class speakerwidget extends StatelessWidget {
  final  Speaker speaker;

  const speakerwidget({super.key, required this.speaker});

  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: Row(
            children: [
              Hero(
                  tag: Key(speaker.Id.toString()),
                  child: Image.asset(speaker.Image,height: 80,).px12()),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(speaker.Name,style: TextStyle(fontFamily: 'poppins',color: Vx.red50),),
                  ButtonBar(
                    children: [
                      " rs ${speaker.Price}".text.fontFamily('poppins').red50.make().py1(),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => speakerbuypage(buy: speaker)));
                          }, child: const Text("Buy",style: TextStyle(color: Colors.white),))
                    ],
                  )
                ],
              ))
            ]
        )
    ).gray800.rounded.square(150).make().py32();
  }
}
