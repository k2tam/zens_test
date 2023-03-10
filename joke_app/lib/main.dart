import 'package:flutter/material.dart';
import 'package:joke_app/constants.dart';
import 'package:joke_app/controllers/joke_controller.dart';
import 'package:provider/provider.dart';
import './views/title_bar.dart';
import './views/end_bar.dart';
import './views/button.dart';
import './views/header.dart';
import './views/content.dart';

void main() {
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Header(),
            ),
            const Expanded(
              flex: 2,
              child: TitleBar(),
            ),
            Expanded(
              flex: 10,
              child: ChangeNotifierProvider(
                create: (context) => JokeController(),
                child: const Content(),
              ),
            ),
            
            const Expanded(
              flex: 2,
              child: EndBar(),
            ),
          ],
        ),
      ),
    );
  }
}
