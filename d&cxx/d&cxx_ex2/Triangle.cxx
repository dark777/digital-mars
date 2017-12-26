#include <iostream>
/*
Autor: Jean César Fernandes Zonta.
Linguagem: C++.
License: GNU/GPL V3+
Comunidade: Programming Language C/C++ and D
*/
class Triangle 
{
 private: 
 int lines;

 public:  
 Triangle(int lines) 
 {
    this->lines = lines;
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

int main() 
{
  Triangle *tri3 = new Triangle(3);
  Triangle *tri4 = new Triangle(4);
  Triangle *tri5 = new Triangle(5);
  Triangle *tri6 = new Triangle(6);
  
  (*tri3).display();
  (*tri4).display();
  (*tri5).display();
  (*tri6).display();
  
  delete tri3;
  delete tri4;
  delete tri5;
  delete tri6;
  
  return 0;
}