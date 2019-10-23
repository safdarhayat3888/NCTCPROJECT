<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="NCTCUI.leave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center">
       
       <asp:Button ID="Button3" runat="server"  BackColor="Black" Font-Size="Large" ForeColor="White" Text="Apply for Leave" Width="182px" OnClick="Button3_Click" />  &nbsp; &nbsp; <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Size="Large" ForeColor="White" Text="Show Leave Status" Width="182px" OnClick="Button2_Click" />
        
    </p>
     
    <asp:Panel ID="Panel1" runat="server">
    <table cellspacing="1" style="width: 100%; border: 1px solid #000000; background-color: #ffffff">
       
       <tr>
            <td class="text-center" style="font-size: large">E_Id</td>
            <td class="text-center" style="font-size: large">Leave Type</td>
            <td class="text-center" style="font-size: large">From</td>
            <td class="text-center" style="font-size: large">To</td>
            <td class="text-center" style="font-size: large">Reason</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="Label1" runat="server" Height="24px" Text="Label" Width="168px"></asp:Label>
            </td>
            <td class="text-center">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                    <asp:ListItem>Casual Leave</asp:ListItem>
                    <asp:ListItem>Diversity Leave</asp:ListItem>
                    <asp:ListItem>Earned Leave</asp:ListItem>
                    <asp:ListItem>Leave Without Pay</asp:ListItem>
                    <asp:ListItem>Work From Home</asp:ListItem>
                    <asp:ListItem>Sick Leave</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-center">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:TextBox ID="TextBox3" runat="server" required=" "></asp:TextBox>
            </td>

        </tr>
    </table>
    <p>

</p>
    <p>

        &nbsp; <asp:Button ID="Button1" runat="server" Height="32px" Text="Submit" Width="144px" BackColor="Black" Font-Size="Large" ForeColor="White" OnClick="Button1_Click" />

</p>
    <p>

        &nbsp; <asp:Label ID="lblleave" runat="server" ForeColor="#336600"></asp:Label>

</p>
        </asp:Panel>

    <p>

        &nbsp;<asp:Panel ID="Panel2" runat="server">
        <p>

            

</p>
</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
    </asp:Panel>

</asp:Content>
