import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = StateNotifierProvider<CounterValueNotifier, int>(
    (ref) => CounterValueNotifier());

class CounterValueNotifier extends StateNotifier<int> {
  CounterValueNotifier() : super(0);
  void add(int value) {
    state = state + value;
  }
}
