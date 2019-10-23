<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="uploaddsr.aspx.cs" Inherits="NCTCUI.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table cellspacing="1" border="1">
        <tr>
            <td class="text-center" style="font-size: large; height: 28px;">Date:</td>
            <td class="text-center" style="font-size: large; height: 28px;"><span style="font-size: large">E_Id.:</td>
            <td class="text-center" style="width: 160px; font-size: large; height: 28px;">Topic:</td>
            <td class="text-center" style="font-size: large; height: 28px;"><span style="font-size: large">Learned:</td>
            <td class="text-center" style="font-size: large; height: 28px;">Assigined:</td>
            <td class="text-center" style="font-size: large; height: 28px;">Status:</td>
            <td class="text-center" style="font-size: large; width: 278px; height: 28px;">Hours:</td>
        </tr>
        <tr>
            <td style="height: 75px">
                <asp:TextBox ID="TextBox1" required="" runat="server" Height="30px" Width="150px" TextMode="Date"></asp:TextBox>
                
            </td>
            <td style="height: 75px">
                <asp:Label ID="Label2" runat="server" Height="30px" Text="Label" Width="150px"></asp:Label>
                
            </td>
            <td style="width: 160px; height: 75px;">
                <asp:TextBox ID="TextBox3" required="" runat="server" Height="30px" Width="150px"></asp:TextBox>
            
            </td>
            <td style="height: 75px">
                <asp:TextBox ID="TextBox4" required="" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td style="height: 75px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="152px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Avinash Sir</asp:ListItem>
                    <asp:ListItem>Bob Sir</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 75px">
                <asp:TextBox ID="TextBox6" required="" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td style="width: 278px; height: 75px">
                <asp:TextBox ID="TextBox7" required="" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Size="Large" ForeColor="White" Height="39px" Text="Submit" Width="171px" OnClick="Button1_Click" />
    </p>
<p>
    <asp:Label ID="lbldsr" runat="server" Text=""></asp:Label>
    </p>
    <p>
        &nbsp;</p>
   </asp:Panel>
    <%--<asp:Panel ID="Panel2" runat="server">
        <p>
            &nbsp;</p>
        <asp:Button ID="Button2" runat="server" Text="View DSR"  BackColor="Black" Font-Size="Large" ForeColor="White" Height="39px"  Width="171px" OnClick="Button2_Click" />
        <br />
        
        <p>
        &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>--%>
            <p>
        &nbsp;</p>
            <p>
                <p>

        &nbsp;</p>
        &nbsp;<p>
                </p>
                &nbsp;<p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
            </p>
        </p>
    </asp:Panel>
</asp:Content>
