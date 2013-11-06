
Partial Class searchMovie
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged
        Dim searchWord As String

        searchWord = "Select * From [Table] where (MovieName Like '%" + tbTool.Text.ToString() + " % ')"
        ToolDataSource1.SelectCommand = searchWord

    End Sub
End Class
