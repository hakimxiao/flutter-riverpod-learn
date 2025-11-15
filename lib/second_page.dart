import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/providers.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int number = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$number', style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // read - notifier : notifier tidak hanya merubah nilai tapi juga memberi sinyal
                    //                   jika state berubah, sehingga widget di build ulang. Read
                    //                   kita membaca dahulu kemudian increment.
                    ref.read(counterProvider.notifier).state--;
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(counterProvider.notifier).state++;
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // ** -> MANUAL DISPOSE (A1)
                ref.invalidate(counterProvider);
              },
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
