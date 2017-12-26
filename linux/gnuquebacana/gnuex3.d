#!/usr/bin/env rdmd
import std.stdio, std.string;

//https://www.vivaolinux.com.br/script/GNU-que-bacana
//usando interfaces
public interface Char
{
 mixin template Impl()
 {
  this(){}
  
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
 }
};

public interface String
{
 mixin template Impl()
 {
  this(){}
  
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
 }
};

public class GnuQueBacana: String, Char
{
 mixin String.Impl; //mixin para injeção das funçoes da classe String 
 mixin Char.Impl;  //mixin para injeção das funçoes da classe Char
 this(){}
};

void main()
{
  GnuQueBacana gnu = new GnuQueBacana();

  writeln(gnu.stalman(), gnu.torvald(), gnu.stallman(), gnu.torvalds());
}