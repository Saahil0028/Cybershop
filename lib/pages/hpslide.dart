import 'package:cybershop/pages/Homepage.dart';
import 'package:flutter/material.dart';


class slide extends StatelessWidget {
  const slide({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage()));
    },
          child: Image.network('https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s24-ultra-5g-sm-s928-1.jpg',width: 220,height: 400,),),
          const Padding(padding: EdgeInsets.only(right: 10)),
          Image.network('https://gagadget.com/media/cache/84/ef/84ef706efac5b9a0656509825aafa921.jpg',width: 275,height: 300,),
          const Padding(padding: EdgeInsets.only(right: 10)),
          Image.network('https://images.samsung.com/is/image/samsung/assets/nz/smartphones/galaxy-s23-ultra/images/galaxy-s23-ultra-highlights-kv_new.jpg',width: 355,height: 300,),

        ],
      ),
    );
  }
}
