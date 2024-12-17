import 'package:flutter/material.dart';
import 'package:online_shop/shopping_screen.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/chekout/checkout_screen.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}
class _StepperScreenState extends State<StepperScreen> with SingleTickerProviderStateMixin {
   TabController? controller;
   @override
  void initState() {
     controller =TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  List<Step> step() => [
    Step(
        state: StepState.complete,
        title: Text("Your bag"), content: Container(color: Colors.red,)),
    Step(
        state: StepState.complete,
        title: Text("Your bag"), content: Container(color: Colors.blue,)),
    Step(
        state: StepState.complete,
        title: Text("Your Tag"), content: Container(color: Colors.yellow,)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Stepper(
          type: StepperType.horizontal,
          steps: step()),

    );
  }
}
