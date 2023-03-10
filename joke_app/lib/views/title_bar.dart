import 'package:flutter/material.dart';
import 'package:joke_app/constants.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'A joke a day keeeps the doctor away',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}