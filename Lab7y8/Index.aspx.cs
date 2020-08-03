using CapadeDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Lab7y8
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!Page.IsPostBack)
            {
                cargarGrid();
            }
        }

        public void cargarGrid()
        {
            using (ModeloLABFINAL contextoBD = new ModeloLABFINAL())
            {
               /* gridGestionPrestamo.DataSource = contextoBD.GestionPrestamo.ToList();
                gridGestionPrestamo.DataBind();*/
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            using (ModeloLABFINAL contextoBD = new ModeloLABFINAL())
            {
                GestionPrestamo objGestionPrestamo = new GestionPrestamo();
                objGestionPrestamo.idPais_Pais = cmbPais.SelectedIndex;
                objGestionPrestamo.Habitantes = Convert.ToInt32(txtHabitantes.Text);
                objGestionPrestamo.idIdioma_Idioma = cmbIdioma.SelectedIndex;
                objGestionPrestamo.PIB = Convert.ToInt32(txtPIB.Text);
                objGestionPrestamo.Superficie = Convert.ToInt32(txtSuperficie.Text);
                objGestionPrestamo.idRiesgo_Riesgo = Convert.ToInt32(rdAlto.Checked);
                objGestionPrestamo.Prestamo = chkbSujPrest.Checked;
                contextoBD.GestionPrestamo.Add(objGestionPrestamo);
                contextoBD.SaveChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "s1", "alert('Registro exitoso')", true);
                cargarGrid();
            }


        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            using (ModeloLABFINAL contextoBD = new ModeloLABFINAL())
            {
                GestionPrestamo aux = contextoBD.GestionPrestamo.Where(x => x.PIB == 1).FirstOrDefault();
                if (aux == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "s1", "alert('Registro no encontrado')", true);

                    return;
                }

                aux.Superficie = 20;
                contextoBD.SaveChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "s1", "alert('Se logró actualizar con exito')", true);
                cargarGrid();
            }


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            using (ModeloLABFINAL contextoBD = new ModeloLABFINAL())
            {
                GestionPrestamo aux = contextoBD.GestionPrestamo.Where(x => x.PIB == 1).FirstOrDefault();
                if (aux == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "s1", "alert('Registro no encontrado')", true);

                    return;
                }

                contextoBD.GestionPrestamo.Remove(aux);
                contextoBD.SaveChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "s1", "alert('Se logró eliminar con exito')", true);
                cargarGrid();
            }
        }
    }
}