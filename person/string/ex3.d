import std.stdio;
import std.traits;

/*
Tenho algumas informações aqui:

   Http://ddili.org/ders/d.en/input.html

Você também deve saber como ler strings:

   Http://ddili.org/ders/d.en/strings.html

E esta seção sobre refatoração tem o conceito de um modelo de função readInt ():

   Http://ddili.org/ders/d.en/functions.html#ix_functions.refactor

Combinando todos os três:
*/

auto readp(T)(ref T t, string message)
if(!isSomeString!T)
{
 writef("\n\t%s: ", message);
  readf(" %s", &t);
  return t;
 /* este readp irá ler apenas int,double e float */
}

auto readp(S)(ref S s, string message)
if(isSomeString!S)
{
 import std.string : strip;  
  writef("\n\t%s: ", message);
  s = readln().strip();
  return s;
 /* este readp irá ler apenas strings */
}

class pessoa
{
 private:
 
 string nome;
 int idade;
 float altura;
 
 public:

    static pessoa readConsole()
    {
        auto p = new pessoa();
        /* UFCS em ação: readp(p.nome,) 
        D tem esta sintaxe de chamada de 
        função universal muito útil (UFCS), 
        que torna o caso de uso fácil de implementar.
        */
         
        p.nome.readp("Digite Seu nome");
        p.idade.readp("Digite Sua idade");
        p.altura.readp("Digite Sua Altura");
        return p;
    }

float getAltura()
{
 return altura;
}

int getIdade()
{
 return idade;
}

string getNome()
{
 return nome;
}

}

void main()
{
 pessoa p = pessoa.readConsole();
 
 writeln
 (
  "\n\tNome: ",p.getNome(),
  ", Idade: ",p.getIdade(),
  ", Altura: ",p.getAltura(),
  "\n"
 );
}