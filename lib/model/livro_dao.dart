import 'package:livraria/model/classes/livro.dart';
import 'package:livraria/database/db_libraria.dart';

class LivroDAO {
  //INSERT
  static Future<int> inserirLivro(Livro livro) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    int novoID = await db.insert(
      'livro',
      livro.toMap(),
      //Só funciona se os atributos da classe aluno forem os mesmo do banco de dados
    );
    return novoID;
  }

  //SELECT
  static Future<List<Livro>> carregarLivros() async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    //await porque retorna um Future de Map
    List<Map<String, Object?>> resultado = await db.query('livro');

    List<Livro> livros =
        resultado.map((mapLivro) => Livro.fromMap(mapLivro)).toList();
    return livros;
  }

  //DELET
  static Future<void> deletarLivro(Livro livro) async {
    //Chama o Banco de Dados
    var db = await DBLivraria.getInstance();

    await db.delete('livro', where: 'codigo=?', whereArgs: [livro.codigo]);
  }
}
