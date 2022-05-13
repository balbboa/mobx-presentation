// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo com useState'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '${_counter}',
                  style: TextStyle(color: Colors.black, fontSize: 80),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  child: Text(
                    'Incrementar',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    _incrementCounter();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
