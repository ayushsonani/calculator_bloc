import 'package:flutter/material.dart';

import 'calculator_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Calculator_bloc_controllerPage() ;
      },));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          Image.asset(width: MediaQuery.of(context).size.width/2,height:MediaQuery.of(context).size.height/2 ,"asset/images/Calculator-pana.png"),
        ],
      )
    );
  }
}
