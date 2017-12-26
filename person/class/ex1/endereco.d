module endereco;

public import std.stdio;

public class Endereco 
{
  private
  {    
   int numero;
   string logradouro;
   string complemento;
   string bairro;
   string cidade;
   string estado;
   string CEP;
  }
  
  public
  {
    string getLogradouro() 
    {
        return logradouro;
    }

    void setLogradouro(string logradouro) 
    {
        this.logradouro = logradouro;
    }

    int getNumero() 
    {
        return numero;
    }

    void setNumero(int numero) 
    {
        this.numero = numero;
    }

    string getComplemento() 
    {
        return complemento;
    }

    void setComplemento(string complemento) 
    {
        this.complemento = complemento;
    }

    string getBairro() 
    {
        return bairro;
    }

    void setBairro(string bairro) 
    {
        this.bairro = bairro;
    }

    string getCidade() 
    {
        return cidade;
    }

    void setCidade(string cidade) 
    {
        this.cidade = cidade;
    }

    string getEstado() 
    {
        return estado;
    }

    void setEstado(string estado) 
    {
        this.estado = estado;
    }

    string getCEP() 
    {
        return CEP;
    }

    void setCEP(string CEP) 
    {
        this.CEP = CEP;
    }
  }
};