import 'package:cybershop/Firebase/auth_gate.dart';
import 'package:cybershop/firebase_options.dart';
import 'package:cybershop/pages/Homepage.dart';
import 'package:cybershop/pages/LoginPage.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Cybershop());
}



class Cybershop extends StatelessWidget {
  const Cybershop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.dark,
      home: Authgate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
