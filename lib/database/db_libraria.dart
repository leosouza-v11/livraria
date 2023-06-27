import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class DBLivraria {
  static Future<Database> getInstance() async {
    String dbname = 'livraria.db';
    String path = await getDatabasesPath() + dbname;
    var instance = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onOpen: _onOpen,
      onUpgrade: _onUpgrade,
      onDowngrade: _onDowngrade,
    );

    return instance;
  }

  static Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE usuario (id INTEGER PRIMARY KEY, nome TEXT, email TEXT, telefone TEXT, senha TEXT)');
    await db.execute(
      'CREATE TABLE livro (id_livro INTEGER PRIMARY KEY AUTO INCREMENT, fk_usuario INTEGER, FOREIGN KEY (fk_usuario) REFERENCES usuario (id))'
    );
    await db.execute(
      'CREATE TABLE referencia (id INTEGER PRIMARY KEY AUTO INCREMENT, fk_logado INTEGER, fk_favorito INTEGER, FOREIGN KEY (fk_logado) REFERENCES usuario (id), FOREIGN KEY (fk_favorito) REFERENCES livro (id_livro))'
    );
  }

  static Future<void> _onOpen(Database db) async {
    var version = await db.getVersion();                                              
  }

  static Future<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    // Executar scripts de alteração de banco de dados                                            
  }                                                                                                                                                                                           

  static Future<void> _onDowngrade(
      Database db, int oldVersion, int newVersion) async {                                                                                                                
  }
}
