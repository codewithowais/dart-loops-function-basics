import 'package:flutter/material.dart';
import 'package:learnstacked/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(viewModel.title),
          ),
          body: ListTile(
            title: Text('${viewModel.abcService.abc}'),
            subtitle: Text('${viewModel.abcServiceWithOutSingleton.abc}'),
          ),
        );
      },
    );
  }
}
