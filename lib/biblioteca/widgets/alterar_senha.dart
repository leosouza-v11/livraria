import 'package:flutter/material.dart';

class AlterarSenha extends StatefulWidget {
  const AlterarSenha({super.key});

  @override
  State<AlterarSenha> createState() => _AlterarSenhaState();
}

class _AlterarSenhaState extends State<AlterarSenha> {
  //Campos Senhas
  late final TextEditingController _senhaAtualController;
  late final TextEditingController _novaSenhaController;
  late final TextEditingController _confirmarNovaSenhaController;

  //Visualizar senhas
  bool _senhaAtualEscondida = true;
  bool _novaSenhaEscondida = true;
  bool _confirmarNovaSenhaEscondida = true;

  //Mostrar ou Esconder Senha Atual
  void _visibilidadeSenhaAtual() {
    setState(() {
      _senhaAtualEscondida = !_senhaAtualEscondida;
    });
  }

  //Mostrar ou Esconder Nova Senha
  void _visibilidadeNovaSenha() {
    setState(() {
      _novaSenhaEscondida = !_novaSenhaEscondida;
    });
  }

  //Mostrar ou Esconder Confirmar Nova Senha
  void _visibilidadeConfirmarSenha() {
    setState(() {
      _confirmarNovaSenhaEscondida = !_confirmarNovaSenhaEscondida;
    });
  }

  @override
  void initState() {
    _senhaAtualController = TextEditingController();
    _novaSenhaController = TextEditingController();
    _confirmarNovaSenhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _senhaAtualController.dispose();
    _novaSenhaController.dispose();
    _confirmarNovaSenhaController.dispose();
    super.dispose();
  }

  //Função que altera a senha
  _alterarSenha(BuildContext context) {
    //Verifica se senhas são iguais
    verificarSenhas();

    if (_senhaAtual == true && _senhasIguais == true) {
      //
      //  código de update no banco
      //

      //Botão OK
      Widget btConfirmar = TextButton(
        child: const Text('OK'),
        onPressed: () {
          Navigator.pop(context); //Volta para tela de alterar senha
          Navigator.pop(context); //Volta para tela de perfil
        },
      );

      //Configura o Alerta
      AlertDialog alerta = AlertDialog(
        //title: const Text('Senha Redefinida'),
        content: const Text('Senha alterada com Sucesso!'),
        actions: [btConfirmar],
      );

      //Exibir o diálogo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        },
      );
    } else if (_senhaAtual == false) {
      //Botão OK
      Widget btConfirmar = TextButton(
        child: const Text('OK'),
        onPressed: () {
          Navigator.pop(context); //Volta para tela de alterar senha
        },
      );

      //Configura o Alerta
      AlertDialog alerta = AlertDialog(
        //title: const Text('Senha Redefinida'),
        content: const Text('Senha Atual Incorreta!'),
        actions: [btConfirmar],
      );

      //Exibir o diálogo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        },
      );
    } else if (_senhasIguais == false) {
      //Botão OK
      Widget btConfirmar = TextButton(
        child: const Text('OK'),
        onPressed: () {
          Navigator.pop(context); //Volta para tela de alterar senha
        },
      );

      //Configura o Alerta
      AlertDialog alerta = AlertDialog(
        //title: const Text('Senha Redefinida'),
        content: const Text('Senhas Diferentes!'),
        actions: [btConfirmar],
      );

      //Exibir o diálogo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        },
      );
    }
  }

  //Verifica Senhas
  late bool _senhasIguais;
  late bool _senhaAtual;

  verificarSenhas() {
    //Verifica a senha atual
    if (_senhaAtualController.text == '123') {
      setState(() {
        _senhaAtual = true;
      });
    } else {
      setState(() {
        _senhaAtual = false;
      });
    }

    //Verifica a nova senha
    if ((_novaSenhaController.text == _confirmarNovaSenhaController.text) &&
        (_novaSenhaController.text != '' ||
            _confirmarNovaSenhaController.text != '')) {
      setState(() {
        _senhasIguais = true;
      });
    } else {
      setState(() {
        _senhasIguais = false;
      });
    }
  }

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
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.75),

                //Logo
                const Image(
                  width: 150,
                  image: AssetImage('assets/images/alterar-senha.png'),
                ),

                const SizedBox(height: 30), //Espaçamento

                //Campo Senha Atual
                TextField(
                  controller: _senhaAtualController,
                  obscureText: _senhaAtualEscondida,
                  decoration: InputDecoration(
                    label: const Text(
                      'Senha Atual',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),

                    //Borda antes de clicar
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Borda depois de clicar
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.lightBlue,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Ícone antes do texto
                    prefixIcon: const Icon(Icons.lock_outline),

                    //Ícone Mostrar Senha
                    suffixIcon: IconButton(
                      onPressed: _visibilidadeSenhaAtual,
                      icon: Icon(_senhaAtualEscondida
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),

                const SizedBox(height: 16), //Espaçamento

                //Campo Nova Senha
                TextField(
                  controller: _novaSenhaController,
                  obscureText: _novaSenhaEscondida,
                  decoration: InputDecoration(
                    label: const Text(
                      'Nova Senha',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),

                    //Borda antes de clicar
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Borda depois de clicar
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.lightBlue,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Ícone antes do texto
                    prefixIcon: const Icon(Icons.lock_outline),

                    //Ícone Mostrar Senha
                    suffixIcon: IconButton(
                      onPressed: _visibilidadeNovaSenha,
                      icon: Icon(_novaSenhaEscondida
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),

                const SizedBox(height: 16), //Espaçamento

                //Campo Confirmar Nova Senha
                TextFormField(
                  controller: _confirmarNovaSenhaController,
                  obscureText: _confirmarNovaSenhaEscondida,
                  decoration: InputDecoration(
                    label: const Text(
                      'Confirmar Senha',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),

                    //Borda antes de clicar
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Borda depois de clicar
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.lightBlue,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    //Ícone antes do texto
                    prefixIcon: const Icon(Icons.lock_outline),

                    //Ícone Mostrar Senha
                    suffixIcon: IconButton(
                      onPressed: _visibilidadeConfirmarSenha,
                      icon: Icon(_confirmarNovaSenhaEscondida
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),

                const SizedBox(height: 30), //Espaçamento

                //Botão Redefinir Senha
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.40, 45)),
                  onPressed: () {
                    _alterarSenha(context);
                  },
                  child: const Text(
                    'Alterar Senha',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8), //Espaçamento
              ],
            ),
          ),
        ),
      ),
    );
  }
}
