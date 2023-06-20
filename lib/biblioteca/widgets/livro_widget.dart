import 'package:flutter/material.dart';
import 'package:livraria/biblioteca/classes/livro.dart';

class LivroWidget extends StatefulWidget {
  const LivroWidget({super.key, required this.livro});

  final Livro livro;

  @override
  State<LivroWidget> createState() => _LivroWidgetState();
}

class _LivroWidgetState extends State<LivroWidget> {
  bool _btFavoritos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //Encosta o body no appBar
      backgroundColor: const Color.fromRGBO(212, 242, 246, 1),
      //o appBar só é necessário por conta do "voltar"
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //Leva a barra para o topo
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 32), //Espaçamento

            //Botão de Adicionar
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    // Colocar o livro nos favoritos do Banco de Dados
                    setState(() {
                      _btFavoritos = !_btFavoritos;
                    });
                  },
                  icon: Icon(
                    (_btFavoritos == false)
                        ? Icons.favorite_border
                        : Icons.favorite,
                    color: Colors.lightBlue,
                    size: 40,
                  ),
                ),
              ],
            ),

            //Capa Livro
            Image(
              width: 200,
              height: 400,
              image: AssetImage(widget.livro.capa),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Título
                Text(
                  widget.livro.titulo,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 24), //Espaçamento

                //Informações sobre o Livro
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Autor
                    Text(
                      'Autor: ${widget.livro.autor}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 8), //Espaçamento

                    //Páginas
                    Text(
                      'Páginas: ${widget.livro.paginas}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 8), //Espaçamento

                    //Editora
                    Text(
                      'Editora: ${widget.livro.editora}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 8), //Espaçamento

                    //Publicação
                    Text(
                      'Ano de Publicação: ${widget.livro.publicacao}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16), //Espaçamento

                //Sinopse
                Wrap(
                  //Quebra de linha automática
                  children: [
                    Text(
                      'Sinopse: ${widget.livro.sinopse}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      /*
      body: Wrap(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                //width: MediaQuery.of(context).size.width * 1,
                child: Wrap(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 32), //Espaçamento
                            //Capa Livro
                            Image(
                              width: 150,
                              height: 300,
                              image: AssetImage(livro.capa),
                            ),
                          ],
                        ),

                        const SizedBox(width: 16), //Espaçamento

                        //Informações do Livro
                        Wrap(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Título
                                Text(
                                  livro.titulo,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 24), //Espaçamento

                                //Autor
                                Text(
                                  'Autor: ${livro.autor}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),

                                const SizedBox(height: 8), //Espaçamento

                                //Páginas
                                Text(
                                  'Páginas: ${livro.paginas}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),

                                const SizedBox(height: 8), //Espaçamento

                                //Editora
                                Text(
                                  'Editora: ${livro.editora}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),

                                const SizedBox(height: 8), //Espaçamento

                                //Publicação
                                Text(
                                  'Ano de Publicação: ${livro.publicacao}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 16), //Espaçamento
                      ],
                    ),

                    //Sinopse
                    Wrap(
                      children: [
                        Text(
                          'Sinopse: ${livro.sinopse}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),*/
    );
  }
}
