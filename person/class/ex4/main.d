import pessoa;




static void main(string[] args) 
{
    Pessoa pessoa = new Pessoa();           
    pessoa.setNome("Aline");
    pessoa.setSobrenome("Gonzaga");
    pessoa.setEndereco("Bairro Barra");
    
    Telefone[] telefones = new Telefone[3];
    
    Telefone telefoneTemp = new Telefone();
    telefoneTemp.setTelefone("7627-86476");
    telefones[0] = telefoneTemp;
    
    telefoneTemp = new Telefone();
    telefoneTemp.setTelefone("5362-56423");
    telefones[1] = telefoneTemp;
    
    telefoneTemp = new Telefone();
    telefoneTemp.setTelefone("33333-3333");
    telefones[2] = telefoneTemp;
    
    
    pessoa.setTels(telefones);

    writeln("Nome: ",pessoa.getNome());
    writeln("Sobrenome: ",pessoa.getSobrenome());
    writeln("Endereço: ",pessoa.getEndereco());
    
     
    for ( int i = 0; i < 3; i++)
    {
     writeln("Telefone: ",pessoa.getTels()[i].getTelefone());
     //writeln("Telefone: ",telefones[i].getTelefone());
    }
}