import 'package:cybershop/data/lapcat.dart';
import 'package:cybershop/pages/buypages/lapbuy.dart';

import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class lapwidget extends StatelessWidget {
  final Laptop laptop;

  const lapwidget({super.key, required this.laptop});

  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: Row(
            children: [
              Hero(
                  tag: Key(laptop.id.toString()),
                  child: Image.asset(laptop.image,height: 80,).px12()),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(laptop.name, style: TextStyle(fontFamily: 'poppins',color:Vx.red50)),
                  ButtonBar(
                    children: [
                      " rs ${laptop.price}".text.fontFamily('poppins').red50.make().py1(),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => lapbuypage(buy: laptop)));
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
