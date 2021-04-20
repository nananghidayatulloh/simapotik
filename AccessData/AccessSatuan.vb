Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessSatuan
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub SatuanInsert(ByVal obj As Satuan)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_satuan " & _
                " (nama_satuan, id_member) " & _
                " VALUES ( ?nama,  ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaSatuan)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub SatuanUpdate(ByVal obj As Satuan)
            Try
                Dim StrSQL As String = "UPDATE tbl_satuan SET " & _
                "nama_Satuan=?nama, id_member=?member " & _
                " WHERE id_Satuan=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdSatuan)
                    .AddWithValue("?nama", obj.NamaSatuan)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub SatuanDelete(ByVal id_Satuan As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Satuan WHERE id_Satuan='" & id_Satuan & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindSatuanById(ByVal Id As Integer) As List(Of Satuan)
            Dim Satuan As New List(Of Satuan)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Satuan WHERE id_Satuan = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim dok As New Satuan()
                    dok.IdSatuan = CInt(rdr("id_Satuan"))
                    dok.NamaSatuan = rdr("nama_Satuan").ToString()
                    dok.IDMember = CInt(rdr("id_member"))
                    Satuan.Add(dok)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Satuan
        End Function

    End Class

End Namespace

