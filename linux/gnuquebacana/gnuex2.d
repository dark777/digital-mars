#!/usr/bin/env rdmd
import std.stdio;

//https://www.vivaolinux.com.br/script/GNU-que-bacana
//usando class
class Char
{
 public this(){}
  
  char[] stalman()
  {
    return cast(char[382])
                         `
                         
                             ((__-^^-,-^^-__))
                              *---*******---*
                               *--|o   o|--*
                                  \     /
                                   ): :(
                                   (o_o)
                                     -
                            https://www.gnu.org
                         `;
  }

  char[] torvald()
  {
      return cast(char[670])
                           `       
                                   #####
                                  #######
                                  ##O#O##
                                  #######
                                  ##\#/##
                               #lllllllllll##
                              #lllllllllllll##
                              #lllllllllllll###
                              ##llllllllllll###
                             OOO#llllllllll#OOO
                            OOOOOO#llllll#OOOOOO
                           OOOOOOO#llllll#OOOOOOO
                            OOOOOOO######OOOOOOO
                           https://www.kernel.org
                           
                           `;
  }
};

class String: Char
{
 public this(){}
  
  string stallman()
  {
      return             ` 

                             ((__-^^-,-^^-__))
                              *---*******---*
                               *--|o   o|--*
                                  \     /
                                   ): :(
                                   (o_o)
                                     -
                            https://www.gnu.org    
                         `;
  }

  string torvalds()
  {
      return 
                           `       
                                   #####
                                  #######
                                  ##O#O##
                                  #######
                                  ##\#/##
                               #lllllllllll##
                              #lllllllllllll##
                              #lllllllllllll###
                              ##llllllllllll###
                             OOO#llllllllll#OOO
                            OOOOOO#llllll#OOOOOO
                           OOOOOOO#llllll#OOOOOOO
                            OOOOOOO######OOOOOOO
                           https://www.kernel.org
                           
                           `;
  }
};

class GnuQueBacana: String
{
 this(){}
};

void main()
{
  GnuQueBacana gnu = new GnuQueBacana();

  writeln(gnu.stalman(), gnu.torvald(), gnu.stallman(), gnu.torvalds());
}