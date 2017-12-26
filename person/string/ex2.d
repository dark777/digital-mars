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
if (!isSomeString!T) {
    writef("%s", message);
    readf(" %s", &t);
    return t;
}

auto readp(S)(ref S s, string message)
if (isSomeString!S) {
    import std.string : strip;
    writef("%s", message);
    s = readln().strip();
    return s;
}


class pessoa
{
 private:
 string nome, endereco;
 int idade;
 float altura;

public:
 void setNome()
 {
   readp(this.nome,"Digite Seu nome: ");
 }
 
void setIdade()
{
  readp(this.idade,"Digite Sua idade: ");
}

void setAltura()
{
 readp(this.altura,"Digite Sua Altura: ");
}

float getAltura()
{
 return this.altura;
}

int getIdade()
{
 return this.idade;
}

string getNome()
{
 return this.nome;
}

}

void main()
{
  pessoa p = new pessoa();
  
 p.setNome();
 p.setIdade();
 p.setAltura();
 
 writeln("Nome: ",p.getNome());
 writeln("Idade: ",p.getIdade());
 writeln("Altura: ",p.getAltura());
}