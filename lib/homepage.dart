import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:studentapp/single_course.dart';
import 'package:studentapp/studentid_relogin.dart';
import 'package:studentapp/studentlogin.dart';
import 'package:studentapp/onboarding.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CourseCategory> clist = [
    CourseCategory(coursename: "Course1", boxColor: Color(0xffa8caec)),
    CourseCategory(coursename: "Course2", boxColor: Color(0xffc5deaa)),
    CourseCategory(coursename: "Course3", boxColor: Color(0xffa8caec)),
    CourseCategory(coursename: "Course4", boxColor: Color(0xffc5deaa)),
    CourseCategory(coursename: "Course5", boxColor: Color(0xffa8caec)),
    CourseCategory(coursename: "Course6", boxColor: Color(0xffc5deaa)),
  ];
  List<PopularCourses> pclist = [
    PopularCourses(image: "https://cdn.pixabay.com/photo/2018/05/18/03/16/online-3410266_1280.jpg",
        pcname: "Course Description 1", rate: "4.5", cost: "FREE"),
    PopularCourses(image: "https://cdn.pixabay.com/photo/2015/08/06/09/27/logistics-877568_1280.jpg",
        pcname: "Course Description 2", rate: "4.8", cost: "₹ 12,000"),
    PopularCourses(image: "https://cdn.pixabay.com/photo/2020/05/20/03/50/gears-5193383_1280.png",
        pcname: "Course Description 3", rate: "4.5", cost: "₹ 5,000"),
    PopularCourses(image: "https://cdn.pixabay.com/photo/2020/05/18/16/17/social-media-5187243_1280.png",
        pcname: "Course Description 4", rate: "4.5", cost: "₹ 15,000"),
    PopularCourses(image: "https://cdn.pixabay.com/photo/2019/06/19/07/13/email-4284157_1280.png",
        pcname: "Course Description 5", rate: "4.5", cost: "₹ 2,500"),
  ];

  List<NewCourses> nclist = [
    NewCourses(image: "https://cdn.pixabay.com/photo/2021/08/23/14/50/online-shopping-6567977_1280.png",
        ncname: "Course Description 1", rate: "4.5", cost: "₹ 3,000"),
    NewCourses(image: "https://cdn.pixabay.com/photo/2018/05/18/03/16/online-3410266_1280.jpg",
        ncname: "Course Description 2", rate: "4.8", cost: "FREE"),
    NewCourses(image: "https://cdn.pixabay.com/photo/2021/03/02/17/38/online-6063329_1280.png",
        ncname: "Course Description 3", rate: "4.5", cost: "₹ 5,000"),
    NewCourses(image: "https://cdn.pixabay.com/photo/2015/08/06/09/27/logistics-877568_1280.jpg",
        ncname: "Course Description 4", rate: "4.5", cost: "₹ 12,000"),
    NewCourses(image: "https://cdn.pixabay.com/photo/2019/06/19/07/13/email-4284157_1280.png",
        ncname: "Course Description 5", rate: "4.5", cost: "₹ 2,500"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            //backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/06/21/07/51/icon-2426371_1280.png"),
            child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/06/21/07/51/icon-2426371_1280.png"), height: 30, width: 35,),
          ),
        ),
        title: Column(
          children: [
            Text("Name"),
            Text("mail@gmail.com", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2024/01/10/00/05/background-8498597_960_720.jpg"),
          fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: Offset(10.0, 20.0), //(x,y)
                      blurRadius: 30.0,
                    ),
                  ],),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: MediaQuery.of(context).size.height / 2,
                            width: double.infinity,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Align(alignment: Alignment.topLeft,
                                        child: Text("Overview your latest course",
                                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))),
                                  ),
                                  Container(
                                      height: 260, width: 300,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              top: 85,
                                              left:8,
                                              child: Stack(
                                                alignment: AlignmentDirectional.center,
                                                children: <Widget>[
                                                  Center(
                                                    child: SizedBox(
                                                      width: 110,
                                                      height: 110,
                                                      child: CircularProgressIndicator(
                                                        strokeWidth: 10,
                                                        valueColor: AlwaysStoppedAnimation(Color(0xffa8caec)),
                                                        backgroundColor: Colors.grey.shade300,
                                                        value: .75,
                                                      ),
                                                    ),
                                                  ),
                                                  Center(child: Text("75%", style: TextStyle(fontWeight: FontWeight.bold),)),
                                                ],
                                              )
                                            // CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Color(0xffa8caec)),
                                            //          // color: Color(0xffa8caec),
                                            //           backgroundColor: Colors.grey.shade300,
                                            //           value: .75,),
                                          ),
                                          Positioned(
                                              top:30,
                                              right: 110,
                                              child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  // decoration: BoxDecoration(
                                                  //   borderRadius: BorderRadius.circular(7),
                                                  //   color: Colors.white,
                                                  // ),
                                                  //padding: EdgeInsets.all(2.0),
                                                  child: Icon(Icons.book, color: Colors.yellow,)
                                              )
                                          ),
                                          Positioned(
                                              top:30,
                                              right: 10,
                                              child: Container(
                                                height: 50,
                                                width: 100,
                                                // decoration: BoxDecoration(
                                                //   borderRadius: BorderRadius.circular(7),
                                                //   color: Colors.white,
                                                // ),
                                                //padding: EdgeInsets.all(2.0),
                                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Align(alignment: Alignment.topLeft, child: Text("Lesson", style: TextStyle(color: Colors.black),)),
                                                    Container(height: 5,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(color: Colors.black)
                                                        ),
                                                        child: LinearProgressIndicator(value: .75, color: Colors.yellow,))
                                                  ],
                                                ),
                                              )
                                          ),
                                          Positioned(
                                              top:100,
                                              right: 110,
                                              child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  //padding: EdgeInsets.all(2.0),
                                                  child: Icon(Icons.quiz_outlined, color: Colors.cyan,)
                                              )
                                          ),
                                          Positioned(
                                              top:100,
                                              right: 10,
                                              child: Container(
                                                height: 50,
                                                width: 100,
                                                //padding: EdgeInsets.all(2.0),
                                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Align(alignment: Alignment.topLeft, child: Text("Quiz", style: TextStyle(color: Colors.black),)),
                                                    Container(height: 5,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(color: Colors.black)
                                                        ),
                                                        child: LinearProgressIndicator(value: 0, color: Colors.cyan,))
                                                  ],
                                                ),
                                              )
                                          ),
                                          Positioned(
                                              top:170,
                                              right: 110,
                                              child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  //padding: EdgeInsets.all(2.0),
                                                  child: Icon(Icons.hourglass_empty, color: Color(0xffd4aade),)
                                              )
                                          ),
                                          Positioned(
                                              top:170,
                                              right: 10,
                                              child: Container(
                                                height: 50,
                                                width: 100,
                                                //padding: EdgeInsets.all(2.0),
                                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Align(alignment: Alignment.topLeft, child: Text("Assignments", style: TextStyle(color: Colors.black),)),
                                                    Container(height: 5,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(color: Colors.black)
                                                        ),
                                                        child: LinearProgressIndicator(value: 0, color: Color(0xffd4aade),))
                                                  ],
                                                ),
                                              )
                                          ),
                                        ],
                                      )

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 2.0),
                                    child: Align(alignment: Alignment.bottomLeft, child: Text("Course Name",
                                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25.0, 2.0, 8.0, 8.0),
                                    child: Align(alignment: Alignment.bottomLeft, child: Text("3 SECTIONS",
                                        style: TextStyle(fontSize: 15, color: Colors.grey.shade400))),
                                  )
                                ],
                              ),
                            )),
                      )
                  ),
                  SizedBox(height: 20,),
                  Align( alignment: Alignment.centerLeft ,child: Text("Hi, what would you learn today?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    child: ListView.separated(itemCount: clist.length, scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return ElevatedButton(onPressed: (){},
                          child: Text(clist[index].coursename, style: TextStyle(color: Color(0xff3d3f3d)),),
                          style:  ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(clist[index].boxColor),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),),
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },),
                  ),
                  SizedBox(height: 20,),
                  Align( alignment: Alignment.centerLeft ,child: Text("Popular courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 240,
                    //color: Colors.limeAccent,
                    child: ListView.separated(itemCount: pclist.length, scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 175,
                                width: 250,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  //color: Colors.brown,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top:0,
                                        left: 0,
                                        right: 0,
                                        //bottom: 0,
                                        child: Image.network(pclist[index].image, height:175, fit: BoxFit.fill,)
                                    ),
                                    Positioned(
                                        top: 10,
                                        right:10,
                                        child: Icon(Icons.favorite_border_outlined, color: Colors.white,)
                                    ),
                                    Positioned(
                                        left:10,
                                        bottom: 10,
                                        child: Container(
                                          height: 35,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            color: Colors.white,
                                          ),
                                          //padding: EdgeInsets.all(2.0),
                                          child: Center(child: Text(pclist[index].cost, style: TextStyle(color: Colors.black),)),
                                        )
                                    ),
                                    Positioned(
                                        right: 10,
                                        bottom: 10,
                                        child: Row(
                                          children: [
                                            Icon(Icons.star, color: Color(0xffe59d1e), size: 18,),
                                            Text(pclist[index].rate,style: TextStyle(color: Colors.white)),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 250,
                                //color: Colors.white,
                                //padding: EdgeInsets.all(2.0),
                                child: Text(pclist[index].pcname, style: TextStyle(fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },),
                  ),
                  SizedBox(height: 20,),
                  Align( alignment: Alignment.centerLeft ,child: Text("New courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 240,
                    //color: Colors.limeAccent,
                    child: ListView.separated(itemCount: nclist.length, scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Container(
                            height: 150,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 175,
                                  width: 250,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    //color: Colors.brown,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top:0,
                                          left: 0,
                                          right: 0,
                                          //bottom: 0,
                                          child: Image.network(nclist[index].image, height:175, fit: BoxFit.fill,)
                                      ),
                                      Positioned(
                                          top: 10,
                                          right:10,
                                          child: Icon(Icons.favorite_border_outlined, color: Colors.white,)
                                      ),
                                      Positioned(
                                          left:10,
                                          bottom: 10,
                                          child: Container(
                                            height: 35,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: Colors.white,
                                            ),
                                            //padding: EdgeInsets.all(2.0),
                                            child: Center(child: Text(nclist[index].cost, style: TextStyle(color: Colors.black),)),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 250,
                                  //color: Colors.white,
                                  //padding: EdgeInsets.all(2.0),
                                  child: Text(nclist[index].ncname, style: TextStyle(fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return SingleCourse();
                                }));
                          },
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },),
                  ),
                  SizedBox(height: 20,),
                  Align( alignment: Alignment.centerLeft ,child: Text("Instructor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 100 ,
                    //color: Colors.limeAccent,
                    child: ListView.separated(itemCount: 5, scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(height: 60, width: 260, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 20,
                                    left:10,
                                    child: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/12/22/09/51/ai-generated-8463482_1280.jpg"),radius: 30,)
                                ),
                                Positioned(
                                    top:15,
                                    left: 80,
                                    child: Container(
                                      height: 50,
                                      width: 100,
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(7),
                                      //   color: Colors.white,
                                      // ),
                                      //padding: EdgeInsets.all(2.0),
                                      child: Align(alignment: Alignment.topLeft, child: Text("Instructor", style: TextStyle(color: Colors.black, fontSize: 18),)),
                                    )
                                ),
                                Positioned(
                                    top:40,
                                    right: 80,
                                    child: Container(
                                      height: 50,
                                      width: 100,
                                      // decoration: BoxDecoration(
                                      //   borderRadius: BorderRadius.circular(7),
                                      //   color: Colors.white,
                                      // ),
                                      //padding: EdgeInsets.all(2.0),
                                      child: Align(alignment: Alignment.topLeft, child: Text("3 Courses", style: TextStyle(color: Colors.grey.shade400, fontSize: 15),)),
                                    )
                                ),
                                Positioned(
                                    top:40,
                                    right: 0,
                                    child: Container(
                                      height: 50,
                                      width: 100,
                                      child: Align(alignment: Alignment.topLeft, child: Text("83 Students", style: TextStyle(color: Colors.grey.shade400, fontSize: 15),)),
                                    )
                                ),

                                Positioned(
                                    top: 50,
                                    right: 150,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        //padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.telegram, color: Colors.grey.shade400, size: 18,)
                                    )
                                ),
                                Positioned(
                                    top: 50,
                                    right: 120,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        //padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.dialer_sip, color: Colors.grey.shade400, size: 18,)
                                    )
                                ),
                                Positioned(
                                    top: 50,
                                    right: 90,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        //padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.quiz_outlined, color: Colors.grey.shade400, size: 18,)
                                    )
                                ),
                                Positioned(
                                    top: 50,
                                    right: 60,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        //padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.telegram, color: Colors.grey.shade400, size: 18,)
                                    )
                                ),
                              ],
                            ));
                      }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },),
                  ),
                  SizedBox(height: 60,)
                ],
              )
          ),
        ),
      ),
    );
  }
}


class CourseCategory {
  late String coursename;
  late Color boxColor;

  CourseCategory({ required this.coursename, required this.boxColor});
}

class PopularCourses {
  late String image;
  late String pcname;
  late String rate;
  late String cost;

  PopularCourses({ required this.image, required this.pcname, required this.rate, required this.cost});
}

class NewCourses {
  late String image;
  late String ncname;
  late String rate;
  late String cost;

  NewCourses({ required this.image, required this.ncname, required this.rate, required this.cost});
}



//HomePage for student login
// class HomePage2 extends StatefulWidget {
//   const HomePage2({super.key});
//
//   @override
//   State<HomePage2> createState() => _HomePage2State();
// }
//
// class _HomePage2State extends State<HomePage2> {
//   String dropdownvalue = 'Item 1';
//
//   // List of items in our dropdown menu
//   var items = [
//     'StudentLogin()',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xffd571be),
//         title: Text("Home"),
//         leading: Icon(Icons.menu),
//         actions: [
//           OutlinedButton(onPressed: (){
//             Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const StudentLogin()),
//             );
//             }, child:  const Row(
//             children: [
//               Text("Login with student id"),
//               Icon(Icons.person),
//             ],
//           ),
//           ),
//         //   IconButton(onPressed: (){
//         //   Navigator.push(
//         //     context,
//         //     MaterialPageRoute(builder: (context) => const StudentLogin()),
//         //   );
//         // },
//         //     tooltip: "Login with Student ID",
//         //     icon: Icon(Icons.person)),
//           const Icon(Icons.more_vert),
//         ],
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           //child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(height: 100, width: 100,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10), color: Color(0xffdeccaa),)
//                   ),
//                   SizedBox(width: 5,),
//                   Container(height: 100, width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10), color: Color(0xffdeccaa),)
//                   )
//                 ],)),
//               SizedBox(height: 5,),
//               Center(child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(height: 100, width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10), color: Color(0xffc5deaa),)
//                   ),
//                   SizedBox(width: 5,),
//                   Container(height: 100, width: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10), color: Color(0xffc5deaa),)
//                   )
//                 ],)),
//               SizedBox(height: 5,),
//               Center(child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(height: 100, width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),color: Color(0xffaac2de),)
//                   ),
//                   SizedBox(width: 5,),
//                   Container(height: 100, width: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),color: Color(0xffaac2de),)
//                   )
//                 ],)),
//               SizedBox(height: 5,),
//               Center(child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(height: 100, width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),color: Color(0xffd4aade),)
//                   ),
//                   SizedBox(width: 5,),
//                   Container(height: 100, width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),color: Color(0xffd4aade),)),
//                 ],)),
//             ],
//           )
//         //),
//       ),
//     );
//   }
// }
