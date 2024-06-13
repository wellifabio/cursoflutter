import 'package:lista/models/pessoa.dart';

class PessoaRepository {
  static List<Pessoa> tabela = [
    Pessoa(1,'Marcela Silva', 44, 1.75, 70.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli1.png'),
    Pessoa(2,'João da Silva', 33, 1.80, 80.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli2.png'),
    Pessoa(3,'Maria da Silva', 22, 1.65, 44.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli3.png'),
    Pessoa(4,'Ana da Silva', 55, 1.70, 110.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli4.png'),
    Pessoa(5,'José da Silva', 66, 1.60, 70.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli5.png'),
    Pessoa(6,'Andrea da Silva', 77, 1.90, 90.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli6.png'),
    Pessoa(7,'Paulo da Silva', 88, 1.75, 70.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli7.png'),
    Pessoa(8,'Mariana da Silva', 99, 1.75, 70.0,'https://raw.githubusercontent.com/wellifabio/senai2023/main/2des/projetos/assets/avatares/cli8.png'),
  ];

  void add(Pessoa pessoa) {
    tabela.add(pessoa);
  }

  void remove(Pessoa pessoa) {
    tabela.remove(pessoa);
  }

  List<Pessoa> get pessoas => tabela;
}