#!/usr/bin/env rdmd
import std.stdio;

//https://www.vivaolinux.com.br/script/GNU-que-bacana
//https://github.com/vibe-d/vibe.d/issues/1817
//https://github.com/Dav1dde/Playground/blob/master/readline/readline.d
//class GnuQueBacana
class GnuQueBacana
{
  public this(){}
  
  const(char[]) stalman()
  {
   const(char[]) stalman =`
                         
                             ((__-^^-,-^^-__))
                              *---*******---*
                               *--|o   o|--*
                                  \     /
                                   ): :(
                                   (o_o)
                                     -
                            https://www.gnu.org
                          `;
      return stalman;
  }

  const(char)[] torvald()
  {
   const(char)[] torvald ="
                                   #####
                                  #######
                                  ##O#O##
                                  #######
                                  ##\\#/##
                               #lllllllllll##
                              #lllllllllllll##
                              #lllllllllllll###
                              ##llllllllllll###
                             OOO#llllllllll#OOO
                            OOOOOO#llllll#OOOOOO
                           OOOOOOO#llllll#OOOOOOO
                            OOOOOOO######OOOOOOO
                           https://www.kernel.org
                           
                          ";
    return torvald;
  }

  string stallman()
  {
      string stallman = "
      
      
                             ((__-^^-,-^^-__))
                              *---*******---*
                               *--|o   o|--*
                                  \\     /
                                   ): :(
                                   (o_o)
                                     -
                            https://www.gnu.org    
                        ";

    return stallman;
  }

  string torvalds()
  {
     string torvalds  = `       
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
     return torvalds;
  }

};

void main()
{
  GnuQueBacana gnu = new GnuQueBacana();

  writeln(gnu.stalman(), gnu.torvald(), gnu.stallman(), gnu.torvalds());
}