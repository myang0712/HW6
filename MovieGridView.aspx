<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MovieGridView.aspx.vb" Inherits="CitiesGrideview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [MovieId] = @MovieId" InsertCommand="INSERT INTO [Table] ([MovieName], [Year], [actor1], [actor2], [actor3], [actor4], [actor5], [RomanticReason]) VALUES (@MovieName, @Year, @actor1, @actor2, @actor3, @actor4, @actor5, @RomanticReason)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [MovieName] = @MovieName, [Year] = @Year, [actor1] = @actor1, [actor2] = @actor2, [actor3] = @actor3, [actor4] = @actor4, [actor5] = @actor5, [RomanticReason] = @RomanticReason WHERE [MovieId] = @MovieId">
            <DeleteParameters>
                <asp:Parameter Name="MovieId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="actor1" Type="String" />
                <asp:Parameter Name="actor2" Type="String" />
                <asp:Parameter Name="actor3" Type="String" />
                <asp:Parameter Name="actor4" Type="String" />
                <asp:Parameter Name="actor5" Type="String" />
                <asp:Parameter Name="RomanticReason" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Year" Type="String" />
                <asp:Parameter Name="actor1" Type="String" />
                <asp:Parameter Name="actor2" Type="String" />
                <asp:Parameter Name="actor3" Type="String" />
                <asp:Parameter Name="actor4" Type="String" />
                <asp:Parameter Name="actor5" Type="String" />
                <asp:Parameter Name="RomanticReason" Type="String" />
                <asp:Parameter Name="MovieId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView
             ID="GridView1"
             runat="server" 
            AllowPaging="True"
             AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="MovieId"
             DataSourceID="SqlDataSource1"
             Width="461px"
             GridLines="None"

             CssClass="cssGridview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldHeader"            
            CommandRowStyle-CssClass="command"
            >
            <Columns>
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:HyperLinkField DataNavigateUrlFields="MovieId" DataNavigateUrlFormatString="MovieDetailsview.aspx?MovieId={0}" Text="View Details" />
            </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>
        </asp:GridView>
    
</asp:Content>

