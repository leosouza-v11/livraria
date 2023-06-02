import 'package:flutter/material.dart';
import '../classes/livro.dart';

class LivroCard extends StatelessWidget {
  const LivroCard({super.key, required this.livro});

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    //Eventos de toque no card
    return InkWell(
      child: Card(
          margin: const EdgeInsets.all(8),
          child: SizedBox(
            child: Column(
              // Espaço entre os textos
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  livro.titulo,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Image(
                  width: 130,
                  image: AssetImage(livro.capa),
                ),
              ],
            ),
          )),
    );
  }
}
