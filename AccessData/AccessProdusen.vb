Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessProdusen
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub ProdusenInsert(ByVal obj As Produsen)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_merk " & _
                " (nama_merk, id_member) " & _
                " VALUES ( ?nama, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaProdusen)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub ProdusenUpdate(ByVal obj As Produsen)
            Try
                Dim StrSQL As String = "UPDATE tbl_merk SET " & _
                "nama_merk=?nama, id_member=?member " & _
                " WHERE id_merk=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdProdusen)
                    .AddWithValue("?nama", obj.NamaProdusen)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub ProdusenDelete(ByVal id_Produsen As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_merk WHERE id_merk='" & id_Produsen & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindProdusenById(ByVal Id As Integer) As List(Of Produsen)
            Dim Produsen As New List(Of Produsen)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_merk WHERE id_merk = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim dok As New Produsen()
                    dok.IdProdusen = CInt(rdr("id_merk"))
                    dok.NamaProdusen = rdr("nama_merk").ToString()
                    dok.IDMember = CInt(rdr("id_member"))
                    Produsen.Add(dok)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Produsen
        End Function

    End Class

End Namespace

