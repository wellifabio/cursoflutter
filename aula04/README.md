# Aula04 - Flutter
FLutter é um framework para criação de apps web e mobile que utiliza a linguagem dart
## main.dart
Arquivo principal de um aplicativo flutter<br>Para criar uma nova aplicação mobile:
- 1 Abra um emulador do Android Studio.
- 2 Crie uma pasta para o projeto
- 3 Abra a pasta com **VsCode** e abra o terminal com **CTRL + SHIFT + P** e clique em **flutter:New Project**
- 4 Escolha o tipo de projeto em branco ou algum modelo que prefira, escolha a pasta para criar o projeto e dê um nome.
- 5 Procure o arquivo **./lib/main.dart** e para iniciar no emulador pressione **F5**
- 6. Se quiser iniciar do **zero** limpe o arquivo e coloque o código a seguir:
- main.dart
```dart
import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    home: Center(
      child: Text('Hello World!'),
    ),
  ));
}
```
- O resultado será um Olá Mundo.<br>![Alo mundo](./alomundo.png)

## Estados [Global, Local]
- StatelessWidget - São Widgets que não mudam seu estado
- StatefulWidget - São Widgets que mudam o estado
### Widget, Materiais
Cada componente/ferramenta que utilizamos no flutter recebe esta classificação **Widget**, temos um grande volume de materiais no site **[material.io](https://m3.material.io/develop/flutter)**

- Alterando o app, utilizando o material **Scaffold**

```dart
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('Calculadora de IMC'), backgroundColor: Colors.blueGrey),
      body: Center(
          child: Text('Texto central',
              style: TextStyle(fontSize: 30, color: Colors.black))),
    ),
  ));
}
```
![App versão inicial](./app01.png)

## Camadas arquitetônicas
Flutter foi projetado como um sistema extensível em camadas. Ele existe como uma série de bibliotecas independentes, cada uma dependendo da camada subjacente. Nenhuma camada tem acesso privilegiado à camada abaixo, e cada parte do nível da estrutura é projetada para ser opcional e substituível.
![Hierarquia do framework](https://docs.flutter.dev/assets/images/docs/arch-overview/archdiagram.png)

A seguir temos um exemplo com StateLessWidget passando o parâmetro título ao chamar a classe
```dart
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp(title:'Calculadora de IMC'));
}

class MyApp extends StatelessWidget {
  final String? title;
  const MyApp({super.key, this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: Text(this.title.toString()), backgroundColor: Colors.blueGrey),
        body: const Center(
            child: Text('Digite seu peso e sua altura:',
                style: TextStyle(fontSize: 30, color: Colors.black),)),
      ),
    );
  }
}
```