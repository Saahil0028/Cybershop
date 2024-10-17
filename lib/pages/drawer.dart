import 'package:cybershop/Firebase/auth_services.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';


class csdrawer extends StatelessWidget {
  const csdrawer({super.key});

  void logout(){
final auth = Authservice();

auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shadowColor: MyTheme.creamColor,
      child: Container(
        color: Colors.black,
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Vx.gray800
            ),
            margin: EdgeInsets.zero,
            accountName: Text("Zuizz",style: TextStyle(color: MyTheme.creamColor),),
            accountEmail: Text("zuizzm1@gmail.com",style: TextStyle(color: MyTheme.creamColor)),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/avatar.png'),
            ),
          ),),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: MyTheme.creamColor,),
            title: Text("Settings",style: TextStyle(color: MyTheme.creamColor),),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.xmark,color: MyTheme.creamColor,),
            title: Text("Logout",style: TextStyle(color: MyTheme.creamColor),),
            onTap: logout,
          )
        ],
      )
    ));
  }
}
