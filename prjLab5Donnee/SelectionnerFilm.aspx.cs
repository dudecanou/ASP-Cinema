using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjLab5Donnee
{
    public partial class SelectionnerFilm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            lblTitre.Text = GridView1.SelectedValue.ToString();
            lblTitre.Text =GridView1.DataKeys[GridView1.SelectedIndex].Values[0].ToString();

            lblDirecteur.Text = GridView1.SelectedValue.ToString();
            lblDirecteur.Text = "DIRECTEUR : " + GridView1.DataKeys[GridView1.SelectedIndex].Values[1].ToString();
       

            lblDate.Text = GridView1.SelectedValue.ToString();
            string date = GridView1.DataKeys[GridView1.SelectedIndex].Values[2].ToString();
            lblDate.Text = "DATE : " + String.Format("{0:MM dd yyyy}", date);

        }
    }
}
