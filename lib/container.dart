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
            margin: EdgeInsets.all(50),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            color: Colors.amber[900],
            child: Text(
              "Semangat Belajar",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
