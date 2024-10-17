
import 'package:cybershop/data/tabcat.dart';
import 'package:cybershop/pages/buypages/tabbuypage.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class tabwidget extends StatelessWidget {
  final  Tabb tab;

  const tabwidget({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: Row(
            children: [
              Hero(
                  tag: Key(tab.Id.toString()),
                  child: Image.asset(tab.Image,height: 80,).px12()),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tab.Name,style: TextStyle(fontFamily: 'poppins',color: Vx.red50),),
                  ButtonBar(
                    children: [
                      " rs ${tab.Price}".text.fontFamily('poppins').red50.make().py1(),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => tabbuypage(buy: tab)));
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
