Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessRak
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub RakInsert(ByVal obj As Rak)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Rak " & _
                " (nama_rak , id_gudang, id_member) " & _
                " VALUES ( ?nama, ?gudang, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaRak)
                    .AddWithValue("?gudang", obj.IdGudang)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub RakUpdate(ByVal obj As Rak)
            Try
                Dim StrSQL As String = "UPDATE tbl_Rak SET " & _
                "nama_rak=?nama , id_gudang=?gudang, id_member=?member " & _
                " WHERE id_rak=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdRak)
                    .AddWithValue("?nama", obj.NamaRak)
                    .AddWithValue("?gudang", obj.IdGudang)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub RakDelete(ByVal id_Rak As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Rak WHERE id_Rak='" & id_Rak & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindRakById(ByVal Id As Integer) As List(Of Rak)
            Dim Rak As New List(Of Rak)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Rak WHERE id_Rak = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim dok As New Rak()
                    dok.IdRak = CInt(rdr("id_Rak"))
                    dok.NamaRak = rdr("nama_Rak").ToString()
                    dok.IdGudang = CInt(rdr("id_gudang"))
                    dok.IDMember = CInt(rdr("id_member"))
                    Rak.Add(dok)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Rak
        End Function

    End Class

End Namespace

