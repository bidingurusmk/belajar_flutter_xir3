import 'package:flutter/material.dart';

class Row_ColumnWidget extends StatelessWidget {
  const Row_ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Row dan Kolom"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 90,
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: FlutterLogo(
              size: 90,
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.yellow,
                child: FlutterLogo(size: 90),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(size: 90),
              )
            ],
          )
        ],
      ),
    );
  }
}
