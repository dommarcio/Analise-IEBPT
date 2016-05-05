using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Analise.DTL
{
    public class CheckListGrupoDTO
    {
        public string Grupo { get; set; }
        public List<CheckListItemDTO> ListaItens { get; set; }
    }
}
