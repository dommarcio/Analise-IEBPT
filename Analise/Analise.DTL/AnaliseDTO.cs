using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Analise.DTL
{
    public class AnaliseDTO
    {
        public int IdAnalise { get; set; }
        public DateTime DataAnalise { get; set; }
        public string RazaoSocial { get; set; }
        public string CNPJ { get; set; }
        public string Status { get; set; }
        public string Endereco { get; set; }
        public string Telefone { get; set; }

        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta { get; set; }

        public string UsuarioMaster { get; set; }
        public string RGMaster { get; set; }
        public string CPFMaster { get; set; }

        public List<ResponsavelDTO> ListaResponsavel { get; set; }
        public List<AutorizadoDTO> ListaAutorizado { get; set; }

        public string IconeAnalise { get; set; }
    }
}
