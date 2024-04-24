import 'package:flutter/material.dart';
import 'package:studentapp/db_user.dart';
import 'package:studentapp/studentlogin.dart';

import 'main.dart';
import 'onboarding.dart';

class GetUserInfo extends StatefulWidget {
  const GetUserInfo({super.key});

  @override
  State<GetUserInfo> createState() => _GetUserInfoState();
}

class _GetUserInfoState extends State<GetUserInfo> {
  final DBUserManager dbUserManager = DBUserManager();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  User? user;
  late int updateindex;

  late List<User> userlist;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Get started")),
      ),
      body: ListView(
        children: <Widget>[
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: InputDecoration(labelText: "Name", prefixIcon: Icon(Icons.person)),
                        controller: _nameController,
                        validator: (val) =>
                        val!.isNotEmpty ? null : "Name Should not be Empty",
                        keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.mail)),
                      controller: _emailController,
                      validator: (val) =>
                      val!.isNotEmpty ? null : "Email Should not be Empty",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Phone", prefixIcon: Icon(Icons.phone)),
                      controller: _phoneController,
                      validator: (val) =>
                      val!.isNotEmpty ? null : "Phone number Should not be Empty",
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Container(
                          width: width * 0.9,
                          child: Text(
                            "Submit",
                            textAlign: TextAlign.center,
                          )),
                      onPressed: () {
                        submitStudent(context);
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
          )
        ],
      ),
    );
  }

  void submitStudent(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      if (user == null) {
        User us =  User(
            name: _nameController.text, email: _emailController.text, ph_no: _phoneController.text);
        dbUserManager.insertUser(us).then((value) => {
          _nameController.clear(),
          _emailController.clear(),
          _phoneController.clear(),
          print("User Data Added to database $value"),
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageeeView()),
        );
      }
      else {CircularProgressIndicator();}
    }
  }
}
