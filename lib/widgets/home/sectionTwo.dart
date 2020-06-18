import 'package:flutter/material.dart';
import '../centered_view.dart';

class SectionTwo extends StatelessWidget {
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
            child: Image.asset(
              'assets/img/aboutus.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'About Us',
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
          )
        ],
      ),
    );
  }
}
