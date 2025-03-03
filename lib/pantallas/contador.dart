import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override
  int clickcontador = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador.')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clicks!'),
            Text(
              '$clickcontador',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador++;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador--;
              });
            },
            child: Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickcontador = 0;
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
