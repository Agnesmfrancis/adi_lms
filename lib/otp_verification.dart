import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'homepage.dart';
import 'homepage2.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  OtpFieldController otpController = OtpFieldController();
  TextEditingController otp1 = TextEditingController();
  final code = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: OTPTextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                length: 4,
                width: MediaQuery.of(context).size.width/2,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("object");
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);

                }),
          ),
          SizedBox(height: 20,),
          // Container(
          //   height: 80, width: 150, color: Colors.deepOrange,
          //   child: Row(children: [TextField(
          //       textAlign: TextAlign.center,
          //       keyboardType: TextInputType.number,
          //       controller: this.code,
          //       maxLength: 1,
          //       cursorColor: Theme.of(context).primaryColor,
          //       decoration: InputDecoration(
          //       hintText: "*",
          //       counterText: '',
          //       hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)
          //       )
          //       )],),
          // ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){

                  //if pin==1111{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage2()),
                  );
                  //}
                }, child: Text("Submit")),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text("Resend OTP")),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cleaning_services),
        onPressed: () {
          print("Floating button was pressed.");
           otpController.clear();
          // otpController.set(['2', '3', '5', '5']);
          // otpController.setValue('3', 0);
          // otpController.setFocus(1);
        },
      ),


    );
  }
}




