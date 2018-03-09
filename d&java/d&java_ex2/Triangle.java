/*
Autor: Jean César Fernandes Zonta.
License: GNU/GPL V2
Linguagem: Java.
Comunidade: Programming Language C/C++ and D
*/

public class Triangle
{
  private int lines;

  public Triangle(int lines) 
  {
    this.lines = lines;
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
   Triangle tri3 = new Triangle(3);
    Triangle tri4 = new Triangle(4);
     Triangle tri5 = new Triangle(5);
     Triangle tri6 = new Triangle(6);
     tri3.display();
     tri4.display();
    tri5.display();
   tri6.display();
  }
}