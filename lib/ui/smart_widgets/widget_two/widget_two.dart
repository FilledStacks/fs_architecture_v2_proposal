import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

import 'widget_two_viewmodel.dart';

class WidgetTwo extends StatelessWidget {
  final int id;
  const WidgetTwo({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<WidgetTwoViewModel>.withConsumer(
      viewModelBuilder: () => WidgetTwoViewModel(id),
      builder: (context, model, child) => GestureDetector(
        onTap: () => model.updateValueForId(),
        child: Container(
          width: 100,
          
          height: 100,
          color: Colors.red[((id % 10) * 100)],
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap to Reset',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                model.postCount.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
