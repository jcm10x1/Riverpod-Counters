import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:usingstatenotiferprovider/counter.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(valueProvider.notifier).add(1);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(child: Text(ref.watch(valueProvider).toString())),
    );
  }
}
