import 'package:flutter/material.dart';

class TanggalWidget extends StatefulWidget {
  TanggalWidget({super.key, this.title});
  final String? title;
  @override
  State<TanggalWidget> createState() => _TanggalWidgetState();
}

class _TanggalWidgetState extends State<TanggalWidget> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.blue[900],
          child: const Icon(Icons.message),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title!),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("${selectedDate.toLocal()}".split(" ")[0]),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                  print(selectedDate.day +
                      selectedDate.month +
                      selectedDate.year);
                },
                child: Text('Pilih Tanggal'),
              )
            ],
          ),
        ));
  }
}
