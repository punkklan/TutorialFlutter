
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print ('Contruido Página');
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top:24),
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
              ),

              FlatButton(
                color: Colors.blue, 
                onPressed: () { 
                  Get.toNamed("/second");
                  }, 
                child: Text('Page 2 >'),
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
