
import 'package:estrutura_base_get/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print ('Contruido Página');
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_){
                return Text('${_.counter}',
                style: Theme.of(context).textTheme.headline4,);
              },
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Controller.to.incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      
    );
  }
}
