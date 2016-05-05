using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Analise.DTL;

namespace Analise.DAL
{
    public class AnaliseDAO
    {
        public List<AnaliseDTO> ListarAnalisesGrid()
        {
            List<AnaliseDTO> retorno = new List<AnaliseDTO>();

            #region Mock de Dados
            AnaliseDTO itemAnalise01 = new AnaliseDTO();
            AnaliseDTO itemAnalise02 = new AnaliseDTO();
            AnaliseDTO itemAnalise03 = new AnaliseDTO();
            AnaliseDTO itemAnalise04 = new AnaliseDTO();
            AnaliseDTO itemAnalise05 = new AnaliseDTO();
            AnaliseDTO itemAnalise06 = new AnaliseDTO();
            AnaliseDTO itemAnalise07 = new AnaliseDTO();
            AnaliseDTO itemAnalise08 = new AnaliseDTO();
            AnaliseDTO itemAnalise09 = new AnaliseDTO();
            AnaliseDTO itemAnalise10 = new AnaliseDTO();

            itemAnalise01.IdAnalise = 1;
            itemAnalise01.DataAnalise = DateTime.Now;
            itemAnalise01.RazaoSocial = "Empresa de Teste 01";
            itemAnalise01.CNPJ = "11.111.111/0001-11";
            itemAnalise01.Status = "Nova";

            itemAnalise02.IdAnalise = 2;
            itemAnalise02.DataAnalise = DateTime.Now;
            itemAnalise02.RazaoSocial = "Empresa de Teste 03";
            itemAnalise02.CNPJ = "11.111.111/0001-11";
            itemAnalise02.Status = "Nova";

            itemAnalise03.IdAnalise = 3;
            itemAnalise03.DataAnalise = DateTime.Now;
            itemAnalise03.RazaoSocial = "Empresa de Teste 01";
            itemAnalise03.CNPJ = "11.111.111/0001-11";
            itemAnalise03.Status = "Nova";

            itemAnalise04.IdAnalise = 4;
            itemAnalise04.DataAnalise = DateTime.Now;
            itemAnalise04.RazaoSocial = "Empresa de Teste 03";
            itemAnalise04.CNPJ = "11.111.111/0001-11";
            itemAnalise04.Status = "Nova";

            itemAnalise05.IdAnalise = 5;
            itemAnalise05.DataAnalise = DateTime.Now.AddDays(-1);
            itemAnalise05.RazaoSocial = "Empresa de Teste 03";
            itemAnalise05.CNPJ = "11.111.111/0001-11";
            itemAnalise05.Status = "Em Analise";

            itemAnalise06.IdAnalise = 6;
            itemAnalise06.DataAnalise = DateTime.Now.AddDays(-2);
            itemAnalise06.RazaoSocial = "Empresa de Teste 04";
            itemAnalise06.CNPJ = "11.111.111/0001-11";
            itemAnalise06.Status = "Em Analise";

            itemAnalise07.IdAnalise = 7;
            itemAnalise07.DataAnalise = DateTime.Now.AddDays(-1);
            itemAnalise07.RazaoSocial = "Empresa de Teste 03";
            itemAnalise07.CNPJ = "11.111.111/0001-11";
            itemAnalise07.Status = "Em Analise";

            itemAnalise08.IdAnalise = 8;
            itemAnalise08.DataAnalise = DateTime.Now.AddDays(-2);
            itemAnalise08.RazaoSocial = "Empresa de Teste 04";
            itemAnalise08.CNPJ = "11.111.111/0001-11";
            itemAnalise08.Status = "Em Analise";

            itemAnalise09.IdAnalise = 9;
            itemAnalise09.DataAnalise = DateTime.Now.AddDays(-2);
            itemAnalise09.RazaoSocial = "Empresa de Teste 04";
            itemAnalise09.CNPJ = "11.111.111/0001-11";
            itemAnalise09.Status = "Escalado";

            itemAnalise10.IdAnalise = 10;
            itemAnalise10.DataAnalise = DateTime.Now.AddDays(-2);
            itemAnalise10.RazaoSocial = "Empresa de Teste 04";
            itemAnalise10.CNPJ = "11.111.111/0001-11";
            itemAnalise10.Status = "Escalado";

            retorno.Add(itemAnalise01);
            retorno.Add(itemAnalise02);
            retorno.Add(itemAnalise03);
            retorno.Add(itemAnalise04);
            retorno.Add(itemAnalise05);
            retorno.Add(itemAnalise06);
            retorno.Add(itemAnalise07);
            retorno.Add(itemAnalise08);
            retorno.Add(itemAnalise09);
            retorno.Add(itemAnalise10);

            #endregion

            return retorno;
        }


        public AnaliseDTO RetornarAnalise(int idAnalise)
        {
            AnaliseDTO retorno = new AnaliseDTO();

            #region Mock de Dados

            retorno.IdAnalise = 1;
            retorno.DataAnalise = DateTime.Now;
            retorno.RazaoSocial = "Empresa de Teste 01";
            retorno.CNPJ = "11.111.111/0001-01";
            retorno.Endereco = "Rua de Teste 01 - São Paulo - SP - Brasil";
            retorno.Telefone = "(11) 1111-1111";

            retorno.Banco = "Banto de Teste";
            retorno.Agencia = "11111-11";
            retorno.Conta = "11111111111-11";

            retorno.UsuarioMaster = "Usuario Master";
            retorno.CPFMaster = "111.111.111-11";
            retorno.RGMaster = "11.111.111-11";


            retorno.ListaResponsavel = new List<ResponsavelDTO>();

            ResponsavelDTO item01 = new ResponsavelDTO();
            item01.NomeResposnavel = "Fulano de Teste01";
            item01.RG = "11.111.111-1";
            item01.EstadoCivil = "Casado";
            item01.CPF = "111.111.111-11";

            retorno.ListaResponsavel.Add(item01);

            retorno.ListaAutorizado = new List<AutorizadoDTO>();

            AutorizadoDTO item02 = new AutorizadoDTO();
            item02.Nome= "Fulano de Teste01";
            item02.RG = "11.111.111-1";
            item02.CPF = "111.111.111-11";

            retorno.ListaAutorizado.Add(item02);

            #endregion

            return retorno;
        }
    }
}
