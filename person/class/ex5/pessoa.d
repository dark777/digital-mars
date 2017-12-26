module pessoa;

public import telefone;

public class Pessoa 
{

private string nome;
private string endereco;
private string sobrenome;
private Telefone[] tels;


public Telefone[] getTels() {
    return tels;
}

public void setTels(Telefone[] tels) {
    this.tels = tels;
}

public string getNome() {
    return nome;
}
public void setNome(string nome) {
    this.nome = nome;
}
public string getEndereco() {
    return endereco;
}
public void setEndereco(string endereco) {
    this.endereco = endereco;
}
public string getSobrenome() {
    return sobrenome;
}
public void setSobrenome(string sobrenome) {
    this.sobrenome = sobrenome;
}

}