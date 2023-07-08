import 'package:counter/view/floating_button.dart';
import 'package:counter/view/step_counter.dart';
import 'package:counter/view/title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BuildFloat(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Screen(),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleWidget(),
        StepCounter(),
      ],
    );
  }
}
