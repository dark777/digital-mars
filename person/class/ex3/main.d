import include.person; // Not Deprecated Pessoa OK
import include.adress; // Not Deprecated Adrees OK

//import include.pes.pessoa; // Deprecated Pessoa OK
//import include.end.endereco; //Deprecated Endereco OK

static void main(string[] args)
{
 Pessoa[] vetor = new Pessoa[1];
        
 for(int i=0; i<vetor.length;i++)
  {
   vetor[i] = new Pessoa();
   vetor[i].setNome("Chuk Norys");
   vetor[i].setCPF(1234567890);
   vetor[i].setIdade(23);
   
   // Declara e Cria um endereço
   Endereco e = new Endereco();
   e.setCidade("California, ca");
   e.setCEP("10230-400");
   
   // Atribui o endereço à pessoa
   vetor[i].setResidencial(e);
            
   writefln(
            "\n\tNome: %s"~
            "\n\tCPF: %s"~
            "\n\tIdade: %s"~
            "\n\tCidade: %s"~
            "\n\tCEP: %s\n",
            vetor[i].getNome(),
            vetor[i].getCPF(),
            vetor[i].getIdade(),
            e.getCidade(), 
            e.getCEP()
           );
  }
}