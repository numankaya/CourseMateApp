import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Lottie.asset('assets/animations/lf20_nbs5jzhd.json'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Geri Dön"),
          ),
        ],
      ),
    );
  }
}
