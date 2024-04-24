# Linguagem Dart
A liguagem dart já é instalada junto com o Flutter SDK
## Testar online
Para executar comandos básicos de forma online podemos acessar via https://dartpad.dev/
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

```dart
void main() {
  int codigo = 1;
  double preco = 3.14;
  String produto = 'Lapis';
  bool ativo = true;
  var naotipada;
  dynamic dinamica = 1;
  
  print('Código = ' + codigo.toString());
  print('Preco = R\$' + preco.toString());
  print('Produto = '+produto);
  print('Ativo = ' + ativo.toString());
  print('Informação ainda não determinada = ' + naotipada.toString());
  print('informação dinâmia = ' + dinamica.toString());
  
  naotipada = 'Oi';
  print('informação definida = ' + naotipada.toString());
  dinamica = 'Oi';
  print('informação dinâmia = ' + dinamica);
}
```
O programa acima exibe os principais tipos de variáveis com **concatenação** de Strings.