import 'package:flutter/material.dart';
import '../centered_view.dart';

class SectionOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Text(
        'We stand today united in a belief in beauty, genius and courage and that these can transform the world',
        style: TextStyle(
          color: Colors.white,
          fontSize: 36,
        ),
      ),
    );
  }
}
