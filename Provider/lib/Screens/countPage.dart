import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/count_provider.dart';


class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Count", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.watch<CounterProvider>().value.toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
              onPressed: (){
                context.read<CounterProvider>().incrementValue();
          }),
          SizedBox(height: 20,),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: (){
                context.read<CounterProvider>().decementValue();
              }),
        ],
      ),
    );
  }
}
