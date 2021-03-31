import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inherited_widget/main.dart';

import 'counter.dart';

class AppRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootWidgetState = MyInheritedWidget.of(context).myState;
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Text('(Root Widget)', style: Theme.of(context).textTheme.display1),
          Text('${rootWidgetState.counterValue}', style: Theme.of(context).textTheme.display1),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Counter(),
              Counter(),
            ],
          ),
        ],
      ),
    );
  }
}