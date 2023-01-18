
class  Singleton{
  int? id;
  static Singleton? _instance;
//Exemplos de uso = SQLite para abrir apenas uma vez a conexão com o banco
  Singleton._();
//criando construtor privado
  static Singleton get instance{
    _instance ??= Singleton._();
    return _instance!;
    //estou convertendo minha classe nula para uma classe não nula com o '!'
  }
  //Tudo o que acontecer nessa instância será retornado a mesma coisa
}
