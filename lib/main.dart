import 'package:flutter/material.dart';
import 'package:livraria/biblioteca/biblioteca.dart';
import 'package:livraria/biblioteca/widgets/alterar_senha.dart';
import 'package:livraria/login/login.dart';
import 'package:livraria/login/widgets/cadastro.dart';
import 'package:livraria/login/widgets/esqueceu_senha.dart';

void main() {
  runApp(const LivrariaApp());
}

class LivrariaApp extends StatelessWidget {
  const LivrariaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Livraria',
      debugShowCheckedModeBanner: false, //Tira a tarja "Debug"
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      initialRoute: '/', //Rota inicial
      routes: {
        '/': (context) => const Login(),
        '/esqueceu_senha': (context) => const EsqueceuSenha(),
        '/alterar_senha': (context) => const AlterarSenha(),
        '/cadastro': (context) => const Cadastro(),
        '/biblioteca': (context) => const Biblioteca(),
      },
    );
  }
}
