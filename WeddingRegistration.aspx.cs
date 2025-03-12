using System;
using System.Web.UI;

namespace May_project
{
    public partial class WeddingRegistration : Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string partner1 = txtPartner1.Text;
            string partner2 = txtPartner2.Text;
            string email = txtEmail.Text;
            string weddingDate = weddingDateTextBox.Text;
            string church = ddlChurch.SelectedValue;
            string reception = ddlReception.SelectedValue;

            string confirmationMessage = $"🎉 Congratulations! Registered Successfully! 🎉<br/><br/>" +
                                         $"👩‍❤️‍👨 {partner1} & {partner2}<br/>" +
                                         $"📅 Wedding Date: {weddingDate}<br/>" +
                                         $"⛪ Church: {church}<br/>" +
                                         $"🎉 Reception: {reception}";

            // Inject JavaScript to update modal content and show it
            string script = $"document.getElementById('confirmationMessage').innerHTML = '{confirmationMessage}';" +
                            "showConfirmationModal();";
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowModalScript", script, true);
        }
    }
}
