module pessoa;

public import endereco;

public class Pessoa 
{
  private
  {
   string nome;
   int idade;
   string sexo;
   long CPF;
   Endereco residencial;
  }
    
  public
  {   
    string getNome() 
    {
        return nome;
    }

    void setNome(string nome) 
    {
        this.nome = nome;
    }

    int getIdade() 
    {
        return idade;
    }

    void setIdade(int idade) 
    {
        this.idade = idade;
    }

    string getSexo() 
    {
        return sexo;
    }

    void setSexo(string sexo) 
    {
        this.sexo = sexo;
    }

    long getCPF() 
    {
        return CPF;
    }

    void setCPF(long CPF) 
    {
        this.CPF = CPF;
    }

    Endereco getResidencial() 
    {
        return residencial;
    }

    void setResidencial(Endereco residencial) 
    {
        this.residencial = residencial;
    } 
   }
}