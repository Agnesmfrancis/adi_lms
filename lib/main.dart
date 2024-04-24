import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studentapp/get_user_info.dart';
//import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";

import 'package:studentapp/login_landing.dart';
import 'package:studentapp/onboarding.dart';
import 'package:studentapp/single_course.dart';
import 'package:studentapp/splash_screen.dart';
import 'package:studentapp/studentid_relogin.dart';
import 'package:studentapp/studentlogin.dart';

import 'homepage.dart';
import 'homepage2.dart';
import 'otp_verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      //home: SplashScreen(),
    );
  }
}


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List<Widget> pages=[
    HomePage(),
    StudentReLogin(),
    HomePage2(),
    HomePage(),
    HomePage2()
  ];
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      // Normal Navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        //type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 24,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        elevation: 5,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Courses",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_fill_outlined),
              label: "My Course",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Wishlist",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My Profile",
              backgroundColor: Colors.blue),

        ],
      ),

    );
  }
}



class Sections{
  late int no_lesson;

  Sections({required this.no_lesson});
}



class MyExpansionPanelList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  List<Sections> slist = [
    Sections(no_lesson: 14),
    Sections(no_lesson: 10),
    Sections(no_lesson: 15),
    Sections(no_lesson: 14),
    Sections(no_lesson: 15),
    Sections(no_lesson: 12),
  ];
  List<bool> _expanded = List.generate(6, (index) => false); // Keeps track of the expansion state

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _expanded[index] = isExpanded;
          });
        },
        children: List.generate(
          slist.length,
              (index) => ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text('Section ${index + 1}'),
                trailing: Text('${slist[index].no_lesson}'),
              );
            },
            body: _buildLessonList(index + 1), // List of ListTiles for each section
            isExpanded: _expanded[index],
          ),
        ),
      ),
    );
  }

  // Helper function to build the list of ListTile widgets for each section
  Widget _buildLessonList(int section) {
    //s = slist[index].no_lesson};
    return Column(
      children: List.generate(
        3,
        //slist[0].no_lesson,
            (index) => ListTile(
          title: Text('Lesson ${index + 1}'),
              trailing: Text('${slist[index].no_lesson}'),
              onTap: () {
            // Action when a lesson is tapped
            print('Lesson ${index + 1} tapped in Section $section');
          },
        ),
      ),
    );
  }
}






class ExpansionTileApp extends StatelessWidget {
  const ExpansionTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('ExpansionTile Sample')),
        body: const ExpansionTileExample(),
      ),
    );
  }
}

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _customTileExpanded = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  bool _customTileExpanded4 = false;
  bool _customTileExpanded5 = false;
  bool _customTileExpanded6 = false;
  
  bool _locked1 = false;
  bool _locked2 = true;
  bool _locked3 = true;
  bool _locked4 = true;
  bool _locked5 = true;
  bool _locked6 = true;

  List<Sections> slist = [
    Sections(no_lesson: 14),
    Sections(no_lesson: 10),
    Sections(no_lesson: 15),
    Sections(no_lesson: 14),
    Sections(no_lesson: 15),
    Sections(no_lesson: 12),
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // const ExpansionTile(
          //   title: Text('ExpansionTile 1'),
          //   subtitle: Text('Trailing expansion arrow icon'),
          //   children: <Widget>[
          //     ListTile(title: Text('This is tile number 1')),
          //   ],
          // ),
          ExpansionTile(
            leading: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
            ),
            title: Text('Section 1'),
            trailing: Text("${slist[0].no_lesson}"),
            children: [
              Container(
                height: 49 * 15,
                child: Column(
                  children: [
                    Container(
                      height: 49 * 14,
                      child: ListView.builder(itemCount: slist[0].no_lesson, itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Lesson ${index+1}'),
                          trailing: _locked1 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                        );
                      }),
                    ),
                    ListTile(
                      leading: Icon(Icons.quiz_outlined),
                      title: Text('Quiz 1'),
                      trailing: Icon(Icons.lock)
                    )
                  ],
                ),
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
            ),
            title: Text('Section 2'),
            trailing: Text("${slist[1].no_lesson}"),
            children: [
              Container(
                height: 49 * 10,
                child: ListView.builder(itemCount: slist[1].no_lesson, itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Lesson ${index+1}'),
                    trailing: _locked2 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                  );
                }),
              ),
              ListTile(
                  leading: Icon(Icons.quiz_outlined),
                  title: Text('Quiz 2'),
                  trailing: Icon(Icons.quiz_outlined)
              )
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded2 = expanded;
              });
            },
          ),
          ExpansionTile(
            leading: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
            ),
            title: Text('Section 3'),
            trailing: Text("${slist[2].no_lesson}"),
            children: [
              Container(
                height: 49 * 15,
                child: ListView.builder(itemCount: slist[2].no_lesson, itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Lesson ${index+1}'),
                    trailing: _locked3 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),                  );
                }),
              ),
              ListTile(
                  leading: Icon(Icons.quiz_outlined),
                  title: Text('Quiz 3'),
                  trailing: Icon(Icons.quiz_outlined)
              )
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded3 = expanded;
              });
            },
          ),
          ExpansionTile(
            leading: Icon(
              _customTileExpanded2
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
            ),
            title: Text('Section 4'),
            trailing: Text("${slist[3].no_lesson}"),

            children: [
              Container(
                height: 49 * 14,
                child: ListView.builder(itemCount: slist[3].no_lesson, itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Lesson ${index+1}'),
                    trailing: _locked4 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                  );
                }),
              ),
              ListTile(
                  leading: Icon(Icons.quiz_outlined),
                  title: Text('Quiz 4'),
                  trailing: Icon(Icons.quiz_outlined)
              )
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded4 = expanded;
              });
            },
          ),
          ExpansionTile(
            leading: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
            ),
            title: Text('Section 5'),
            trailing: Text("${slist[4].no_lesson}"),
            children: [Container(
              height: 49 * 15,
              child: ListView.builder(itemCount: slist[4].no_lesson, itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Lesson ${index+1}'),
                  trailing: _locked5 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                );
              }),
            ),
              ListTile(
                  leading: Icon(Icons.quiz_outlined),
                  title: Text('Quiz 5'),
                  trailing: Icon(Icons.quiz_outlined)
              )
            ],

            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded5 = expanded;
              });
            },
          ),
          ExpansionTile(
            leading: Icon(
              _customTileExpanded2
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
            ),
            title: Text('Section 6'),
            trailing: Text("${slist[5].no_lesson}"),
            children: [Container(
              height: 49 * 12,
              child: ListView.builder(itemCount: slist[5].no_lesson, itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Lesson ${index+1}'),
                  trailing: _locked6 ? Icon(Icons.lock) : Icon(Icons.visibility_outlined, color: Colors.green,),
                );
              }),
            ),
              ListTile(
                  leading: Icon(Icons.quiz_outlined),
                  title: Text('Quiz 6'),
                  trailing: Icon(Icons.quiz_outlined)
              )
            ],

            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded6 = expanded;
              });
            },
          ),
      
          // ExpansionTile(
          //   leading: Icon(
          //     _customTileExpanded
          //         ? Icons.arrow_drop_up
          //         : Icons.arrow_drop_down,
          //   ),
          //   title: const Text('ExpansionTile 2'),
          //   subtitle: const Text('Custom expansion arrow icon'),
          //   trailing: Text("${slist[0].no_lesson}"),
          //   // trailing: Icon(
          //   //   _customTileExpanded
          //   //       ? Icons.arrow_drop_down_circle
          //   //       : Icons.arrow_drop_down,
          //   // ),
          //   children: [Container(
          //     height: 49* 14,
          //     child: ListView.builder(itemCount: slist[0].no_lesson, itemBuilder: (BuildContext context, int index) {
          //       return ListTile(title: Text('Lesson ${index+1}'));
          //     }),
          //   ),],
          //   // const <Widget>[
          //   //   ListTile(title: Text('This is tile number 2')),
          //   // ],
          //   onExpansionChanged: (bool expanded) {
          //     setState(() {
          //       _customTileExpanded = expanded;
          //     });
          //   },
          // ),
          // const ExpansionTile(
          //   title: Text('ExpansionTile 3'),
          //   subtitle: Text('Leading expansion arrow icon'),
          //   controlAffinity: ListTileControlAffinity.leading,
          //   children: <Widget>[
          //     ListTile(title: Text('This is tile number 3')),
          //   ],
          // ),
        ],
      ),
    );
  }
}
