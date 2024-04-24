import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/section_model.dart';

class SingleCourse extends StatefulWidget {
  const SingleCourse({super.key});

  @override
  State<SingleCourse> createState() => _SingleCourseState();
}

class _SingleCourseState extends State<SingleCourse> {


  bool _customTileExpanded = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;
  bool _customTileExpanded5 = false;
  bool _customTileExpanded6 = false;


  List<Sections2> slist2 = [
    Sections2(no_lesson: 14),
    Sections2(no_lesson: 10),
    Sections2(no_lesson: 15),
    Sections2(no_lesson: 14),
    Sections2(no_lesson: 15),
    Sections2(no_lesson: 12),
  ];


  List<SectionModel> sections = [];

  void _getSections(){
    sections = SectionModel.getSections();
  }


  @override
  Widget build(BuildContext context) {
    _getSections();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
          style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)))),
          onPressed: () { Navigator.pop(context); },),
        title: Center(child: Text("Single Course", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Container(height: 675,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.lightBlue,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0, left: 0, right: 0,
                            child: Container(
                              height: 240,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2021/08/23/14/50/online-shopping-6567977_1280.png"),
                                      fit: BoxFit.cover)
                              ),
                            )
                        ),
                        Positioned(
                            top: 20,
                            right:20,
                            child: Container(
                              height: 50, width: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.withOpacity(0.25)),
                                child: Icon(Icons.favorite_border_outlined, color: Colors.white,))
                        ),
                        Positioned(
                            left:20,
                            bottom: 80,
                            child: Container(
                              //height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.black,
                              ),
                              //padding: EdgeInsets.all(2.0),
                              child: Center(child: Text("Sample Course",
                                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500 ),)),
                            )
                        ),
                        Positioned(
                            left: 20,
                            top: 250,
                            //right: 0,
                            bottom: 10,
                            child: Row(
                              children: [
                                Icon(Icons.watch_later_outlined, color: Color(0xffe59d1e)),
                                SizedBox(width: 5,),
                                Text("10 weeks",style: TextStyle(fontSize: 18, color: Colors.grey.shade500),)
                              ],
                            )
                        ),
                        Positioned(
                            left: 150,
                            top: 250,
                            //right: 0,
                            bottom: 10,
                            child: Row(
                              children: [
                                Icon(Icons.people_alt_outlined, color: Color(0xffe59d1e)),
                                SizedBox(width: 5,),
                                Text("3",style: TextStyle(fontSize: 18, color: Colors.grey.shade500),)
                              ],
                            )
                        ),
                        Positioned(
                            //left: 20,
                            top: 255,
                            right: 20,
                            bottom: 10,
                            child: Text("₹ 3,000",
                              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),)
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Text("Overview", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                    child: Container(height: 250,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n"
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n\n"
                        "when an unknown printer took a galley of type and scrambled it to make a type specimen "
                        "book.", style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Text("Curriculum", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
                    ),
                  ),

                  Column(
                    children: <Widget>[
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[0].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[0].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[0].lessons.length,
                                child: ListView.builder(itemCount: sections[0].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[0].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[0].lessons[index]['lesson']}'),
                                    trailing: sections[0].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded = expanded;
                          });
                        },
                      ),
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded2
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[1].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[1].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[1].lessons.length,
                                child: ListView.builder(itemCount: sections[1].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[1].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[1].lessons[index]['lesson']}'),
                                    trailing: sections[1].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded2 = expanded;
                          });
                        },
                      ),
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded3
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[2].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[2].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[2].lessons.length,
                                child: ListView.builder(itemCount: sections[2].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[2].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[2].lessons[index]['lesson']}'),
                                    trailing: sections[2].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded3 = expanded;
                          });
                        },
                      ),
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded4
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[3].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[3].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[3].lessons.length,
                                child: ListView.builder(itemCount: sections[3].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[3].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[3].lessons[index]['lesson']}'),
                                    trailing: sections[3].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded4 = expanded;
                          });
                        },
                      ),
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded5
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[4].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[4].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[4].lessons.length,
                                child: ListView.builder(itemCount: sections[4].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[4].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[4].lessons[index]['lesson']}'),
                                    trailing: sections[4].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded5 = expanded;
                          });
                        },
                      ),
                      ExpansionTile(
                        leading: Icon(
                          _customTileExpanded6
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,),
                        title: Text('${sections[5].section}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        trailing: Text("${sections[5].lessons.length}"),
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 49.0 * sections[5].lessons.length,
                                child: ListView.builder(itemCount: sections[5].lessons.length, itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: sections[5].lessons[index]['_lesson'] ? Icon(Icons.book) : Icon(Icons.quiz_outlined),
                                    title: Text('${sections[5].lessons[index]['lesson']}'),
                                    trailing: sections[5].lessons[index]['locked'] ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customTileExpanded6 = expanded;
                          });
                        },
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(height: 1, color: Colors.grey.shade400,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Text("Instructor",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)),
                  ),
                  Container(
                    height: 150, width: 150,
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/06/21/07/51/icon-2426371_1280.png"),radius: 30,),
                        Text("Instructor 1",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.facebook, color: Colors.grey), SizedBox(width: 3,),
                                Icon(Icons.telegram, color: Colors.grey), SizedBox(width: 3,),
                                Icon(Icons.play_circle_fill_outlined, color: Colors.grey),
                              ],),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RichText(text: TextSpan(
                      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Aenean dui augue, pharetra sit amet fringilla sit amet, lobortis at purus.  ',
                      style: TextStyle(fontWeight: FontWeight.w100, fontSize: 15, color: Colors.grey),
                    ),),
                  )

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){},
                  child: Container( height: 50, width: 100,
                      child: Center(child: Text("Restore", style: TextStyle(color: Colors.white, fontSize: 18),))),
                  style:  ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),),

                ),
                ElevatedButton(onPressed: (){},
                  child: Container( height: 50, width: 100,
                      child: Center(child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 18),))),
                  style:  ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Sections{
  late String section;
  late List<Map<String,dynamic>> lessons;

  Sections({required this.section, required this.lessons});
}

class Sections2{
  late int no_lesson;

  Sections2({required this.no_lesson});

  get lessons => null;
}
