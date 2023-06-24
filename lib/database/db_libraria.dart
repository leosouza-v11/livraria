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
    debugPrint(' ************************* ');
    await db.execute(
        'CREATE TABLE usuario (id INTEGER PRIMARY KEY, nome TEXT, email TEXT, telefone TEXT, senha TEXT)');
  }

  static Future<void> _onOpen(Database db) async {
    var version = await db.getVersion();
    debugPrint(
        ' ************** Abrindo banco de dados. Versão: $version ************** ');
  }

  static Future<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    // Executar scripts de alteração de banco de dados
    debugPrint(
        ' *********** Fazendo Upgrade da versão $oldVersion para a versão $newVersion *********** ');
  }

  static Future<void> _onDowngrade(
      Database db, int oldVersion, int newVersion) async {
    // Executar scripts de alteração de banco de dados
    debugPrint(
        ' *********** Fazendo Downgrade da versão $oldVersion para a versão $newVersion *********** ');
  }
}
