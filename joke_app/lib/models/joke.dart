import '../constants.dart';

class Joke {
  final String content;
  Vote vote;

  Joke({
    required this.content,
    this.vote = Vote.unDefine,
  });
}
