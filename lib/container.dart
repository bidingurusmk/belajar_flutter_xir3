import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Container"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text(
                "Send",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height - 130,
              alignment: Alignment.bottomRight,
              child: Text(
                'Semangat Belajar',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
        ],
      ),
    );
  }
}
