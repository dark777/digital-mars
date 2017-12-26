/*
Autor: Jean César Fernandes Zonta.
License: GNU/GPL V2
Linguagem: Java.
Comunidade: Programming Language C/C++ and D
*/

public class triangle 
{
  private int lines;

  public triangle(int lines) 
  {
    this.lines = lines;
    display();
  }

  public void display() 
  {
    int spaces = lines - 1;
    int last;
    int min = 1;
    int max;
    
    System.out.println("\n    ");
    for (int i = 0; i < lines; i++) 
    {
      last = 2 * i + 1;
      max = spaces + last;
      System.out.print("          ");
      for (int j = min; j <= max; j++) 
      {
        if (j == spaces + 1 || j == max || i == lines - 1)
          System.out.print("*");
        else
          System.out.print(" ");
      }

      System.out.println();
      spaces--;
     }
     System.out.println();
   }

  public static void main(String[] args) 
  {
    new triangle(3);
    new triangle(4); /* esta parte de codigo em java nao é suportado por D */
    new triangle(5);
    new triangle(6);
  }
} 