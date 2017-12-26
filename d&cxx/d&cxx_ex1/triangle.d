import std.stdio;
/*
Autor: Jean César Fernandes Zonta.
License: GNU/GPL V3+
Linguagem: D.
Comunidade: Programming Language C/C++ and D
*/
class triangle
{
 private:
 int lines; 

 public:
 this(int lines) 
 { 
    this.lines = lines; 
    display();   
    /* A linguagem D usa o this como construtor e destrutor para as classes criadas na mesma. */
 }

 void display() 
 {
    int spaces = lines - 1;
    int last;
    int min = 1;
    int max;
    
    writeln("\n");
    for (int i = 0; i < lines; i++) 
    {
      last = 2 * i + 1;
      max = spaces + last;
      write("        ");
      for (int j = min; j <= max; j++) 
      {
        if (j == spaces + 1 || j == max || i == lines - 1)
          write("*");
        else
          write(" ");
      }  
       writeln();
      spaces--;
    }
    writeln();
  }
}

void main()  /* ou pode se usar tambem static void main */
{  
 new triangle(3); 
  new triangle(4);
  new triangle(5);
 new triangle(6);
}