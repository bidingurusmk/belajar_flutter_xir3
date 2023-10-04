import 'package:flutter/material.dart';

class GambarWidget extends StatelessWidget {
  const GambarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Home"),
        ),
        body: Image(
          image: AssetImage("assets/siswa_smktelkom.jpeg"),
          width: 300,
        ));
  }
}
