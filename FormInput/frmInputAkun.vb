Imports MySql.Data.MySqlClient

Public Class frmInputAkun
    Private myconnection As New AccessData.DataBaseConnection
    Sub Kosongkan()
        TextBox1.Enabled = True
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox4.Clear()
        TextBox1.Focus()
    End Sub

    Sub DataBaru()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox4.Clear()

        TextBox2.Focus()
    End Sub


    Private Sub TextBox1_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox1.KeyPress
        TextBox1.MaxLength = 3
        If e.KeyChar = Chr(13) Then
            If Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "1" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "2" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "3" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "4" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "5" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "6" And Microsoft.VisualBasic.Left(TextBox1.Text,
            1) <> "7" Then
                MsgBox("kode perkiraan harus diawalai dengan angka 1,2,3,4,5,6 atau 7")
                Exit Sub
            Else
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "1" Then
                    TextBox3.Text = "AKTIVA LANCAR"
                    TextBox4.Text = "NERACA"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "2" Then
                    TextBox3.Text = "AKTIVA TIDAK LANCAR"
                    TextBox4.Text = "NERACA"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "3" Then
                    TextBox3.Text = "HUTANG LANCAR"
                    TextBox4.Text = "NERACA"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "4" Then
                    TextBox3.Text = "HUTANG TIDAK LANCAR"
                    TextBox4.Text = "NERACA"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "5" Then
                    TextBox3.Text = "MODAL"
                    TextBox4.Text = "NERACA"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "6" Then
                    TextBox3.Text = "PENDAPATAN"
                    TextBox4.Text = "LABA RUGI"
                End If
                If Microsoft.VisualBasic.Left(TextBox1.Text, 1) = "7" Then
                    TextBox3.Text = "BIAYA"
                    TextBox4.Text = "LABA RUGI"
                End If
            End If

            Try
                Dim StrSQL As String = "select kode_perkiraan from tblperkiraan where left(kode_perkiraan,1)='" & Microsoft.VisualBasic.Left(TextBox1.Text, 1) & "' order by kode_perkiraan desc"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
                rdr.Read()
                If rdr.HasRows Then
                    Dim num As Integer
                    num = CInt(rdr.Item(0)) + 1
                    TextBox1.Text = num.ToString
                    TextBox2.Focus()
                Else
                    TextBox1.Text = Microsoft.VisualBasic.Left(TextBox1.Text, 1) + "01"
                    TextBox2.Focus()
                End If
                rdr.Close()
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try

        End If
        If Not (e.KeyChar >= "0" And e.KeyChar <= "9" Or e.KeyChar = vbBack) Then
            e.Handled = True
        End If
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Call Kosongkan()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        Try
            Dim StrSQL As String = "select * from tblPerkiraan where kode_Perkiraan='" & TextBox1.Text & "'"
            Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
            Dim rdr As MySqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
            rdr.Close()
            If Not rdr.HasRows Then
                Dim simpan As String = "insert into tblPerkiraan values ('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "',NULL)"
                Dim myCommand2 As New MySqlCommand(simpan, myconnection.open)
                myCommand2.ExecuteReader(CommandBehavior.CloseConnection)
                rdr.Close()
            Else
                Dim editSQL As String = "update tblPerkiraan set nama_Perkiraan='" & TextBox2.Text & "' where kode_Perkiraan='" & TextBox1.Text & "'"
                Dim myCommand3 As New MySqlCommand(editSQL, myconnection.open)
                myCommand3.ExecuteReader(CommandBehavior.CloseConnection)
                rdr.Close()
                Dim editJURNAL As String = "update tblJURNAL set nama_Perkiraan='" & TextBox2.Text & "' where kode_Perkiraan='" & TextBox1.Text & "'"
                Dim myCommand4 As New MySqlCommand(editJURNAL, myconnection.open)
                myCommand4.ExecuteReader(CommandBehavior.CloseConnection)
                rdr.Close()
            End If

        Catch sqlex As MySqlException
            Throw New Exception(sqlex.Message.ToString())
        End Try
    End Sub
End Class