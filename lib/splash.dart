import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,

              decoration: BoxDecoration(
                  gradient: LinearGradient(

                    colors: [Colors.green,Colors.greenAccent]
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular( MediaQuery.of(context).size.width*0.5),
                      topRight:  Radius.circular( MediaQuery.of(context).size.width*0.5))
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/logo.png',height: 50,),
              Text('Taste how nature meant it.',style: TextStyle(color: Colors.green.shade600),),
              Image.asset('assets/lady.png',height:MediaQuery.of(context).size.height*0.6)
            ],),


        ],
      ),
    );
  }
}
