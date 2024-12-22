import 'package:flutter/material.dart';
import 'package:learnstacked/ui/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProfileViewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold();
      },
    );
  }
}
