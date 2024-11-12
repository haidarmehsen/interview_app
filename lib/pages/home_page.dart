import 'package:flutter/material.dart';
import 'package:interview_app/notifiers/counter_notifier.dart';
import 'package:interview_app/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final CounterNotifier _counterNotifier;

  @override
  void initState() {
    super.initState();
    _counterNotifier = CounterNotifier(0);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: _counterNotifier,
                builder: (context, state, _) => Text(
                  '${_counterNotifier.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Increment',
                onPressed: _counterNotifier.increment,
              ),
            ],
          ),
        ),
      );
}
