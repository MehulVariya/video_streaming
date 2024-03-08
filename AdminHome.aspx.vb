Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminHome
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Project\college\Asp\VideoStreaming\App_Data\VideoStreaming.mdf;Integrated Security=True;User Instance=True")

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName))
        End If
        Dim query As String
        query = "insert into tbl_video values('" & txtId.Text & "','" & txtTitle.Text & "','" & txtTime.Text & "','" & FileUpload1.FileName & "','" & DropDownList1.SelectedValue & "')"
        executeQuery(query)
    End Sub

    Sub executeQuery(ByVal query As String)
        Dim cmd As New SqlCommand()
        cmd.CommandText = query
        cmd.Connection = conn
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        display()
    End Sub

    Sub display()
        Dim cmd As New SqlCommand("Select * from tbl_video", conn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal1.Text = Request.QueryString("user")
        display()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName))
        End If
        Dim query As String
        query = "update tbl_video set title='" & txtTitle.Text & "',time='" & txtTime.Text & "',path='" & FileUpload1.FileName & "',type='" & DropDownList1.SelectedValue & "' where id='" & txtId.Text & "')"
        executeQuery(query)
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Dim query As String
        query = "delete from tbl_video where id='" & txtId.Text & "'"
        executeQuery(query)
    End Sub
End Class
