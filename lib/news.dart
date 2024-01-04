import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("News"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Berita Terbaru"),
                  ),
                  Text("Pertandingan Hari Ini"),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/siswa_smktelkom.jpeg"),
                    ),
                    Text("Costa Mendekat ke gawang lawan"),
                    Container(
                      color: Colors.purple,
                      child: Text("Transfer"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
