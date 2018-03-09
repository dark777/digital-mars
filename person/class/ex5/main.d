import pessoa;



















static void main(string[] args) 
{

    Pessoa pessoa = new Pessoa();

    pessoa.setNome("Aline");
    pessoa.setSobrenome("Gonzaga");
    pessoa.setEndereco("Bairro Barra");
    Telefone[] telefones = new Telefone[4];

    telefones[0] = new Telefone("7627-86476");
    telefones[1] = new Telefone("5362-56423");
    telefones[2] = new Telefone("33333-3333");
    telefones[3] = new Telefone("33234-3324");
    
    pessoa.setTels(telefones);

    writeln("Nome: ",pessoa.getNome());
    writeln("Sobrenome: ",pessoa.getSobrenome());
    writeln("Endereço: ",pessoa.getEndereco());
    for (int i = 0; i <= 3; i++) {
        writeln("Telefone: ",pessoa.getTels()[i].getTelefone());
    }
}