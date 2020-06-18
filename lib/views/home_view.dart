import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/home/sectionOne.dart';
import '../widgets/home/sectionTwo.dart';
import '../widgets/home/sectionThree.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _currentPageIndex = 0.0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          // centerTitle: false,
          elevation: 0,
          leading: Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          title: sizing.isMobile
              ? SizedBox()
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlatButton(
                      child: Text(
                        'Home',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 0.0;
                          _pageController.animateToPage(0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                    ),
                    FlatButton(
                      child: Text(
                        'About Us',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 1.0;
                          _pageController.animateToPage(1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                    ),
                    FlatButton(
                      child: Text(
                        'Events',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 2.0;
                          _pageController.animateToPage(2,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                    ),
                    FlatButton(
                      child: Text(
                        'Board',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 2.0;
                          _pageController.animateToPage(2,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                    ),
                    FlatButton(
                      child: Text(
                        'Contact Us',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 2.0;
                          _pageController.animateToPage(2,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                    ),
                  ],
                ),

          actions: [
            if (sizing.isMobile)
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.menu),
                  ),
                ),
              ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/bg-img-white.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // color: Colors.red,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[700].withOpacity(0.4),
                    Colors.blue[700].withOpacity(0.4),
                    Colors.blue[600].withOpacity(0.3),
                  ],
                ),
              ),
            ),
            PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              onPageChanged: (i) {
                setState(() {
                  _currentPageIndex = i.toDouble();
                });
              },
              children: [
                SectionOne(),
                SectionTwo(),
                SectionThree(),
              ],
            ),
            Positioned(
              right: 20,
              child: Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: DotsIndicator(
                  dotsCount: 3,
                  axis: Axis.vertical,
                  position: _currentPageIndex,
                  decorator: DotsDecorator(
                    color: Colors.blue[200],
                    activeColor: Colors.blue,
                    activeSize: Size.fromRadius(6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
