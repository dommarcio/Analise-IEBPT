using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Analise.DTL
{
    public class CheckListItemDTO
    {
        public string NomeItem { get; set; }
        public EnumResultadoAnalise Resultado { get; set; }

        public CheckListItemDTO()
        {
        }

        public CheckListItemDTO(string _nomeItem, EnumResultadoAnalise _resultado)
        {
            NomeItem = _nomeItem;
            Resultado = _resultado;
        }
    }
}
