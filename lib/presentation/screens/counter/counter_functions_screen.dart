import 'package:flutter/material.dart';

//stless
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("COUNTER FUNCTIONS"),
          backgroundColor: Colors.blue,
          elevation: 200.0,
          foregroundColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 248, 246, 246),
          titleTextStyle: const TextStyle(
            inherit: true,
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            decorationColor: Color.fromARGB(255, 248, 246, 246),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.done_all_outlined),
              focusColor: Colors.orange.withOpacity(0.3),
              highlightColor: Colors.orange.withOpacity(0.3),
              iconSize: 50.0,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              color: Colors.blue,
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                "Clik${(clickCounter == 1) ? "" : 's'}",
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  clickCounter--;
                });
              },
            )
          ],
        ));
    
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
