import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_landing.dart';

class PageeeView extends StatefulWidget {
  const PageeeView({super.key});

  @override
  State<PageeeView> createState() => _PageeeViewState();
}

class _PageeeViewState extends State<PageeeView> {
  final PageController controller = PageController();
  int _activePage=0;
  void onNextPage(){
    if(_activePage  < _pages.length - 1) {
      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn,);
    }
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'color': '#ffe24e',
      'title': 'Unlock More Features with Your Student ID!',
      //'image': 'assets/images/GROUP_OF_INSTITUTE_NEW_LOGO.png',
      //'image': 'https://media.istockphoto.com/id/1160203919/vector/delivery-infographic-design.jpg?s=1024x1024&w=is&k=20&c=DK9VBT1QVfbu6U83YbbGSDVBfSUzFb7tAoWUBOAy9Vs=',
      'image': 'https://media.istockphoto.com/id/539025928/vector/math-icon-background.jpg?s=2048x2048&w=is&k=20&c=fdlr_KzM2_LLJpeq470MUdQL6xpN7A9plY3w06lG0ms=',
      'description': "Login with valid student id to enjoy more features",
      'skip': true
    },
    {
      'color': '#a3e4f1',
      'title': 'Use your student ID',
      //'image': 'assets/images/image2.png',
      'image': 'https://cdn.pixabay.com/photo/2015/11/15/07/47/geometry-1044090_1280.jpg',
      'description': ' Gain access to:\n'
          '• Personalized learning experiences\n'
          '• Enhanced collaboration tools     \n'
          '• Exclusive student resources      \n'
          'Simply enter your student ID during your next login and unlock the full potential of our LMS platform.',
      'skip': true
    },
    {
      'color': '#31b77a',
      'title': 'Don\'t have your student ID readily available? ',
      //'image': 'assets/images/image3.png',
      'image': 'https://cdn.pixabay.com/photo/2020/09/24/16/50/board-5599231_1280.png',
      'description': 'No problem! You can still access the LMS using your current login credentials. '
          'However, for the best experience, we recommend logging in with your student ID.',
      'skip': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: 720,
            // child: Stack(
            //   children: [
            //     PageView.builder(
            //         controller: controller,
            //         itemCount: _pages.length,
            //         onPageChanged: (int page) {
            //           setState(() {
            //             _activePage = page;
            //           });
            //         },
            //         itemBuilder: (BuildContext context, int index){
            //           return IntroWidget(
            //             color: _pages[index]['color'],
            //             title: _pages[index]['title'],
            //             description: _pages[index]['description'],
            //             image: _pages[index]['image'],
            //             skip: _pages[index]['skip'],
            //             onTab: onNextPage, index: index,
            //           );
            //         }
            //     ),
            //     Positioned(
            //       //top: MediaQuery.of(context).size.height / 1.75,
            //         right: 0,
            //         left: 500,
            //         bottom: 0,
            //         child:SmoothPageIndicator(
            //             controller: controller,  // PageController
            //             count:  3,
            //             effect:  ExpandingDotsEffect(),  // your preferred effect
            //             onDotClicked: (index){
            //
            //             }
            //         )
            //     )
            //
            //   ],
            // ),
            child:
            PageView.builder(
                controller: controller,
                itemCount: _pages.length,
                onPageChanged: (int page) {
                  setState(() {
                    _activePage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index){
                  return IntroWidget(
                    color: _pages[index]['color'],
                    title: _pages[index]['title'],
                    description: _pages[index]['description'],
                    image: _pages[index]['image'],
                    skip: _pages[index]['skip'],
                    onTab: onNextPage, index: index,
                  );
                }
            ),

          ),
          Container(
              //top: MediaQuery.of(context).size.height / 1.75,
              //   right: 0,
              //   left: 500,
              //   bottom: 0,
                child:SmoothPageIndicator(
                    controller: controller,  // PageController
                    count:  3,
                    effect:  ExpandingDotsEffect(),  // your preferred effect
                    onDotClicked: (index){

                    }
                )
      )

        ],
      ),
    );
  }
}



class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    required this.skip,
    required this.image,
    required this.onTab,
    required this.index,});

  final String color;
  final String title;
  final String description;
  final bool skip;
  final String image;
  final VoidCallback onTab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return
      ColoredBox(
      color: hexToColor(color),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    //image: AssetImage(image),
                    image: NetworkImage(image),
                    fit: BoxFit.fill
                )
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: index == 0 ? const Radius.circular(100) : const Radius.circular(100),
                    topRight: index == 2 ? const Radius.circular(100) : const Radius.circular(100),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const SizedBox(height: 62,),
                    Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16,),
                    Text(description, style: const TextStyle(fontSize: 18, height: 1.5, color: Colors.black54), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: skip
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginLanding()),
                        );
                      },
                      child: const Text('Skip Now', style: TextStyle(color: Colors.black),),
                    ),
                    GestureDetector(
                      onTap: onTab,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: hexToColor(color),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(Icons.arrow_circle_right, color: Colors.white, size: 42),
                      ),
                    )
                  ],
                )
                    :  SizedBox(
                  height: 46,
                  child: MaterialButton(
                    color: hexToColor(color),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginLanding()),
                      );
                    },
                    child: const Text('Get Started', style: TextStyle(color: Colors.white)),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xFF000000 : 0x00000000));
}