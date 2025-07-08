import 'package:deibo_app/Config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 20, 22, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Text("Welcome to ", style: TextStyle(fontSize: 20, color: AppConfig.textColor)),
                        Text("Deibo", style: TextStyle(fontSize: 20, color: AppConfig.primaryColor, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                      "Please enter your number to access the application.",
                      style: TextStyle(fontSize: 12, color: AppConfig.textColor, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 30),

                    // Phone field
                    TextSelectionTheme(
                      data: TextSelectionThemeData(
                        selectionColor: AppConfig.lightPrimaryColor,
                        selectionHandleColor: AppConfig.primaryColor,
                        cursorColor: AppConfig.primaryColor
                      ),
                      
                      child: TextField(
                        style: TextStyle(
                          color: AppConfig.textColor
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConfig.primaryColor)
                          ),
                      
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConfig.primaryColor)
                          ),
                      
                          contentPadding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                          prefixIcon: Icon(Icons.phone_outlined, color: AppConfig.textColor,),
                          hintText: "Enter your phone number here",
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 23)),
                    
                    // Name field
                     TextSelectionTheme(
                      data: TextSelectionThemeData(
                        selectionColor: AppConfig.lightPrimaryColor,
                        selectionHandleColor: AppConfig.primaryColor,
                        cursorColor: AppConfig.primaryColor
                      ), 
                      child: TextField(
                        style: TextStyle(
                          color: AppConfig.textColor
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppConfig.primaryColor)
                          ),
                      
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppConfig.primaryColor)
                          ),
                      
                          contentPadding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                          prefixIcon: Icon(Icons.person_outline_rounded, color: AppConfig.textColor,),
                          hintText: "Enter your name here"
                        ),
                      ), 
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 23)),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/otpcode');
                      },
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                        ),
                        overlayColor: WidgetStatePropertyAll(Colors.white.withAlpha((255 * 0.2).toInt()) ),
                        backgroundColor: WidgetStatePropertyAll(AppConfig.primaryColor),
                      ),
                      child: Text("Continue", style: TextStyle(color: AppConfig.textColor)),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),

    );
  }
}