
Partial Class CitiesDetailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Write("The record has been deleted from the database")
        Response.AddHeader("refresh", "3;URL=./MovieGridView.aspx")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./MovieGridview.aspx")
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub
End Class
