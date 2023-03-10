import 'package:flutter/material.dart';
import 'package:joke_app/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.sentiment_very_satisfied,
            size: 40,
            color: kSecondaryColor,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Handicrafted by',
                    style: TextStyle(
                      color: Color.fromARGB(255, 149, 138, 137),
                    ),
                  ),
                  Text('Tam Bui'),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/tam.jpg'),
              )
            ],
          )
        ],
      ),
    );
  }
}
