Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessJenis
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub DokterInsert(ByVal obj As Dokter)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_dokter " & _
                " (nama_dokter, no_sip, alamat_dokter, kontak_dokter, id_member) " & _
                " VALUES ( ?nama, ?sip, ?alamat, ?kontak, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaDokter)
                    .AddWithValue("?sip", obj.Sip)
                    .AddWithValue("?alamat", obj.AlamatDokter)
                    .AddWithValue("?kontak", obj.KontakDokter)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub DokterUpdate(ByVal obj As Dokter)
            Try
                Dim StrSQL As String = "UPDATE tbl_dokter SET " & _
                "nama_dokter=?nama,no_sip=?sip,alamat_dokter=?alamat,kontak_dokter=?kontak,id_member=?member " & _
                " WHERE id_dokter=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IDDokter)
                    .AddWithValue("?nama", obj.NamaDokter)
                    .AddWithValue("?sip", obj.Sip)
                    .AddWithValue("?alamat", obj.AlamatDokter)
                    .AddWithValue("?kontak", obj.KontakDokter)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub DokterDelete(ByVal id_dokter As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_dokter WHERE id_dokter='" & id_dokter & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindDokterById(ByVal Id As Integer) As List(Of Dokter)
            Dim dokter As New List(Of Dokter)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_dokter WHERE id_dokter = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim dok As New Dokter()
                    dok.IDDokter = CInt(rdr("id_dokter"))
                    dok.NamaDokter = rdr("nama_dokter").ToString()
                    dok.AlamatDokter = rdr("alamat_dokter").ToString()
                    dok.Sip = rdr("no_sip").ToString()
                    dok.KontakDokter = rdr("kontak_dokter").ToString()
                    dok.IDMember = CInt(rdr("id_member"))
                    dokter.Add(dok)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return dokter
        End Function

    End Class

End Namespace

