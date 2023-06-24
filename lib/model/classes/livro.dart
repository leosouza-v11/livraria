class Livro {
  final int? codigo; //Null
  final String capa;
  final String titulo;
  final String autor;
  final String paginas;
  final String editora;
  final String publicacao;
  final String sinopse;

  Livro({
    this.codigo,
    required this.capa,
    required this.titulo,
    required this.autor,
    required this.paginas,
    required this.editora,
    required this.publicacao,
    required this.sinopse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigo': codigo,
      'capa': capa,
      'titulo': titulo,
      'autor': autor,
      'paginas': paginas,
      'editora': editora,
      'publicacao': publicacao,
      'sinopse': sinopse,
    };
  }

  factory Livro.fromMap(Map<String, dynamic> map) {
    return Livro(
      codigo: map['codigo'] != null ? map['codigo'] as int : null,
      capa: map['capa'] as String,
      titulo: map['titulo'] as String,
      autor: map['autor'] as String,
      paginas: map['paginas'] as String,
      editora: map['editora'] as String,
      publicacao: map['publicacao'] as String,
      sinopse: map['sinopse'] as String,
    );
  }

  static List<Livro> gerarLivros() {
    return [
      Livro(
        codigo: 1,
        capa: 'assets/images/img-1.jpeg',
        titulo: 'O Poder do Hábito',
        autor: 'Charles Duhigg',
        paginas: '408',
        editora: 'Objetiva',
        publicacao: '2012',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 2,
        capa: 'assets/images/img-2.jpg',
        titulo: 'Introdução ao Pentest',
        autor: 'Daniel Moreno',
        paginas: '294',
        editora: 'Novatec',
        publicacao: '2015',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 3,
        capa: 'assets/images/img-3.jpg',
        titulo: 'Pentest em Redes Sem Fio',
        autor: 'Daniel Moreno',
        paginas: '316',
        editora: 'Novatec',
        publicacao: '2016',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 4,
        capa: 'assets/images/img-4.jpg',
        titulo: 'Pentest em Aplicações Web',
        autor: 'Daniel Moreno',
        paginas: '480',
        editora: 'Novatec',
        publicacao: '2017',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 5,
        capa: 'assets/images/img-5.jpg',
        titulo: 'Como Negociar com Arte & Técnica',
        autor: 'Ailton H. M. Campos',
        paginas: '360',
        editora: 'Elimar',
        publicacao: '1996',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 6,
        capa: 'assets/images/img-6.jpeg',
        titulo: 'Pai Rico Pai Pobre',
        autor: 'Robert T. Kiyosaki',
        paginas: '322',
        editora: 'Alta Books',
        publicacao: '2017',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 7,
        capa: 'assets/images/img-7.jpg',
        titulo: 'Os Segredos da Mente Milionária',
        autor: 'T. Hary Eker',
        paginas: '143',
        editora: 'Sextante',
        publicacao: '2005',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 8,
        capa: 'assets/images/img-8.jpg',
        titulo: 'Conquistar e Manter Clientes',
        autor: 'Daniel Godri',
        paginas: '80',
        editora: 'Eko',
        publicacao: '2010',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 9,
        capa: 'assets/images/img-9.jpg',
        titulo: 'O Código da Inteligência',
        autor: 'Augusto Cury',
        paginas: '224',
        editora: 'Sextante',
        publicacao: '2010',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
      Livro(
        codigo: 10,
        capa: 'assets/images/img-10.jpg',
        titulo: 'Me Poupe!',
        autor: 'Nathalia Arcuri',
        paginas: '143',
        editora: 'Sextante',
        publicacao: '2018',
        sinopse:
            'This is definitely not a trick/workaround. This is the official solution. Flutter uses a constraint-based layout with composition at its core. It is the functional programming of Layout. It is absolutely awesome, In first case you specified "left" twice, in second case you specified infinite width. These are definitely tricks despite they are official and functional. Ah sorry I forgot to remove the textAlign on the Align example. Fixed. And the "infinite width" in flutter simply says "I want as much space as possible". The Align thing worked here too. The problem here is that its your columns which dont fill the row. To expand widgets on the main axis of Column/Row you need to wrap them into Expanded.',
      ),
    ];
  }
}
