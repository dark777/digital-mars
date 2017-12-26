//File endereco.d
//Directory: ex3
//Module Directory: include/end/endereco.d
//Project Directory: ex3/include/end/endereco.d
deprecated("Import include.adress instead")
module include.end.endereco;
public import std.stdio;

public class Endereco 
{
    private int numero;
    private string logradouro;
    private string complemento;
    private string bairro;
    private string cidade;
    private string estado;
    private string CEP;

    public string getLogradouro() 
    {
        return logradouro;
    }

    public void setLogradouro(string logradouro) 
    {
        this.logradouro = logradouro;
    }

    public int getNumero() 
    {
        return numero;
    }

    public void setNumero(int numero) 
    {
        this.numero = numero;
    }

    public string getComplemento() 
    {
        return complemento;
    }

    public void setComplemento(string complemento) 
    {
        this.complemento = complemento;
    }

    public string getBairro() 
    {
        return bairro;
    }

    public void setBairro(string bairro) 
    {
        this.bairro = bairro;
    }

    public string getCidade() 
    {
        return cidade;
    }

    public void setCidade(string cidade) 
    {
        this.cidade = cidade;
    }

    public string getEstado() 
    {
        return estado;
    }

    public void setEstado(string estado) 
    {
        this.estado = estado;
    }

    public string getCEP() 
    {
        return CEP;
    }

    public void setCEP(string CEP) 
    {
        this.CEP = CEP;
    }
}