import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/homepage.dart';
import 'package:studentapp/studentlogin.dart';

import 'otp_verification.dart';

class LoginLanding extends StatefulWidget {
  const LoginLanding({super.key});

  @override
  State<LoginLanding> createState() => _LoginLandingState();
}

class _LoginLandingState extends State<LoginLanding> {
  final _regnameController = TextEditingController();
  final _regphoneController = TextEditingController();
  TextEditingController _studentid = TextEditingController();
  TextEditingController _username = TextEditingController();





  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: TextFormField(
                    validator: (val) =>
                    val!.isNotEmpty ? null : "Name Should not be Empty",
                    controller: _regnameController,
                    decoration: InputDecoration(labelText: "Registered Name", prefixIcon: Icon(Icons.person)),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Registered Phone", prefixIcon: Icon(Icons.phone)),
                    controller: _regphoneController,
                    validator: (val) =>
                    val!.isNotEmpty ? null : "Phone number Should not be Empty",
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Container(
                        //width: width * 0.9,
                        child: Text(
                          "Send OTP",
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpVerification()),
                      );
                    },
                  ),
                ),
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentLogin()),
                    );
                  }, child: Text("If you have a Student ID, login directly from here")),
                ),
              ],
            ),
          ),
                ),
        ),
      ]
      )
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("Login", style: Theme.of(context).textTheme.headlineMedium),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => StudentLogin()),
      //           );
      //         }, child: Text("With Student ID")),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => HomePage2()),
      //           );
      //         }, child: Text("Without Student ID")),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
