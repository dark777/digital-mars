import std.stdio; //write
import std.process; //execute
import std.exception; //enforce

void main()
{
 auto result = ["whoami"].execute;
 
 enforce(result.status == 0);
 result.output.write;
}