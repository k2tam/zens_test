import 'package:flutter/material.dart';
import 'package:joke_app/constants.dart';
import '../models/joke.dart';
import 'dart:collection';

class JokeController extends ChangeNotifier{
  bool _isEnd = false;
  int _jokeIndex = 0;


  
  
  final List<Joke> _jokes = [
    Joke(content: 
    "A child asked his father, \"How were people born?\" So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\"The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\"The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family."),
    Joke(content: " Teacher: \"Kids,what does the chicken give you?\" Student: \"Meat!\" Teacher: \"Very good! Now what does the pig give you?\" Student: \"Bacon!\" Teacher: \"Great! And what does the fat cow give you?\" Student: \"Homework!\" "),
    Joke(content: "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'"),
    Joke(content: "A housewife, an accountant and a lawyer were asked \"How much is 2+2?\" The housewife replies: \"Four!\". The accountant says: \"I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time.\" The lawyer pulls the drapes, dims the lights and asks in a hushed voice, \"How much do you want it to be?")
  ];



  UnmodifiableListView<Joke> get allJokes {
    return UnmodifiableListView(_jokes);
  }



  Joke get currentJoke {
    return allJokes[_jokeIndex];
  }

  void nextJoke() {

    _jokeIndex += 1;
    
    if (_jokeIndex > _jokes.length-1) {
      _isEnd = true;
      notifyListeners();
      return;
    }
    notifyListeners();
  }

  bool get getIsEnd {
    return _isEnd;
  }

  void voteFunny(){
    currentJoke.vote = Vote.funny;
    nextJoke();
  
  }

  void voteNotFunny() {
    currentJoke.vote = Vote.bad;
    nextJoke();
  }


  




}