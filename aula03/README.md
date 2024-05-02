# Aula03
## Dart
### Listas, Listas de objetos
Ainda na [play list do professor Daves](https://www.youtube.com/watch?v=4kn7wH9nvvE&list=PL5EmR7zuTn_Yu_YV2pT0h0843vRGiTMtx&index=25) vamos ver como manipular listas.

### Exemplo 01
Criar uma lista de objetos e percorre-la com um laço.

```dart
void main(){
  List<Produto> produtos = [
    new Produto(1,'Mel',44),
    new Produto(2,'Queijo',34.9,'Queijo minas fresco'),
    new Produto(3,'Salame',75.9),
    new Produto(4,'Linguiça',18.5,'Linguiça calabreza'),
    new Produto(5,'Vinho',40,'Tinto de mesa suave')
  ];
  produtos.add(new Produto(6,'Queijo',28.9,'Provolone'));
  produtos.forEach((p)=>print(p.toJSON()));
}

class Produto{
  int id = 0;
  String nome = '';
  String? descricao = '';
  double preco = 0;
  
  Produto(this.id, this.nome, this.preco, [this.descricao]);
  
  String toJSON(){
    String result = '{';
    result += '\n\t"id":${this.id},';
    result += '\n\t"nome":"${this.nome}",';
    result += this.descricao != null?'\n\t"descricao":"${this.descricao}",':'';
    result += '\n\t"preco":${this.preco}';
    result += '\n}';
    return result;
  }
}
```
- O exemplo acima monta uma **lista** de objetos chamada produtos, adiciona um produto no final da lista, e percorre a lista com **forEach** mostrando os dados em JSON.<br>**OBS** a classe **Produto** possui um atributo não obrigatório chamado **descricao** e um método que retorna os dados em JSON.
```json
{
	"id":1,
	"nome":"Mel",
	"preco":44
}
{
	"id":2,
	"nome":"Queijo",
	"descricao":"Queijo minas fresco",
	"preco":34.9
}
{
	"id":3,
	"nome":"Salame",
	"preco":75.9
}
{
	"id":4,
	"nome":"Linguiça",
	"descricao":"Linguiça calabreza",
	"preco":18.5
}
{
	"id":5,
	"nome":"Vinho",
	"descricao":"Tinto de mesa suave",
	"preco":40
}
{
	"id":6,
	"nome":"Queijo",
	"descricao":"Provolone",
	"preco":28.9
}
```
