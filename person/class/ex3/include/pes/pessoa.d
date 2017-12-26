//File pessoa.d
//Directory: ex3
//Module Directory: include/pes/pessoa.d
//Project Directory: ex3/include/pes/pessoa.d

deprecated("Import include.person instead")
module include.pes.pessoa;
public import include.end.endereco;

public class Pessoa 
{

    private string nome;
    private int idade;
    private string sexo;
    private long CPF;
    private Endereco residencial;

    public string getNome() 
    {
        return nome;
    }

    public void setNome(string nome) 
    {
        this.nome = nome;
    }

    public int getIdade() 
    {
        return idade;
    }

    public void setIdade(int idade) 
    {
        this.idade = idade;
    }

    public string getSexo() 
    {
        return sexo;
    }

    public void setSexo(string sexo) 
    {
        this.sexo = sexo;
    }

    public long getCPF() 
    {
        return CPF;
    }

    public void setCPF(long CPF) 
    {
        this.CPF = CPF;
    }

    public Endereco getResidencial() 
    {
        return residencial;
    }

    public void setResidencial(Endereco residencial) 
    {
        this.residencial = residencial;
    }
}