<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeddingRegistration.aspx.cs" Inherits="May_project.WeddingRegistration" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #FFB6C1, #FFC0CB);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .header {
            font-size: 22px;
            font-weight: bold;
            color: #D14781;
            padding: 8px;
            border: 3px solid white;
            border-radius: 8px;
            text-align: center;
            background: rgba(255, 255, 255, 0.2);
            width: fit-content;
            margin-top: 30px; 
            margin-bottom: 8px;  
        }
        .container {
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
            width: 380px;  
            text-align: center;
        }
        label {
            font-weight: bold;
            color: #333;
            font-size: 13px;
            text-align: left;
            display: block;
            margin-bottom: 3px;
        }
        input, select {
            width: 100%;
            padding: 8px; 
            border: 2px solid #FFB6C1;
            border-radius: 5px;
            font-size: 13px;
            outline: none;
            transition: border 0.3s;
            text-align: center;
            margin-bottom: 6px; 
        }
        input:focus, select:focus {
            border-color: #D14781;
        }
        .btn {
            background: #D14781;
            color: white;
            border: none;
            padding: 10px; 
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
            transition: background 0.3s;
            margin-top: 5px; 
        }
        .btn:hover {
            background: #B03060;
        }
    </style>
</head>
<body>
    <div class="header">Wedding Registration Form</div>
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="txtPartner1">BRIDE (Full Name):</label>
                <asp:TextBox ID="txtPartner1" runat="server" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPartner2">GROOM (Full Name):</label>
                <asp:TextBox ID="txtPartner2" runat="server" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="weddingDateTextBox">Wedding Date:</label>
                <asp:TextBox ID="weddingDateTextBox" runat="server" TextMode="Date" required></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="ddlChurch">Select Church:</label>
                <asp:DropDownList ID="ddlChurch" runat="server">
                    <asp:ListItem Value="St. Peter Parish">St. Peter Parish</asp:ListItem>
                    <asp:ListItem Value="St. Mary's Cathedral">St. Mary's Cathedral</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="ddlReception">Select Reception Venue:</label>
                <asp:DropDownList ID="ddlReception" runat="server">
                    <asp:ListItem Value="Grand Hotel Ballroom">Grand Hotel Ballroom</asp:ListItem>
                    <asp:ListItem Value="Beach Resort Garden">Beach Resort Garden</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />
        </form>
    </div>

    <!-- Confirmation Modal -->
    <div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmationModalLabel">Congratulations!</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="confirmationMessage">
                    Registered Successfully!
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showConfirmationModal() {
            var confirmationModal = new bootstrap.Modal(document.getElementById('confirmationModal'));
            confirmationModal.show();
        }
    </script>
</body>
</html>
