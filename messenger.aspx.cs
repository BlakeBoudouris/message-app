using System;
using System.Web.UI;

namespace Message {
    public partial class Messenger : Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void SendButton_Click(object sender, EventArgs e) {
            string message = messageInput.Text.Trim();
            if (!string.IsNullOrEmpty(message)) {
                // send message through websockt


                // clear input at the end
                messageInput.Text = "";
            }
        }
    }
}