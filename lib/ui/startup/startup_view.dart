import 'package:flutter/material.dart';
import 'package:new_architecture/ui/startup/startup_viewmodel.dart';
import 'package:provider_architecture/provider_architecture.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<StartupVieWModel>.withConsumer(
      viewModelBuilder: () => StartupVieWModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
      ),
    );
  }
}
