<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messenger.aspx.cs" %>

<!DOCTYPE html>
<html lang="en">
    <head runat="server">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Telemet Messenger</title>
        <link rel="stylesheet" href="styles.css" />
        <script src="main.js" type="text/javascript"></script>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="container">
                <div class="chat-side left" id="leftMessages" runat="server">
                    <h3 class="sticky-header">Them</h3>
                        <!--Messages here-->
                </div>
                <div class="chat-side right" id="rightMessages" runat="server">
                    <h3 class="sticky-header">You</h3>
                        <!--Messages here-->
                </div>
            </div>
            <div class="input area">
                <asp:TextBox ID="messageInput" runat="server" Placeholder="Type a message..."></asp:TextBox>
                <asp:Button ID="sendButton" runat="server" Text="Send" OnClick="SendButton_Click"></asp:Button>
            </div>
        </form>
    </body>
</html>