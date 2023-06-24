import 'package:livraria/database/db_libraria.dart';
import 'package:livraria/model/classes/usuario.dart';

class UsuarioDAO {
  //INSERT
  static Future<int> inserir(Usuario usuario) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    int novoID = await db.insert(
      'usuario',
      usuario.toMap(),
      //Só funciona se os atributos da classe aluno forem os mesmo do banco de dados
    );

    return novoID;
  }

  //SELECT
  static Future<List<Usuario>> carregarUsuario(int id) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    //await porque retorna um Future de Map
    List<Map<String, Object?>> resultado =
        await db.query('usuario', where: 'id=?', whereArgs: [id]);

    List<Usuario> usuario =
        resultado.map((mapUsuario) => Usuario.fromMap(mapUsuario)).toList();

    return usuario;
  }

  //UPDATE
  static Future<void> atualizarUsuario(Usuario usuario) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    await db.update('usuario', usuario.toMap(),
        where: 'nome=?, email=?, telefone=?',
        whereArgs: [usuario.nome, usuario.email, usuario.telefone]);
  }

  //DELET
  static Future<void> deletarUsuario(Usuario usuario) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    await db.delete('usuario', where: 'id=?', whereArgs: [usuario.id]);
  }
}
