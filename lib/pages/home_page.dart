import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        clipBehavior: Clip.none,
        // color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: 240,
                height: 120,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: const Card(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("00"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('000'),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ),
              ),
              Positioned(
                right: 0,
                top: -60,
                child: Image.network(
                    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                    height: 120),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
