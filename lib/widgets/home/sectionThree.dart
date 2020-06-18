import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../centered_view.dart';

class SectionThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Events',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                    color: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 200),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non nulla sit amet nisl consectetur iaculis. Suspendisse venenatis nisl risus, id finibus est interdum suscipit. Pellentesque cursus porta leo in imperdiet. Nullam a risus et nulla maximus feugiat nec a nulla. Fusce tincidunt massa est, sed fringilla massa luctus et.',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              child: CarouselSlider(
                items: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 711.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/aboutus.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non nulla sit amet nisl consectetur iaculis. Suspendisse venenatis nisl risus, id finibus est interdum suscipit. Pellentesque cursus porta leo in imperdiet. Nullam a risus et nulla maximus feugiat nec a nulla. Fusce tincidunt massa est, sed fringilla massa luctus et.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 711.11,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/aboutus.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non nulla sit amet nisl consectetur iaculis. Suspendisse venenatis nisl risus, id finibus est interdum suscipit. Pellentesque cursus porta leo in imperdiet. Nullam a risus et nulla maximus feugiat nec a nulla. Fusce tincidunt massa est, sed fringilla massa luctus et.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                ],
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
