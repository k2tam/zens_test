import 'package:flutter/material.dart';

class VoteButton extends StatelessWidget {
  final String title;
  Color color ;
  final Function onPressed;

  VoteButton({required this.title, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          color,
        ),
      ),
      child: Text(title),
    );
  }
}