import 'package:flutter/material.dart';
import 'package:joke_app/controllers/joke_controller.dart';
import 'package:joke_app/models/joke.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './button.dart';
import '../constants.dart';
import './no_joke.dart';
import '';

class Content extends StatefulWidget {
  const Content({
    super.key,
  });

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    var isEnd = Provider.of<JokeController>(context).getIsEnd;
    
    return  isEnd? NoJoke() : Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Provider.of<JokeController>(context).currentJoke.content,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VoteButton(
                  title: 'This is funny!',
                  color: kSecondaryColor,
                  onPressed: () {
                    Provider.of<JokeController>(context, listen: false).voteFunny();
                  },
                ),
                VoteButton(
                  title: 'This is not funny!',
                  color: kPrimaryColor,
                  onPressed: () {
                    Provider.of<JokeController>(context, listen: false).voteNotFunny();

                  },
                )
              ],
            )
          ],
        ),
      );
  }
}
