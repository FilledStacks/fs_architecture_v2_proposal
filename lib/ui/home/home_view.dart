import 'package:flutter/material.dart';
import 'package:new_architecture/ui/home/home_viewmodel.dart';
import 'package:new_architecture/ui/startup/startup_view.dart';
import 'package:new_architecture/ui/smart_widgets/widget_one/widget_one.dart';
import 'package:new_architecture/ui/smart_widgets/widget_two/widget_two.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>.withConsumer(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Wrap(
            children: <Widget>[
              WidgetOne(),
              SizedBox(
                width: 50,
              ),
              ...List<int>.generate(100, (index) => index)
                  .map((id) => WidgetTwo(id: id))
                  .toList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.updateData();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => StartupView()));
          },
        ),
      ),
    );
  }
}
