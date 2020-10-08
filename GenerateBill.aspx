<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateBill.aspx.cs" Inherits="BillProject.GenerateNew_Bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border: 4px solid #000000;
            background-color: #CCFF99;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            text-align: center;
            height: 41px;
        }
        .auto-style4 {
            height: 44px;
            background-color: #99FF99;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style7 {
            height: 39px;
        }
        .auto-style8 {
            height: 37px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            background-color: #00FF00;
        }
        .auto-style13 {
            background-color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <div class="auto-style11">
                <table align="left" cellpadding="5" cellspacing="5" class="auto-style1">
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <h3>GENERATE NEW BILL WEB FORM</h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><b>BILL TITLE:</b></td>
                        <td class="auto-style5"><b></b>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><b>BILL CATEGORY:</b></td>
                        <td class="auto-style7">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>PERSONAL</asp:ListItem>
                                <asp:ListItem>SOCIAL</asp:ListItem>
                                <asp:ListItem>FAMILY</asp:ListItem>
                                <asp:ListItem>OFFICE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>BILL AMOUNT:</strong></td>
                        <td class="auto-style8">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><strong>DATE OF ENTRY:</strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><strong>BILL DUE DATE:</strong></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>BILL PAYMENT MODE:</strong></td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>CC</asp:ListItem>
                                <asp:ListItem>CASH</asp:ListItem>
                                <asp:ListItem>BAAANK TRANSFER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>BILL STATUS:</strong></td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>PAID</asp:ListItem>
                                <asp:ListItem>UN PAID</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2"><strong>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="GENERATE BILL" />
                            <br />
                            </strong>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <strong>
                <br />
                <br />
                <br />
                <br />
                </strong>
            </div>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style12">
                        <h3><strong>BILL REPORT</strong></h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table cellpadding="3" class="auto-style10">
                <tr>
                    <td class="auto-style13">
                        <h3><strong>LIST ALL BILLS BY DUE DATES</strong></h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="GridView2_PageIndexChanging">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
