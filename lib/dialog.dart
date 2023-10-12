import 'package:flutter/material.dart';

class dialogWidget extends StatelessWidget {
  const dialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, bottom: 5, right: 1),
      child: ElevatedButton(
        child: const Text("Show alert"),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = ElevatedButton(
    onPressed: () {},
    child: Text("OK"),
  );
  AlertDialog alert = AlertDialog(
    title: Text("alert"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
