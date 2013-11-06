
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub CurrentTime_Load(sender As Object, e As EventArgs) Handles CurrentTime.Load
        CurrentTime.Text = DateTime.Now.ToLocalTime
    End Sub
End Class

