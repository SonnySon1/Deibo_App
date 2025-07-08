import 'package:deibo_app/Config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class OtpcodePage extends StatelessWidget {
  const OtpcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder:  (context, constraints){
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Confirm", style: TextStyle(fontSize: 20, color: AppConfig.textColor),),
                        Text(" OTP ", style: TextStyle(fontSize: 20, color: AppConfig.primaryColor, fontWeight: FontWeight.bold),),
                        Text("Code", style: TextStyle(fontSize: 20, color: AppConfig.textColor),)
                      ],
                    ),
                    Center(
                      child: Text("Please enter the OTP code that we have sent.", 
                        style: TextStyle(fontSize: 12, color: AppConfig.textColor),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),

                    Center(
                      child: Image.asset("assets/image/otp.png", width: 200,),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),

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
                          prefixIcon: Icon(Icons.lock_clock_outlined, color: AppConfig.textColor,),
                          contentPadding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                          hintText: "Enter your OTP code here"
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    
                    Text("I haven't got it yet", style: TextStyle(color: AppConfig.primaryColor),),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    
                    ElevatedButton(
                      onPressed: (){}, 
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 50, vertical: 14)
                        ),
                        overlayColor: WidgetStatePropertyAll(Colors.white.withAlpha((255 * 0.2).toInt()) ),
                        backgroundColor: WidgetStatePropertyAll(AppConfig.primaryColor)
                      ),
                      child: Text("Continue", style: TextStyle(color: AppConfig.textColor),)
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