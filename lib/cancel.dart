import 'package:flutter/material.dart';

class Cancel extends StatefulWidget {
  const Cancel({Key? key}) : super(key: key);

  @override
  State<Cancel> createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: (){

          },
          child: Text("he")),

    );
  }
}
