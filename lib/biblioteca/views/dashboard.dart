import 'package:flutter/material.dart';
import 'package:livraria/biblioteca/classes/livro.dart';
import 'package:livraria/biblioteca/widgets/livro_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //Lista de Livros
  final List<Livro> livros = Livro.gerarLivros();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(212, 242, 246, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false, //Remove o "voltar"
        title: const SizedBox(
          width: 300,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              //Backgroud
              filled: true,
              fillColor: Color.fromRGBO(212, 242, 246, 1),

              //Texto dentro do campo
              hintText: ' Pesquisar',
              contentPadding: EdgeInsets.all(1.0),

              //Borda antes de clicar
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),

              //Borda depois de clicar
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),

              //Ícone antes do texto
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),

        actions: const [
          SizedBox(
            width: 65,
            height: 40,
            child: Icon(Icons.tune_outlined),
          ),
        ],
      ),

      //Grid com os livros
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1),

        //Roda o "for" a quantidade de livros na lista
        itemCount: livros.length,

        //chama a lista toda, um por vez (como num for) e coloca em algo (Card)
        itemBuilder: (context, index) => LivroCard(
          livro: livros[index],
        ),
      ),
    );
  }
}
