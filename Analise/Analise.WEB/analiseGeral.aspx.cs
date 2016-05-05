using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Analise.DTL;
using Analise.BLL;

namespace Analise.WEB
{
    public partial class analiseGeral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gdvAnalises.DataSource = new AnaliseBO().ListarAnalisesGrid();
                gdvAnalises.DataBind();
            }
        }

        protected void lkbAnaliseGrid_Click(object sender, EventArgs e)
        {
            int id = int.Parse(((LinkButton)sender).CommandArgument);

            AnaliseDTO analise = new AnaliseBO().RetornarAnalise(id);

            #region Montagem do CheckList

            List<CheckListGrupoDTO> checkList = new AnaliseBO().ListarCheckList(analise);

            lblCheckList.Text = new AnaliseBO().MontagemExibicaoCheckList(checkList);

            #endregion

            #region Montagem da Ficha Cadastral

            lblFichaCadastralCNPJ.Text = analise.CNPJ;
            lblFichaCadastralDataAnalise.Text = analise.DataAnalise.ToString("dd/MM/yyyy");
            lblFichaCadastralEndereco.Text = analise.Endereco;
            lblFichaCadastralId.Text = analise.IdAnalise.ToString();
            lblFichaCadastralRazaoSocial.Text = analise.RazaoSocial;
            lblFichaCadastralStatus.Text = analise.Status;
            lblFichaCadastralTelefone.Text = analise.Telefone;

            lblFichaCadastralBanco.Text = analise.Banco;
            lblFichaCadastralAgencia.Text = analise.Agencia;
            lblFichaCadastralConta.Text = analise.Conta;

            lblFichaCadastralRGMaster.Text = analise.RGMaster;
            lblFichaCadastralCPFMaster.Text = analise.CPFMaster;
            lblFichaCadastralUsuarioMaster.Text = analise.UsuarioMaster;

            gdvResponsaveis.DataSource = analise.ListaResponsavel;
            gdvResponsaveis.DataBind();


            gdvAutorizado.DataSource = analise.ListaAutorizado;
            gdvAutorizado.DataBind();

            #endregion

        }

        protected void gdvAnalises_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType.Equals(DataControlRowType.DataRow))
            {
                Label lblItemGrid = (Label)e.Row.FindControl("lblAnaliseGrid");
                LinkButton lbkAnalise = (LinkButton)e.Row.FindControl("lkbAnaliseGrid");

                lblItemGrid.Text = e.Row.DataItem.ToString().Split('|')[0];
                lbkAnalise.CommandArgument = e.Row.DataItem.ToString().Split('|')[1];

                e.Row.CssClass = e.Row.DataItem.ToString().Split('|')[2];
            }
        }
    }
}