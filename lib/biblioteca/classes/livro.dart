class Livro {
  late final String codigo;
  late final String capa;
  late final String titulo;
  late final String autor;
  late final String paginas;
  late final String editora;
  late final String publicacao;

  Livro({
    required this.codigo,
    required this.capa,
    required this.titulo,
    required this.autor,
    required this.paginas,
    required this.editora,
    required this.publicacao,
  });

  static List<Livro> gerarLivros() {
    return [
      Livro(
          codigo: '1',
          capa: 'assets/images/img-1.jpeg',
          titulo: 'O Poder do Hábito',
          autor: 'Charles Duhigg',
          paginas: '408',
          editora: 'Objetiva',
          publicacao: '2012'),
      Livro(
          capa: 'assets/images/img-2.jpg',
          codigo: '2',
          titulo: 'Introdução ao Pentest',
          autor: 'Daniel Moreno',
          paginas: '294',
          editora: 'Novatec',
          publicacao: '2015'),
      Livro(
          codigo: '3',
          capa: 'assets/images/img-3.jpg',
          titulo: 'Pentest em Redes Sem Fio',
          autor: 'Daniel Moreno',
          paginas: '316',
          editora: 'Novatec',
          publicacao: '2016'),
      Livro(
          codigo: '4',
          capa: 'assets/images/img-4.jpg',
          titulo: 'Pentest em Aplicações Web',
          autor: 'Daniel Moreno',
          paginas: '480',
          editora: 'Novatec',
          publicacao: '2017'),
      Livro(
          codigo: '5',
          capa: 'assets/images/img-5.jpg',
          titulo: 'Como Negociar com Arte & Técnica',
          autor: 'Ailton H. M. Campos',
          paginas: '360',
          editora: 'Elimar',
          publicacao: '1996'),
      Livro(
          codigo: '6',
          capa: 'assets/images/img-6.jpeg',
          titulo: 'Pai Rico Pai Pobre',
          autor: 'Robert T. Kiyosaki',
          paginas: '322',
          editora: 'Alta Books',
          publicacao: '2017'),
      Livro(
          codigo: '7',
          capa: 'assets/images/img-7.jpg',
          titulo: 'Os Segredos da Mente Milionária',
          autor: 'T. Hary Eker',
          paginas: '143',
          editora: 'Sextante',
          publicacao: '2005'),
      Livro(
          codigo: '8',
          capa: 'assets/images/img-8.jpg',
          titulo: 'Conquistar e Manter Clientes',
          autor: 'Daniel Godri',
          paginas: '80',
          editora: 'Eko',
          publicacao: '2010'),
      Livro(
          codigo: '9',
          capa: 'assets/images/img-9.jpg',
          titulo: 'O Código da Inteligência',
          autor: 'Augusto Cury',
          paginas: '224',
          editora: 'Sextante',
          publicacao: '2010'),
      Livro(
          codigo: '10',
          capa: 'assets/images/img-10.jpg',
          titulo: 'Me Poupe!',
          autor: 'Nathalia Arcuri',
          paginas: '143',
          editora: 'Sextante',
          publicacao: '2018'),
    ];
  }
}
