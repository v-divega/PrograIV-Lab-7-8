using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace CapadeDatos
{
    public class GestionPrestamo
    {
      public  int ID  { get; set;}
       public decimal PIB { get; set; }

        public int Superficie { get; set; }

        public Boolean Prestamo { get; set; }

        public int idRiesgo_Riesgo { get; set; }

        public int idPais_Pais { get; set; }

        public int idIdioma_Idioma { get; set; }

        public int Habitantes { get; set; }

    }
}
