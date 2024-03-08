
Partial Class UserHome
    Inherits System.Web.UI.Page
    Protected Sub Repeater1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        If e.CommandName = "Play" Then
            Dim type As String
            type = Convert.ToString(e.CommandArgument)
            If type = "Premium" Then
                Dim message As String = "Please Pay the Premium"
                Dim sb As New System.Text.StringBuilder()
                sb.Append("alert('")
                sb.Append(message)
                sb.Append("');")
                ClientScript.RegisterOnSubmitStatement(Me.GetType(), "alert", sb.ToString())
            End If
        End If
    End Sub
End Class
