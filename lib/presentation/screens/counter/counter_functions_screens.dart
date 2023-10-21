import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  String clickText = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            } ,
            icon: const Icon( Icons.refresh_rounded )
          )
        ],
      ),
      body: Center(
        child: Column(
          //Centra el contenido al centro de la pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(clickCounter.toString(), style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold)),
            Text(clickText, style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10, width: 50),
          CustomButton(
            icon: Icons.add,
            onPressed: () {
              setState(() {
                clickCounter++;
                (clickCounter == 1) ? clickText = 'Click' : clickText = 'Clicks';
              });
            },
            ),
          const SizedBox(height: 10, width: 50),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if(clickCounter == 0) return;
                clickCounter--;
                (clickCounter == 1) ? clickText = 'Click' : clickText = 'Clicks';
              });
            },
          ),
          const TextButton(
            onPressed: null,
            child: Text('text button')),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      backgroundColor:const Color.fromARGB(255, 152, 241, 189),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      splashColor: const Color.fromARGB(255, 113, 212, 116),
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon)
    );
  }
}