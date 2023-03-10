import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:joke_app/constants.dart';

class NoJoke extends StatelessWidget {
  const NoJoke({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.sentiment_satisfied,size: 300, color: kPrimaryColor,),
        Text("That's all the jokes for today !", style: TextStyle(fontSize: 20),),
        Text("Come back another day!"),
      ],
    );
  }
}
