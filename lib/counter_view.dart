import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:use_state_notifier/counter_controller.dart';
import 'package:use_state_notifier/counter_state.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(Provider.of<CounterState>(context).count.toString()),
          IconButton(
            onPressed: () {
              Provider.of<CounterController>(context, listen: false)
                  .increment();
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
