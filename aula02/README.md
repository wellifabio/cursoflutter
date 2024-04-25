# Linguagem Dart
A liguagem dart já é instalada junto com o Flutter SDK
## Site oficial do Dart com a opção **Try**
- https://dar.dev/
## Testar online
Para executar comandos básicos de forma online podemos acessar via https://dartpad.dev/

### Tipos de dados
```dart
void main() {
  int codigo = 1;
  double preco = 3.14;
  String produto = 'Lapis';
  bool ativo = true;
  var naotipada;
  dynamic dinamica = 1;
  
  print(codigo);
  print(preco);
  print(produto);
  print(ativo);
  print(naotipada);
  print(dinamica);
  
  naotipada = 'Oi';
  print(naotipada);
  dinamica = 'Oi';
  print(dinamica);
}
```
O programa acima exibe os principais tipos de **variáveis** em **Dart**.

### Concatenando Strings
```dart
void main() {
  int codigo = 1;
  double preco = 3.14;
  String produto = 'Lapis';
  bool ativo = true;
  var naotipada;
  dynamic dinamica = 1;
  
  //COncatenando string nas saídas
  print('Código = ' + codigo.toString());
  print('Preco = R\$' + preco.toString());
  print('Produto = '+produto);
  print('Ativo = ' + ativo.toString());
  print('Informação ainda não determinada = ' + naotipada.toString());
  print('informação dinâmia = ' + dinamica.toString());
  
  naotipada = 'Oi';
  //Concatenando de forma simples com o sinal de mais
  print('informação definida = ' + naotipada.toString());
  dinamica = 'Oi';
  //Concatenando a string de saída com template string
  print('informação dinâmia = ${dinamica}');
}
```
O programa acima exibe os principais tipos de variáveis com **concatenação** de Strings.

### Cálculos e operadores simples
```dart
void main() {
  int numero1 = 3;
  int numero2 = 2;
  print("Variável número1 = ${numero1}");
  print("Variável número1 = ${numero1}");
  int adicao = numero1 + numero2;
  print("adição é = ${adicao}");
  int subtracao = numero1 - numero2;
  print("subtração é = ${subtracao}");
  int multiplicacao = numero1 * numero2;
  print("multiplicação é = ${multiplicacao}");
  double divisao = numero1 / numero2;
  print("divisão é = ${divisao}");
  int divisaoParteInteira = numero1 ~/ numero2;
  print("parte inteira da divisão é = ${divisaoParteInteira}");
  int restoDaDivisao = numero1 % numero2;
  print("resto da divisão é = ${restoDaDivisao}");
}
```
### Lógica com Dart
Clique neste **[link](https://www.youtube.com/watch?v=mgQfCHBjodw&list=PL5EmR7zuTn_Yu_YV2pT0h0843vRGiTMtx&index=7)** e veja a play list com o professor **Daves** com lógica de programação completa com Dart, seguindo os temas:
- Incremento, decremento ++
- Decisões **if**
- Decisões **if, and, or**
- Decisões **switch case**
- Decisões **if ternário**
- Laços, loop **for**
- Laços, loop **while**
- Funções, parâmetros
- Funções, Escopo de funções, variáveis e constantes

#### Orientação a objetos
- Classes, instâncias e objetos
  - Atributos
  - Métodos
```dart
void main(){
  
  //Instância
  Pessoa pessoa1;
  
  //Objeto
  pessoa1 = new Pessoa();
  
  pessoa1.nome = 'Wellington';
  pessoa1.idade = 44;
  pessoa1.telefone='19 99333-3134';
  
  //Mostrando o atributo nome da pessoa
  print(pessoa1.nome);
  //Mostrando o resultado do método toJSON
  print(pessoa1.toJSON());
  
  //Instânciando um objeto direto na mesma linha;
  Pessoa pessoa2 = new Pessoa();
  pessoa2.nome = 'Luciene';
  pessoa2.idade = 43;
  pessoa2.telefone='19 99999-3134';
  //Exibindo a segunda pessoa como JSON String
  print(pessoa2.toJSON());

}

//Classe
class Pessoa{
  //Atributos
  String nome='';
  int idade=0;
  String telefone = '';
  //Métodos
  String toJSON(){
    return '{\n\t"nome":"${this.nome}",\n\t"idade":${this.idade},\n\t"telefone":"${this.telefone}"\n}';
  }
}
```
- Construtores
```dart
void main(){
  Pessoa pessoa1 = new Pessoa('Wellington',44,'19 93443-3345');
  print(pessoa1.toJSON());
  
  Pessoa pessoa2 = new Pessoa('Luciene',43,'null');
  print(pessoa2.toJSON());
}

//Classe com construtor
class Pessoa{
  
  String nome='';
  int idade=0;
  String telefone = '';
  
  //Construtor
  Pessoa(String nome, int idade, String telefone){
    this.nome = nome;
    this.idade = idade;
    this.telefone = telefone;
  }
  
  //Métodos
  String toJSON(){
    return '{\n\t"nome":"${this.nome}",\n\t"idade":${this.idade},\n\t"telefone":"${this.telefone}"\n}';
  }
}
```
- Construtor com simplificado
```dart
void main(){
  Pessoa pessoa1 = new Pessoa('Wellington',44,'19 93443-3345');
  print(pessoa1.toJSON());
  
  Pessoa pessoa2 = new Pessoa('Luciene',43,'null');
  print(pessoa2.toJSON());
}

//Classe com construtores
class Pessoa{
  
  String nome='';
  int idade=0;
  String telefone = '';
  
  //Construtor
  Pessoa(this.nome, this.idade, this.telefone);
  
  //Métodos
  String toJSON(){
    return '{\n\t"nome":"${this.nome}",\n\t"idade":${this.idade},\n\t"telefone":"${this.telefone}"\n}';
  }
}
```
- Mais formas de utilizar construtores neste **[Artigo da Alura](https://www.alura.com.br/artigos/construtores-dart-tipos-como-usa-los)**