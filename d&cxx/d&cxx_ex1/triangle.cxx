#include <iostream>
/*
Autor: Jean César Fernandes Zonta.
Linguagem: C++.
License: GNU/GPL V3+
Comunidade: Programming Language C/C++ and D
*/
class triangle 
{
 private: 
 int lines;

 public:  
 triangle(int lines) 
 {
    this->lines = lines;
    display();
 }

 void display() 
 {
    int spaces = lines - 1;
    int last;
    int min = 1;
    int max;
    
    std::cout<<"\n    ";
    for (int i = 0; i < lines; i++) 
    {
      last = 2 * i + 1;
      max = spaces + last;
      std::cout<<"\t";
      for (int j = min; j <= max; j++) 
      {
        if (j == spaces + 1 || j == max || i == lines - 1)
          std::cout<<"*";
        else
          std::cout<<" ";
      }
      
       std::cout<<"\n";
      spaces--;
    }
   std::cout<<"\n";
 }
};

int main(void) 
{
 new triangle(3); 
  new triangle(4);
  new triangle(5);
 new triangle(6);
}