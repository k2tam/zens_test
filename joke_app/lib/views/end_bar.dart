import 'package:flutter/material.dart';

class EndBar extends StatelessWidget {
  const EndBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Divider(
            height: 1,
            color: Color.fromARGB(255, 159, 143, 142),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel ex sed ligula tristique molestie sed vitae lectus. Nulla dictum molestie velit, eget consequat est elementum eget. Integer sodales, metus in sollicitudin laoreet,',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            'Copyright 2023 K2tam',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
