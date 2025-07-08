import 'package:deibo_app/Config/app_config.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(50, 87, 50, 87),
          child: Column(
            children: [
              Image.asset("assets/image/logo.png"),
              Padding(padding: EdgeInsets.only(bottom: 93)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to", style: TextStyle(color: AppConfig.textColor, fontSize: 20, fontWeight: FontWeight.w400),),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Deibo", style: TextStyle(color: AppConfig.primaryColor, fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),

              Text("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugi", 
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppConfig.textColor,)
                  ),
              Padding(padding: EdgeInsets.only(bottom: 20)),

              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/signin');
                }, 
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 50, vertical: 14)
                  ),
                  overlayColor: WidgetStatePropertyAll(Colors.white.withAlpha((255 * 0.2).toInt())),
                  backgroundColor: WidgetStatePropertyAll(AppConfig.primaryColor)
                ),
                child: Text("Get Started", style: TextStyle(color: AppConfig.textColor, fontWeight: FontWeight.bold),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}