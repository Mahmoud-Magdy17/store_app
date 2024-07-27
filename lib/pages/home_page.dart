import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.blue,
        child: IconButton(
          onPressed: () async {
            
          },
          icon: const Icon(Icons.stacked_line_chart),
        ),
      )),
    );
  }
}
