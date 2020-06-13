import 'package:flutter/material.dart';
import 'load_json/pessoa.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(primarySwatch: Colors.teal),
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  Future<List<Pessoa>> fetchItems(BuildContext context) async {
    final jsonString = await DefaultAssetBundle.of(context)
        .loadString('lib/load_json/pessoa.json');
    return pessoaFromJson(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoas"),
      ),
      body: Container(
          child: FutureBuilder(
          future: fetchItems(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Pessoa pessoa = snapshot.data[index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          pessoa.nome,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Idade: ' + pessoa.idade),
                        Text('Genero: ' + pessoa.sexo),
                      ],
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        )
      ),
    );
  }
}
