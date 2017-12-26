module telefone;

public import std.stdio;

public class Telefone 
{

private string telefone;

public this(string t) 
{
    this.telefone = t;
}

public string getTelefone() {
    return telefone;
}

public void setTelefone(string telefone) 
{
    this.telefone = telefone;
}

} 


