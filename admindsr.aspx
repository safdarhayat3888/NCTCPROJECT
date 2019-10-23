<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admindsr.aspx.cs" Inherits="NCTCUI.admindsr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:Panel ID="Panel1" runat="server">
            Search
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="E_Id" DataValueField="E_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Refresh" OnClick="Button1_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NCTCportalConnectionString %>" SelectCommand="SELECT DISTINCT [E_Id] FROM [dsr]"></asp:SqlDataSource>

        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="655px" BorderStyle="None" Height="195px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="E_Id" HeaderText="E_Id" SortExpression="E_Id" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Learned" HeaderText="Learned" SortExpression="Learned" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Assigined" HeaderText="Assigined" SortExpression="Assigined" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="5px" />
                    <FooterStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NCTCportalConnectionString %>" SelectCommand="SELECT * FROM [dsr]"></asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" Height="189px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="655px">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="E_Id" HeaderText="E_Id" SortExpression="E_Id" />
                    <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
                    <asp:BoundField DataField="Learned" HeaderText="Learned" SortExpression="Learned" />
                    <asp:BoundField DataField="Assigined" HeaderText="Assigined" SortExpression="Assigined" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NCTCportalConnectionString %>" SelectCommand="SELECT * FROM [dsr] WHERE ([E_Id] = @E_Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="E_Id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>

    </p>


</asp:Content>
