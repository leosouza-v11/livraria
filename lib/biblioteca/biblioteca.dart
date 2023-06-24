import 'package:flutter/material.dart';
import 'package:livraria/biblioteca/views/dashboard.dart';
import 'package:livraria/biblioteca/views/favoritos.dart';
import 'package:livraria/biblioteca/views/perfil.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  State<Biblioteca> createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  var _itemSelecionado = 0;
  final _subTelas = const [Dashboard(), Favoritos(), Perfil()];

  //Altera as telas através do BottomNavigationBar
  void _alterarBottomNav(int index) {
    if (index == 3) {
      //Exibe o alerta de sair
      alertaSair(context);
    } else {
      setState(() {
        //altera o estado
        _itemSelecionado = index;
      });
    }
  }

  //Exibe um alerta para sair
  void alertaSair(BuildContext context) {
    // Botão Cancelar
    Widget btCancelar = TextButton(
      child: const Text('Cancelar'),
      onPressed: () {
        Navigator.of(context).pop(); //Volta para a tela anterior
      },
    );

    // Botão Confirmar
    Widget btConfirmar = TextButton(
      child: const Text('Confirmar'),
      onPressed: () {
        Navigator.of(context).pushNamed('/'); //Volta para tela de login
      },
    );

    //Configura o Alerta
    AlertDialog alerta = AlertDialog(
      title: const Text('Sair'),
      content: const Text('Deseja realmente sair?'),
      actions: [btCancelar, btConfirmar],
    );

    //Exibir o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /*
    // args é o argumento que vem do botão de Cadastro
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    int idUsuario = args['id'];

    debugPrint('#############################################################');
    debugPrint('O id do Usuário é: $idUsuario');
    debugPrint('#############################################################');

    //Busca o usuário no banco
    //var resultado = UsuarioDAO.carregarUsuario(idUsuario);
  
    FutureBuilder(
      future: UsuarioDAO.carregarUsuario(idUsuario), //Quem fornece os dados
      builder: ((context, snapshot) {
        //Se não terminou, fica com o Circular
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        //Se tiver erro
        if (snapshot.hasError) {
          return Center(
            child: Text('Houve um erro: ${snapshot.error}'),
          );
        }

        //Se terminou e não teve erro
        List<Usuario> usuarios = snapshot.data as List<Usuario>;

        //Cria um novo usuário com as informações do banco
        var usuario = Usuario(
          id: idUsuario,
          nome: usuarios[0].nome,
          email: usuarios[0].email,
          telefone: usuarios[0].telefone,
          senha: usuarios[0].senha,
        );

        return build(context);
      }),
    );
*/
    return WillPopScope(
      //Não deixa voltar usando a seta do appBar ou do Celular
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _subTelas[_itemSelecionado],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //Permite mais de 3 itens
          currentIndex: _itemSelecionado, // Qual ícone já vem selecionado
          selectedItemColor: Colors.white,
          backgroundColor: Colors.lightBlue,
          items: const <BottomNavigationBarItem>[
            // 1º ícone
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: Icon(Icons.home),
            ),

            // 2º ícone
            BottomNavigationBarItem(
              label: 'Favoritos',
              icon: Icon(Icons.favorite), //sem clicar usa esse ícone
            ),

            // 3º ícone
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(Icons.person), // 3º ícone
            ),

            // 4º ícone
            BottomNavigationBarItem(
              label: 'Sair',
              icon: Icon(Icons.exit_to_app_outlined),
            )
          ],

          onTap: _alterarBottomNav, // Passa a posição do ícone clicado
        ),
      ),
    );
  }
}
