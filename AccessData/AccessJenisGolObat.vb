Imports MySql.Data.MySqlClient
Namespace AccessData
    Public Class AccessJenisGolObat

        Private myconnection As New AccessData.DataBaseConnection

        Public Sub JenisGolonganObatInsert(ByVal obj As JenisGolonganObat)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_jenis_obat " & _
                " (nama_jenis, id_member) " & _
                " VALUES ( ?nama, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaJenis)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub JenisGolonganObatUpdate(ByVal obj As JenisGolonganObat)
            Try
                Dim StrSQL As String = "UPDATE tbl_jenis_obat SET " & _
                "nama_jenis=?nama " & _
                " WHERE id_jenis_obat=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdJenis)
                    .AddWithValue("?nama", obj.NamaJenis)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub JenisGolonganObatDelete(ByVal id_jenis As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_jenis_obat WHERE id_jenis_obat='" & id_jenis & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindGolonganObatById(ByVal Id As Integer) As List(Of JenisGolonganObat)
            Dim jenisobat As New List(Of JenisGolonganObat)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_jenis_obat WHERE id_jenis_obat = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim jenis As New JenisGolonganObat()
                    jenis.IdJenis = CInt(rdr("id_jenis_obat"))
                    jenis.NamaJenis = rdr("nama_jenis").ToString()
                    jenisobat.Add(jenis)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return jenisobat
        End Function

    End Class

End Namespace

