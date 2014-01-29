using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vt14_1_1_hur_manga_versaler.Model;

namespace vt14_1_1_hur_manga_versaler
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //MyButtom.Text ="Rensa";
            SendButtom.Visible = false;
            field.Enabled = false;

            if (IsValid)
            {
                var txt = field.Text;

                var sum = TextAnalyzer.GetNumberOfCapitals(txt);

                OutPutLiteral.Text = String.Format(OutPutLiteral.Text, sum);
                    //sum.ToString();
                OutPutPlaceHolder.Visible = true;
                ClearButton.Visible = true;
            };

        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            ClearButton.Visible = false;
            SendButtom.Visible = true;

        }
    }
}