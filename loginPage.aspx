<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="BillProject.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 6px;
        }
        .auto-style3 {
            width: 40%;
            border: 4px solid #000000;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            width: 201px;
            height: 43px;
        }
        .auto-style7 {
            height: 48px;
        }
        .auto-style8 {
            width: 201px;
            height: 48px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            font-weight: bold;
            background-color: #00CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="242px" ImageUrl="~/LOGIN.jpeg" Width="339px" />
            <br />
            <table align="center" cellpadding="5" cellspacing="4" class="auto-style3">
                <tr>
                    <td class="auto-style5"><strong>USERNAME</strong>:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>PASSWORD:</strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="LOGIN" />
                        </strong></td>
                </tr>
            </table>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterForm.aspx">Register(New User ?)</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
