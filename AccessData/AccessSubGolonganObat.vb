Imports MySql.Data.MySqlClient
Namespace AccessData
    Public Class AccessSubGolonganObat
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub GolonganObatInsert(ByVal obj As SubGolonganObat)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_golongan " &
                " (nama_golongan) " &
                " VALUES ( ?nama)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaGolongan)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub GolonganObatUpdate(ByVal obj As SubGolonganObat)
            Try
                Dim StrSQL As String = "UPDATE tbl_golongan SET " & _
                "nama_golongan=?nama " & _
                " WHERE id_golongan=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdGolongan)
                    .AddWithValue("?nama", obj.NamaGolongan)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub GolonganObatDelete(ByVal id_golongan As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_golongan WHERE id_golongan='" & id_golongan & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindGolonganObatById(ByVal Id As Integer) As List(Of SubGolonganObat)
            Dim golonganobat As New List(Of SubGolonganObat)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_golongan WHERE id_golongan = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim golongan As New SubGolonganObat()
                    golongan.IdGolongan = CInt(rdr("id_golongan"))
                    golongan.NamaGolongan = rdr("nama_golongan").ToString()
                    golonganobat.Add(golongan)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return golonganobat
        End Function
    End Class
End Namespace
