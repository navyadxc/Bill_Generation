<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="BillProject.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border: 4px solid #000000;
        }
        .auto-style2 {
            text-align: center;
            background-color: #00FFFF;
        }
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 36px;
        }
        .auto-style6 {
            height: 31px;
            text-align: center;
        }
        .auto-style7 {
            font-weight: bold;
            background-color: #00FFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <h2>WELCOME TO REGISTRATION FORM</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>NAME</strong>:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="143px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>GENDER</strong>:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="144px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>CITY</strong>:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="143px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>STATE</strong>:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="146px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>PASSWORD:</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" Width="151px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="REGISTER" />
                        </strong></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
