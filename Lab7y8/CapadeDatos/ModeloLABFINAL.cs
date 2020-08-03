using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace CapadeDatos
{
   public class ModeloLABFINAL : DbContext
    {

        public ModeloLABFINAL() : base("name=LABFINAL")
        {

        }

        public virtual DbSet<GestionPrestamo> GestionPrestamo { get; set; }
    }
}
