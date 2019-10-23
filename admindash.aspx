<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admindash.aspx.cs" Inherits="NCTCUI.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
         <p>
             <label for="searchE_Id">Register New Employee</label>
         </p>
         <table cellspacing="1" style="width: 100%; border: 1px solid #000000; background-color: #ffffff; height: 75px;">
             <tr>
                 <td class="text-center" style="font-size: large">UserName</td>
                 <td class="text-center" style="font-size: large">Password</td>
                 <td class="text-center" style="font-size: large">Role</td>
                 <td class="text-center" style="font-size: large">E-Id</td>
             </tr>
             <tr>
                 <td class="text-center">
                     <asp:TextBox ID="TextBox2" runat="server" style="font-size: large"></asp:TextBox></td>
                 <td class="text-center">
                     <asp:TextBox ID="TextBox3" runat="server" style="font-size: large"></asp:TextBox></td>
                 <td class="text-center">
                     <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                         <asp:ListItem>Admin</asp:ListItem>
                         <asp:ListItem>User</asp:ListItem>
                     </asp:DropDownList>
                     <%--<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>--%>
                 <td class="text-center">
                     <asp:TextBox ID="TextBox5" runat="server" style="font-size: large"></asp:TextBox></td>
             </tr>
         </table>


      
    <p>
        <asp:Label ID="lblnewuser" runat="server" BackColor="White" Font-Size="Large" ForeColor="#336600"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Large" OnClick="Button1_Click1" />
    </p>
    <p>
    </p>
  





</asp:Content>
