<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MovieDetailsview.aspx.vb" Inherits="CitiesDetailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [Table] WHERE ([MovieId] = @MovieId)" 
         DeleteCommand="DELETE FROM [Table] WHERE [MovieId] = @MovieId" 
         InsertCommand="INSERT INTO [Table] ([MovieName], [Year], [actor1], [actor2], [actor3], [actor4], [actor5], [RomanticReason]) VALUES (@MovieName, @Year, @actor1, @actor2, @actor3, @actor4, @actor5, @RomanticReason)" 
         UpdateCommand="UPDATE [Table] SET [MovieName] = @MovieName, [Year] = @Year, [actor1] = @actor1, [actor2] = @actor2, [actor3] = @actor3, [actor4] = @actor4, [actor5] = @actor5, [RomanticReason] = @RomanticReason WHERE [MovieId] = @MovieId">
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
         <SelectParameters>
             <asp:QueryStringParameter Name="MovieId" QueryStringField="MovieId" Type="Int32" />
         </SelectParameters>
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
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="MovieId" 
            DataSourceID="SqlDataSource1"
             Height="50px" 
            Width="378px"

            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldHeader"            
            CommandRowStyle-CssClass="command"
            PagerStyle-cssClass="pager"
            
            >
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldHeader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="MovieId" HeaderText="MovieId" SortExpression="MovieId" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="actor1" HeaderText="actor1" SortExpression="actor1" />
                <asp:BoundField DataField="actor2" HeaderText="actor2" SortExpression="actor2" />
                <asp:BoundField DataField="actor3" HeaderText="actor3" SortExpression="actor3" />
                <asp:BoundField DataField="actor4" HeaderText="actor4" SortExpression="actor4" />
                <asp:BoundField DataField="actor5" HeaderText="actor5" SortExpression="actor5" />
                <asp:BoundField DataField="RomanticReason" HeaderText="RomanticReason" SortExpression="RomanticReason" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
</asp:Content>

