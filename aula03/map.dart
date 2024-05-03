void main(){
  //Criando uma lista de produtos
  List<Produto> produtos = [
    new Produto(1,'Mel',44),
    new Produto(2,'Queijo',34.9,'Queijo minas fresco'),
    new Produto(3,'Salame',75.9),
    new Produto(4,'Linguiça',18.5,'Linguiça calabreza'),
    new Produto(5,'Vinho',40,'Tinto de mesa suave')
  ];
  //Adicionando mais um produto
  produtos.add(new Produto(6,'Queijo',28.9,'Provolone'));
  
  //Mostrando os produtos com laço forEach
  produtos.forEach((p)=>print(p.toJSON()));
  
  //Removendo um produto
  produtos.removeAt(2);

  print("-----------------------------------\n");
  
  //Aumentando o preço dos produtos e mostrando com laço Map
  List<Produto> produtosComAumento = produtos.map((Produto produto){
    produto.preco *= 1.1;
    produto.preco = double.parse(produto.preco.toStringAsFixed(2));
    print(produto.toJSON());
    return produto;
  }).toList();

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