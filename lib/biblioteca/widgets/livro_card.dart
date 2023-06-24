import 'package:flutter/material.dart';
import 'package:livraria/model/classes/livro.dart';
import 'package:livraria/biblioteca/widgets/livro_widget.dart';

class LivroCard extends StatelessWidget {
  const LivroCard({super.key, required this.livro});

  final Livro livro;

  @override
  Widget build(BuildContext context) {
    //Eventos de toque no card
    return InkWell(
      child: Card(
        color: const Color.fromRGBO(240, 248, 255, 1),
        margin: const EdgeInsets.all(4),
        //Borda do Card
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.5, color: Colors.blue),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          child: Column(
            // Espaço entre os textos
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                livro.titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                width: 85,
                image: AssetImage(livro.capa),
              ),
            ],
          ),
        ),
      ),

      //Quando clicado no card do livro, abre o widget com os dados do livro
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LivroWidget(livro: livro),
          ),
        );
      },
    );
  }
}
