import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/main.dart';

import 'homepage.dart';

class StudentReLogin extends StatefulWidget {
  const StudentReLogin({super.key});

  @override
  State<StudentReLogin> createState() => _StudentReLoginState();
}

class _StudentReLoginState extends State<StudentReLogin> {
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
        title: Text("Student Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(height: 10, color: Colors.white,),
                Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/06/21/07/51/icon-2426371_960_720.png"), height: 75, width: 75,),
                Text("Incorrect student id or password"),
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
                ElevatedButton(onPressed: (){
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
                    // {
                    // //   Center(
                    // //     child: Card(
                    // //       elevation: 10,
                    // //       child: SizedBox(height: 20, width: 50,
                    // //       child: Text("Incorrect student id or password"),
                    // //       ),
                    // //     ),
                    // //   );
                    //   TextFormField(
                    //   validator: (String?value)
                    //   {
                    //     if(value!.isEmpty)
                    //     {
                    //       return "Incorrect student id or password";
                    //     }
                    //     else return null;
                    //   },
                    //   controller: _password,
                    // );
                    // }
                  }
                  else {print("object");}
                }, child: Text('Login'),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account?"),
                    TextButton(onPressed: (){}, child: Text('Sign Up')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}