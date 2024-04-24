import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/main.dart';
import 'package:studentapp/studentid_relogin.dart';

import 'homepage.dart';
import 'homepage2.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  TextEditingController _studentid = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscuretext = true;
  final _formkey = GlobalKey<FormState>();
  @override
  void toggle() {
    setState(() {
      _obscuretext= !_obscuretext;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade100,
        leading: Image(image: AssetImage("assets/images/GROUP_OF_INSTITUTE_NEW_LOGO.png"),),
        title: Text("Student Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Login With Student ID", style: TextStyle(color: Colors.blue, fontSize: 20),),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(height: 10, color: Colors.white,),
                      Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/06/21/07/51/icon-2426371_960_720.png"), height: 75, width: 75, ),
                      TextFormField(
                          validator: (String?value)
                          {
                            return value!.isEmpty?"Enter student id":null;
                          },
                          controller: _studentid,
                          decoration: InputDecoration(
                            label: Text('Student ID'),
                            hintText: 'Student ID',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          )
                      ),
                      Divider(height: 10, color: Colors.white,),
                      TextFormField(
                        validator: (String?value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Enter password";
                          }
                          else return null;
                        },
                        controller: _password,
                        obscureText: _obscuretext,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.password),
                          //suffixIcon: Icon(Icons.visibility),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _obscuretext
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                toggle();
                              });
                            },
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(onPressed: (){}, child: Text('Forgot password'))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          if(_formkey.currentState!.validate())
                          {
                            if (_studentid.text=="std1" && _password.text=="1122")
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const BottomNavBar()),
                                //MaterialPageRoute(builder: (context) => const HomePage()),
                              );
                            }
                            //else {print("here is the object");}
                            else
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const StudentReLogin()),
                              );
                            }

                          }
                          else {print("object");}
                        }, child: Text('Login'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Don't have student ID?"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Get student ID from help desk @ \n[support email address] or [phone number]'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage2()),
                          );
                        }, child: Text("Continue without loging in")),
                      )
                    ],
                  ),
                ),

              ],),
            ),
          ),
    );
  }
}