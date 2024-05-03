# Aula05 - Flutter - Navegação entre Telas/Rotas

O exemplo a seguir cria um app com duas telas empilhadas utilizando o **Widget** Navigator e o método push() que empilha as telas.

- main.dart
```dart
import 'package:flutter/material.dart';

void main() {runApp(MaterialApp(
	title: 'Navegação Básica',
	 theme: ThemeData(
	   primarySwatch: Colors.blue
         ),
         home: const PrimeiraRota(),
      )
    );
}

class PrimeiraRota extends StatelessWidget {
  const PrimeiraRota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Rota'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Abrir rota(tela)'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  const SegundaRota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Rota (tela)"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { 
            Navigator.pop(context);
          },
          child: const Text('Retornar !'),
        ),
      ),
    );
  }
}
```
![Resultado do Navigator](https://macoratti.net/19/07/flut_navig1x.gif)
- Fonte: [Marconatti.net](https://macoratti.net/19/07/flut_navig1.htm)