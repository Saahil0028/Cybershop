import 'package:cybershop/data/phonecat.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';


class buypage extends StatelessWidget {
  final Item buy;
  const buypage({super.key, required this.buy});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(backgroundColor: Colors.transparent,),
        body: Column(
          children: [
            Hero(
              tag: Key(buy.id.toString()),
                child: Image.asset(buy.image).p16().h32(context)),
            Expanded(child: VxArc(
              height: 20,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.black,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      buy.name.text.xl4.fontFamily('poppins').red50.make(),
                      Text(buy.Features,textAlign: TextAlign.justify,style: const TextStyle(fontSize: 17,color: Vx.red200,fontFamily: 'poppins'),)
                    ],
                  ).p16(),
                ),
              ),
            )
            )
          ],
        ).color(Vx.black),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            " rs ${buy.price}".text.red50.xl2.bold.make(),
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)), child: const Text("Buy",style: TextStyle(color: Colors.white),),
            ).wh(100, 60)
          ],
        ).h(100),
      ),
    );
  }
}
