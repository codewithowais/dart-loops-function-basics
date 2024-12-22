import 'package:flutter/material.dart';
import 'package:learnstackedsec2/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.title),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Text('${model.counterServiceWithOutSingleton.counter}'),
              TextButton(
                onPressed: () {
                  model.addValue();
                },
                child: const Text("Addd"),
              ),
              TextButton(
                onPressed: () {
                  model.subtractValue();
                },
                child: const Text("Sub"),
              ),
            ],
          ),
        );
      },
    );
  }
}
