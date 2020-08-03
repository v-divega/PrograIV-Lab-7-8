using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CapadeDatos
{
   public class Pais
    {
      public string pais { get; set; }
      public Boolean Activo { get; set; }

    }
}
