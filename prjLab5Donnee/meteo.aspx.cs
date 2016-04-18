using prjLab5Donnee.net.webservicex.www;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace prjLab5Donnee
{
    public partial class meteo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XElement country = XElement.Load(Server.MapPath("countries.xml"));

            foreach (XElement name in country.Elements("country"))
            {
                ddlPays.Items.Add(name.Value);
            }

           
        }

        protected void ddlPays_SelectedIndexChanged(object sender, EventArgs e)
        {
            GlobalWeather service = new GlobalWeather();

            string Data = service.GetCitiesByCountry(ddlPays.Text);

            //XmlReader xtr = new XmlTextReader(new System.IO.StringReader(Data));

            XElement city = XElement.Load(new System.IO.StringReader(Data));

            ddlVilles.Items.Clear();

            foreach (XElement name in city.Elements("Table").Elements("City"))
            {
                ddlVilles.Items.Add(name.Value);
            }
        }

        protected void ddlVilles_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {
                GlobalWeather service = new GlobalWeather();

                string Data = service.GetWeather(ddlVilles.Text, ddlPays.Text);

                XElement Temp = XElement.Load(new System.IO.StringReader(Data));

                string chaine = Temp.Value;

                // ---------------------- Determine le nombre d'espace ---------------------
                string[] res = chaine.Split(' ');


                // ---  Recupere la valeur entre l'espace 14 et 13 en partant de la fin ----
                string FMax = res[res.Length - 14]; // temperature Max
                string FMin = res[res.Length - 10]; // temperature Min

                //string directionVent = res[res.Length - 29]; // direction vent
                //string vitesseVent = res[res.Length - 25]; // vitesse vent

                string humidite = res[res.Length - 6]; // humidite de l'air
                string presure = res[res.Length - 5]; // pression

                // ------------------ Convertie la valeur String en Double -----------------
                double a = double.Parse(FMax);
                double b = double.Parse(FMin);


                // -------------------- Convertie la valeur F en Celcus C ------------------
                double CMax0 = (a - 32) * 5 / 9;
                double CMin0 = (b - 32) * 5 / 9;
                double CMax = Math.Round(CMax0, 0); // temperature Max
                double CMin = Math.Round(CMin0, 0); // temperature Min

                // ------------------------------- RESULTAT --------------------------------
                lblTemperatureMax.Text = "Max : " + FMax + " F " + "(" + CMax + " C)";
                lblTemperatureMin.Text = "Min : " + FMin + " F " + "(" + CMin + " C)";

                //lblDirection.Text = "Direction : " + directionVent;
                //lblVitesse.Text = "Wind : " + vitesseVent + " MPH";

                lblHumidite.Text = "Humidity : " + humidite;
                lblPrecipitation.Text = "Presure : " + presure + "''";
            }
            catch
            {
                lblTemperatureMax.Text = "PLEASE TRY";
                lblTemperatureMin.Text = "AGAIN LATER";

                //lblDirection.Text = "Direction : " + directionVent;
                //lblVitesse.Text = "Wind : " + vitesseVent + " MPH";

                lblHumidite.Text = "PLEASE TRY";
                lblPrecipitation.Text = "AGAIN LATER";
            }

            // lblTemperatureMax.Text = Temp.Value;


        }
    }
}