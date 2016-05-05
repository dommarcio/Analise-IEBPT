<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analiseGeral.aspx.cs" Inherits="Analise.WEB.analiseGeral" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: Analise de Proposta ::</title>
    <link href="css/estilo.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        function NavegarAbas(aba) {

            document.getElementById("CheckList").className = "Aba";
            document.getElementById("FichaCadastral").className = "Aba";
            document.getElementById("DocumentosEnviados").className = "Aba";
            document.getElementById("Parecer").className = "Aba";

            document.getElementById("CheckListConteudo").style.display = "none";
            document.getElementById("FichaCadastralConteudo").style.display = "none";
            document.getElementById("DocumentosEnviadosConteudo").style.display = "none";
            document.getElementById("ParecerConteudo").style.display = "none";

            document.getElementById(aba + "Conteudo").style.display = "block";
            document.getElementById(aba).className = "Aba AbaAtiva";

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="Cabecalho">
                <table>
                    <tr>
                        <td class="Titulo">
                            :: Analise de Proposta ::
                        </td>
                        <td class="Usuario">
                            <asp:ImageButton ID="imbMensagem" ImageUrl="~/imagens/icones/mensage.png" runat="server"
                                class="UsuarioImage" />
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/imagens/icones/ajuda.png" runat="server"
                                class="UsuarioImage" />
                            <img src="imagens/icones/usuario.png" class="UsuarioImage" />
                            Márcio Luiz Domingues<br />
                            Analista
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <table>
                <tr>
                    <td style="width: 250px;">
                        <div id="listas">
                            <div class="tituloListasGeral">
                                Lista de Analises</div>
                            <div class="ControleListas">
                                <asp:ImageButton ID="imbPesquisar" ImageUrl="~/imagens/icones/lupaPq.png" runat="server"
                                    CssClass="imagemButton" />
                                <asp:ImageButton ID="imbAtualizar" ImageUrl="~/imagens/icones/updatePq.png" runat="server"
                                    CssClass="imagemButton" />
                            </div>
                            <div class="conteudoListas">
                                <asp:GridView ID="gdvAnalises" runat="server" AutoGenerateColumns="False" BorderStyle="None"
                                    OnRowDataBound="gdvAnalises_RowDataBound" CssClass="GridGeral">
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lkbAnaliseGrid" runat="server" OnClick="lkbAnaliseGrid_Click">
                                                    <asp:Label ID="lblAnaliseGrid" runat="server" Text=""></asp:Label>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                            <HeaderStyle BorderStyle="None" />
                                            <ItemStyle BorderStyle="None" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="Analises">
                            <div class="tituloAnalise">
                                <asp:Label ID="lblAnalise" runat="server" Text="Analise Não Selecionada"></asp:Label>
                            </div>
                            <br />
                            <asp:Panel ID="pnAnaliseGeral" runat="server">
                                <table class="ConteudoAnalise">
                                    <tr>
                                        <td colspan="5" class="Controles">
                                            <asp:ImageButton ID="imbIniciarAnalise" runat="server" ImageUrl="~/imagens/icones/inicar.png"
                                                CssClass="imagemButton" />
                                            &nbsp;
                                            <asp:ImageButton ID="imbEscalar" runat="server" ImageUrl="~/imagens/icones/escalar.png"
                                                CssClass="imagemButton" />
                                            &nbsp;
                                            <asp:ImageButton ID="imbSalvar" runat="server" ImageUrl="~/imagens/icones/salvar.png"
                                                CssClass="imagemButton" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 5px;">
                                        </td>
                                        <td style="width: 201px;">
                                            <div class="Aba AbaAtiva" id="CheckList" onclick="NavegarAbas('CheckList');">
                                                <img src="imagens/icones/checkList.png" border="0" width="40px" class="ImgAba" />
                                                <br />
                                                &nbsp;&nbsp;CheckList
                                            </div>
                                        </td>
                                        <td style="width: 201px;">
                                            <div class="Aba" id="FichaCadastral" onclick="NavegarAbas('FichaCadastral');">
                                                <img src="imagens/icones/fichaCadastral.png" border="0" width="40px" class="ImgAba" />
                                                <br />
                                                &nbsp;&nbsp;Ficha Cadastral
                                            </div>
                                        </td>
                                        <td style="width: 201px;">
                                            <div class="Aba" id="DocumentosEnviados" onclick="NavegarAbas('DocumentosEnviados');">
                                                <img src="imagens/icones/documentosEnviados.png" border="0" width="40px" class="ImgAba" />
                                                <br />
                                                &nbsp;&nbsp;Documentos Enviados
                                            </div>
                                        </td>
                                        <td style="width: 201px;">
                                            <div class="Aba" id="Parecer" onclick="NavegarAbas('Parecer');">
                                                <img src="imagens/icones/parecer.png" border="0" width="40px" class="ImgAba" />
                                                <br />
                                                &nbsp;&nbsp;Parecer do Analista
                                            </div>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <div class="abaConteudo">
                                                <div id="CheckListConteudo" style="display: none">
                                                    <div class="tituloAba">
                                                        Check List da Analise:</div>
                                                    <asp:Label ID="lblCheckList" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div id="FichaCadastralConteudo" style="display: none">
                                                    <div class="tituloAba">
                                                        Ficha Cadastral</div>
                                                    <div class="checkListConteudo">
                                                        <table>
                                                            <tr>
                                                                <th>
                                                                    Item a Verificar
                                                                </th>
                                                                <th>
                                                                    Aprovado
                                                                </th>
                                                                <th>
                                                                    Reprovado
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    A ficha cadastral devidamente preenchida
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha01Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha01Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    CNPJ sem restrições
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha02Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha02Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Telefone informado valido
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha03Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha03Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Dados bancarios confirmados
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha04Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha04Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Responsaveis legais sem restrições
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha05Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha05Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Usuário master validado no sistema
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha06Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkCheckListFicha06Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <table class="FichaCadastral">
                                                        <caption>
                                                            Dados Cadastrais</caption>
                                                        <tr>
                                                            <td>
                                                                Data da Analise:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralDataAnalise" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Status:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralStatus" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Id da Analise:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralId" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                CNPJ:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralCNPJ" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Razão Social:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralRazaoSocial" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Endereço:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralEndereco" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Telefone:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralTelefone" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <table class="FichaCadastral">
                                                        <caption>
                                                            Dados Bancarios</caption>
                                                        <tr>
                                                            <td>
                                                                Banco:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralBanco" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Agencia:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralAgencia" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Conta:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralConta" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <table class="FichaCadastral">
                                                        <caption>
                                                            Usuario Master</caption>
                                                        <tr>
                                                            <td>
                                                                Nome do Usuario:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralUsuarioMaster" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                RG:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralRGMaster" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                CPF:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblFichaCadastralCPFMaster" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <asp:GridView ID="gdvResponsaveis" runat="server" Caption="Responsaveis Legais" AutoGenerateColumns="False"
                                                        CssClass="FichaCadastral">
                                                        <Columns>
                                                            <asp:BoundField DataField="NomeResposnavel" HeaderText="Nome">
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="RG" HeaderText="RG" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="CPF" HeaderText="CPF" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="EstadoCivil" HeaderText="Estado Civil" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <br /><br />
                                                    <asp:GridView ID="gdvAutorizado" runat="server" Caption="Responsaveis Legais" AutoGenerateColumns="False"
                                                        CssClass="FichaCadastral">
                                                        <Columns>
                                                            <asp:BoundField DataField="Nome" HeaderText="Nome">
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="RG" HeaderText="RG" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="CPF" HeaderText="CPF" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </div>
                                                <div id="DocumentosEnviadosConteudo" style="display: block">
                                                    <div class="tituloAba">Documentos</div>
                                                    <div class="checkListConteudo">
                                                        <table>
                                                            <tr>
                                                                <th>
                                                                    Item a Verificar
                                                                </th>
                                                                <th>
                                                                    Aprovado
                                                                </th>
                                                                <th>
                                                                    Reprovado
                                                                </th>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Documentos enviados visiveis
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos01Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos01Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Documentos de todos os responsaveis enviados
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos02Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos02Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Documentos não apresentão rasuras
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos03Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos03Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Documentos validos
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos04Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkDocumentos04Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Minuta de Contrato Validada
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkMinuta01Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkMinuta01Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Minuta Devidamente Assinada
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkMinuta02Aprovado" runat="server" />
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <asp:CheckBox ID="chkMinuta02Reprovado" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <asp:Label ID="lblStatusMinutaContrato" runat="server" Text=""></asp:Label>
                                                    <asp:LinkButton ID="lkbMinutoContrato" runat="server">Ver Minuta de Contrato</asp:LinkButton>
                                                    <br />
                                                    <br />
                                                    <asp:GridView ID="gdvArquivos" runat="server" Caption="Documentos Enviados" AutoGenerateColumns="False"
                                                        CssClass="FichaCadastral">
                                                        <Columns>
                                                            <asp:BoundField DataField="Nome" HeaderText="Nome">
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="RG" HeaderText="RG" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="CPF" HeaderText="CPF" >
                                                                <HeaderStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" />
                                                                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                    <br />
                                                </div>
                                                <div id="ParecerConteudo" style="display: none">
                                                    Conteudo
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </div>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
