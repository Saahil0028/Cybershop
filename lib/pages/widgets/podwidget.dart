import 'package:cybershop/data/earpodcat.dart';
import 'package:cybershop/pages/buypages/podbuy.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class podwidget extends StatelessWidget {
  final  Pod pod;

  const podwidget({super.key, required this.pod});

  @override
  Widget build(BuildContext context) {
    return VxBox(

        child: Row(
            children: [
              Hero(
                  tag: Key(pod.Id.toString()),
                  child: Image.asset(pod.Image,height: 80,).px12()),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(pod.Name,style: TextStyle(fontFamily: 'poppins',color: Vx.red50),),
                  ButtonBar(
                    children: [
                      " rs ${pod.Price}".text.fontFamily('poppins').red50.make().py1(),
                      ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => podbuypage(buy: pod)));
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
