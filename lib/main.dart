import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_controoler.dart';
import 'package:getx/Seconds_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('G E T X _ DEMO'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SecondScreen());
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
          child: GetBuilder<CounterController>(
        builder: (_) => Text(
          counterController.counter.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () async {
              await counterController.decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () async {
              await counterController.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
