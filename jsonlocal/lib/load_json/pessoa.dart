// To parse this JSON data, do
//
//     final pessoa = pessoaFromJson(jsonString);

import 'dart:convert';

List<Pessoa> pessoaFromJson(String str) => List<Pessoa>.from(json.decode(str).map((x) => Pessoa.fromJson(x)));

String pessoaToJson(List<Pessoa> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pessoa {
    Pessoa({
        this.nome,
        this.idade,
        this.sexo,
    });

    String nome;
    String idade;
    String sexo;

    factory Pessoa.fromJson(Map<String, dynamic> json) => Pessoa(
        nome: json["nome"],
        idade: json["idade"],
        sexo: json["sexo"],
    );

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "idade": idade,
        "sexo": sexo,
    };
}
