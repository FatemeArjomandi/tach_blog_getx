import 'dart:isolate';

import 'package:flutter/material.dart';

class IsolateMain extends StatelessWidget {
  const IsolateMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  final receive = ReceivePort();
                  await Isolate.spawn(calsulated, ReceivePort().sendPort);
                  ReceivePort().listen((sum) {
                    debugPrint('Result: $sum');
                  });
                },
                child: Text('onpress'))
          ],
        ),
      ),
    );
  }

  static void calsulated(SendPort port) {
    debugPrint("Start Function Havy....");
    int sum = 0;
    int value = 1000000000000000;
    for (int i = 0; i < value; i++) {
      sum += i;
    }
    debugPrint('Finsh Function Havy.');
    port.send(sum);
  }
}
