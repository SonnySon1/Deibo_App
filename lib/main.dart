import "package:deibo_app/Config/app_config.dart";
import "package:deibo_app/Pages/auth/signin_page.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    )
  );



  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppConfig.bgColor
      ),
      home: SigninPage(),
      routes: {
        '/signin' : (context) => SigninPage(), 
      },
    )
  );
}