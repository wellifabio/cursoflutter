class Pessoa {
  int id;
  String nome;
  int idade;
  double altura;
  double peso;
  String? avatar;

  Pessoa(this.id, this.nome, this.idade, this.altura, this.peso, [this.avatar]);

  double imc() {
    return peso / (altura * altura);
  }

  String diagnostico() {
    if (imc() < 18.5) {
      return 'Abaixo do peso';
    } else if (imc() < 24.9) {
      return 'Peso normal';
    } else if (imc() < 29.9) {
      return 'Sobrepeso';
    } else if (imc() < 34.9) {
      return 'Obesidade grau 1';
    } else if (imc() < 39.9) {
      return 'Obesidade grau 2';
    } else {
      return 'Obesidade grau 3';
    }
  }

  String toJSON() {
    return '''
    {
      "nome": "$nome",
      "idade": $idade,
      "altura": $altura,
      "peso": $peso,
      "avatar": "$avatar"
    }
    ''';
  }

  static Pessoa fromJSON(Map<String, dynamic> json) {
    return Pessoa(
      json['id'],
      json['nome'],
      json['idade'],
      json['altura'],
      json['peso'],
      json['avatar'],
    );
  }

  bool equals(Object other) {
    if (other is Pessoa) {
      return id == other.id;
    }
    return false;
  }

  @override
  bool operator ==(Object other) {
    if (other is Pessoa) {
      return id == other.id;
    }
    return false;
  }

  @override
  int get hashCode => id.hashCode;
}
