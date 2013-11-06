
Partial Class NewCity
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Write("The record has been added to the database")
        Response.AddHeader("refresh", "3;URL=./NewMovie.aspx")
    End Sub


End Class
