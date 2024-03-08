Imports System.Data
Imports System.Data.SqlClient
Partial Class Register
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Project\college\Asp\VideoStreaming\App_Data\VideoStreaming.mdf;Integrated Security=True;User Instance=True")

    Protected Sub BtnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnRegister.Click
        Dim email As String = txtEmail.Text.ToString.Trim()
        Dim username As String = txtUser.Text.ToString.Trim()
        Dim password As String = txtPass.Text.ToString.Trim()
        Dim userType As String
        If optAdmin.Checked Then
            userType = optAdmin.Text
        Else
            userType = optUser.Text
        End If
        Dim str As String
        str = "insert into tbl_user values('" & username & "','" & email & "' ,'" & password & "','" & userType & "');"
        Dim cmd As New SqlCommand(str, conn)
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        Response.Redirect("Login.aspx")
    End Sub
End Class
