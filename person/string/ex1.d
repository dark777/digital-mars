import std.stdio;
import std.string;

struct Human 
{
 string name;
 float peso;
 ushort age;
};

/*
 para que a função print_list printe os dados
 quando o usuario escolher 'p' ou 'P'
 é preciso que add_human desanexe 
 a sua propria matriz usando 'ref'.
*/

void add_human(ref Human[] human_list)
{
  ushort age;
  float peso;
  string name;
  
  write("\nName: ");                          
  readf(" %s\n", &name);
  write("Peso: ");                          
  readf(" %f\n", &peso);
  write("Age: ");                             
  readf(" %ld\n", &age);                      
  
  Human tmp_human = {name, peso, age};
  human_list ~= tmp_human;
}

void print_list(Human[] human_list)
{
 foreach(human; human_list)
   {
    writefln("\nNome: %s",human.name);
    writefln("Peso: %0.2f",human.peso);
    writefln("Idade: %d\n",human.age);
   }
}

int main()
{
  Human[] human_list;
  char choice;
  
  do{
      writeln("\nA)dd New Human.");
      writeln("P)rint Human List.");
      writeln("Q)uit.");
 
      write("Input: ");
      readf(" %c", &choice);
        
      switch(choice)
       {
         case 'A':
         case 'a': add_human(human_list);
         break;
         
         case 'P':
         case 'p': print_list(human_list);
         break;
         
         case 'Q':
         case 'q':
          writeln("\nObrigado\n");
         break;
         
         default: writeln("Opção Invalida ..!!!\n");
      }
    }while(choice != 'q' || choice != 'Q');
    
  return 0;
}