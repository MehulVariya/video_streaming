Imports System.Data
Imports System.Data.SqlClient
Partial Class Login
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Project\college\Asp\VideoStreaming\App_Data\VideoStreaming.mdf;Integrated Security=True;User Instance=True")
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim cmd As New SqlCommand("select user_type from tbl_user where username='" & txtUser.Text & "' and password='" & txtPass.Text & "'", conn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            If ds.Tables(0).Rows(0)("user_type").Trim() = "Admin" Then
                Response.Redirect("AdminHome.aspx?user=" + txtUser.Text)
            Else
                Response.Redirect("UserHome.aspx?user=" + txtUser.Text)
            End If
        End If
    End Sub
End Class
