using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Analise.DTL
{
    public class ResponsavelDTO
    {
        public string NomeResposnavel { get; set; }
        public string EstadoCivil { get; set; }
        public string RG { get; set; }
        public string CPF { get; set; }
        public string Email {get; set;}
        public bool FlgPossuiDocumento { get; set; }
        public bool FlgDocumentoOK { get; set; }

    }
}
