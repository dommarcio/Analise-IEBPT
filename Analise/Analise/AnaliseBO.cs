using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Analise.DTL;
using Analise.DAL;

namespace Analise.BLL
{
    public class AnaliseBO
    {
        #region Analises

        public List<string> ListarAnalisesGrid()
        {
            List<string> retorno = new List<string>();

            List<AnaliseDTO> auxDados = new AnaliseDAO().ListarAnalisesGrid();

            string dados = "";

            for (int i = 0; i < auxDados.Count; i++)
            {
                dados = "";

                #region Verificação do Icone

                string icone = (auxDados[i].Status.Equals("Nova"))? "iconeVerde.png" : (auxDados[i].Status.Equals("Em Analise"))? "iconeAmarelo.png": "iconeVermelho.png";
                string css = (auxDados[i].Status.Equals("Nova")) ? "Nova" : (auxDados[i].Status.Equals("Em Analise")) ? "Analise" : "Escalado";

                dados += "<img src='\\imagens\\icones\\" + icone + "' class='imgGrid' >";

                #endregion

                dados += " " + auxDados[i].DataAnalise.ToString("dd/MM") + " - " + auxDados[i].RazaoSocial + "|" + auxDados[i].IdAnalise + "|" + css;

                retorno.Add(dados);
            }


            return retorno;
        }

        public AnaliseDTO RetornarAnalise(int idAnalise)
        {
            return new AnaliseDAO().RetornarAnalise(idAnalise);
        }

        #endregion

        #region CheckList

        private List<CheckListGrupoDTO> MontagemCheckListNova()
        {
            List<CheckListGrupoDTO> retorno = new List<CheckListGrupoDTO>();

            #region Ficha Cadastral

            CheckListGrupoDTO ficha = new CheckListGrupoDTO();
            ficha.Grupo = "Ficha Cadastral";
            ficha.ListaItens = new List<CheckListItemDTO>();

            ficha.ListaItens.Add(new CheckListItemDTO("A ficha cadastral devidamente preenchida", EnumResultadoAnalise.Reprovado));
            ficha.ListaItens.Add(new CheckListItemDTO("CNPJ sem restrições", EnumResultadoAnalise.EmAnalise));
            ficha.ListaItens.Add(new CheckListItemDTO("Telefone informado valido", EnumResultadoAnalise.EmAnalise));
            ficha.ListaItens.Add(new CheckListItemDTO("Dados bancarios confirmados", EnumResultadoAnalise.EmAnalise));
            ficha.ListaItens.Add(new CheckListItemDTO("Responsaveis legais sem restrições", EnumResultadoAnalise.EmAnalise));
            ficha.ListaItens.Add(new CheckListItemDTO("Usuario master validado no sistema", EnumResultadoAnalise.EmAnalise));

            retorno.Add(ficha);

            #endregion

            #region Documentos

            CheckListGrupoDTO documentos = new CheckListGrupoDTO();
            documentos.Grupo = "Documentos Enviados";
            documentos.ListaItens = new List<CheckListItemDTO>();

            documentos.ListaItens.Add(new CheckListItemDTO("Documentos enviados visiveis", EnumResultadoAnalise.EmAnalise));
            documentos.ListaItens.Add(new CheckListItemDTO("Documentos de todos os responsaveis enviados", EnumResultadoAnalise.EmAnalise));
            documentos.ListaItens.Add(new CheckListItemDTO("Documentos não apresentão rasuras", EnumResultadoAnalise.EmAnalise));
            documentos.ListaItens.Add(new CheckListItemDTO("Documentos validos", EnumResultadoAnalise.EmAnalise));

            retorno.Add(documentos);

            #endregion

            #region Contrato

            CheckListGrupoDTO contrato = new CheckListGrupoDTO();
            contrato.Grupo = "Minuta de Contrato";
            contrato.ListaItens = new List<CheckListItemDTO>();

            contrato.ListaItens.Add(new CheckListItemDTO("Minuta de Contrato Validada", EnumResultadoAnalise.EmAnalise));
            contrato.ListaItens.Add(new CheckListItemDTO("Minuta Devidamente Assinada", EnumResultadoAnalise.EmAnalise));

            retorno.Add(contrato);

            #endregion

            return retorno;
        }

        public string MontagemExibicaoCheckList(List<CheckListGrupoDTO> checklist)
        {
            string retorno = "";

            string auxGrupo = "<div class='ChekListGrupo'><div class='titulo'>";
            string auxItem = "<div class='CheckListItem #Resultado'>";
            string auxImagemItem = "<table cellspacing='0' cellpadding='0'><tr><td width='25px'>&nbsp;<img src='\\imagens\\icones\\checkList#Resultado.png' width='20px' ></td><td style='text-align: left'>";

            for (int i = 0; i < checklist.Count; i++)
            {
                retorno += auxGrupo + checklist[i].Grupo + "</div>";
                retorno += "<br>";
                for (int j = 0; j < checklist[i].ListaItens.Count; j++)
                {
                    #region verificação do resultado

                    retorno += auxItem.Replace("#Resultado", checklist[i].ListaItens[j].Resultado.ToString());
                    retorno += auxImagemItem.Replace("#Resultado", checklist[i].ListaItens[j].Resultado.ToString());
                    retorno += checklist[i].ListaItens[j].NomeItem + "</td></tr></table></div>";

                    #endregion

                    
                }

                retorno += "<br>";
                retorno += "</div>";

            }

            return retorno;
        }

        public List<CheckListGrupoDTO> ListarCheckList(AnaliseDTO analise)
        {
            List<CheckListGrupoDTO> retorno = MontagemCheckListNova();

            return retorno;
        }

        public List<CheckListItemDTO> ListarChekListItem(List<CheckListGrupoDTO> cheklist, string grupo)
        {
            List<CheckListItemDTO> retorno = new List<CheckListItemDTO>();

            for (int i = 0; i < cheklist.Count; i++)
            {
                if (cheklist[i].Grupo.Equals(grupo))
                {
                    retorno = cheklist[i].ListaItens;
                    break;
                }
            }

            return retorno;
        }

        #endregion
    }
}
