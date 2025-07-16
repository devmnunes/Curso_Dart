/* class Dados {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Dados(this.userId, this.id, this.title, this.completed);

  //Recebe String JSON como entrada e retorna um objeto da lingagem.
  factory Dados.fromJson(Map<String, dynamic> json) {
    return Dados(json['userId'], json['id'], json['title'], json['completed']);
  }

  //Gera JSON
   Map<String, dynamic> toJson() => {
    'userId': this.userId,
    'id': this.id,
    'title': this.title,
    'completed': this.completed,
  }; 
} */
