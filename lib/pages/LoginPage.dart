import 'package:cybershop/Firebase/auth_gate.dart';
import 'package:cybershop/Firebase/auth_services.dart';
import 'package:cybershop/pages/Signup.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  final formfield = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void login(BuildContext  context) async{
  final auth = Authservice();
  try{
    await auth.signInWithEmailandPassword(emailcontroller.text, passwordcontroller.text);
  }catch (e){
    showDialog(context: context, builder: (context) => AlertDialog(
title:  Text(e.toString()),
    ) );
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
          Padding(
              padding: EdgeInsets.only(top: 200,bottom: 50),
              child: Image.asset('assets/cybershop.png',height: 200,)),
        Padding(
          padding: EdgeInsets.only(left: 25),
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
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                    child: ElevatedButton(onPressed: ()=> login(context)
                      , child: Text("Login",style: TextStyle(color: MyTheme.creamColor),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyTheme.Blueish)),)),

                Expanded(child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                  child: Text("Dont have an Account?",style: TextStyle(color: Colors.white),)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Signuppage()));
                      },
                      child: Text("  Sign Up!!",style: TextStyle(color: Colors.purple),),
                    )
                  ],
                )
                )
              ],
            )
            ).height(290).width(400).rounded.gray800.make(),
        ),
        ]),
      ),
    );
  }
}
