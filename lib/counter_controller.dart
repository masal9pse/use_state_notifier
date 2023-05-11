import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:use_state_notifier/counter_state.dart';

class CounterController extends StateNotifier<CounterState> {
  CounterController() : super(const CounterState(count: 0, isEnabled: true));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

   void disableCounter() {
    state = state.copyWith(isEnabled: false);
  }
}