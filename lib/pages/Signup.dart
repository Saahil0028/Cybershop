
import 'package:cybershop/Firebase/auth_services.dart';
import 'package:cybershop/pages/LoginPage.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Signuppage extends StatelessWidget {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  void register(BuildContext context) async{
      final auth = Authservice();

      if(passwordcontroller.text == confirmpasswordcontroller.text){
        try {
          await auth.signUpWithEmailandPassword(
              emailcontroller.text, passwordcontroller.text);
        } catch(e){
          showDialog(context: context, builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ));
        };
      }
      else{
        showDialog(context: context, builder: (context)=> AlertDialog(
          title: Text("Passwords dont match"),
        ));
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black87,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text("Welcome New User",style: TextStyle(fontFamily: 'pixel',color: MyTheme.creamColor,fontSize: 30),),

              Padding(
                  padding: EdgeInsets.only(top:350,left: 24),
                  child: VxBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: VxBox(
                            child: TextFormField(
                              controller: emailcontroller,
                              decoration: InputDecoration(hintText: "Email",hintStyle: TextStyle(color: Vx.gray500),contentPadding: EdgeInsets.only(left: 10)),
                            ),
                          ).gray800.make(),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: VxBox(
                            child: TextFormField(
                              controller: passwordcontroller,
                              decoration: InputDecoration(hintText: "Password",hintStyle: TextStyle(color: Vx.gray500),contentPadding: EdgeInsets.only(left: 10)),
                            ),
                          ).gray800.make(),
                        ),


                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: VxBox(
                            child: TextFormField(
                              controller: confirmpasswordcontroller,
                              decoration: InputDecoration(hintText: "Confirm Password",hintStyle: TextStyle(color: Vx.gray500),contentPadding: EdgeInsets.only(left: 10)),
                            ),
                          ).gray800.make(),
                        ),

                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: ElevatedButton(onPressed: ()=> register(context), child: Text("Signup",style: TextStyle(color: MyTheme.creamColor),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),)),


                        Expanded(child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 90),
                                child: Text("Already have an Account?",style: TextStyle(color: Colors.white),)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                              },
                              child: Text("  Sign In!!",style: TextStyle(color: Colors.purple),),
                            )
                          ],
                        )
                        )

                      ],
                    )

                  ).height(350).width(400).rounded.gray800.make())
            ],
          ),
        ),
      );
  }
}
