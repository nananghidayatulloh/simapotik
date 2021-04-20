Imports MySql.Data.MySqlClient
Namespace AccessData
    Public Class AccessPasien

        Private myconnection As New AccessData.DataBaseConnection

        Public Sub PasienInsert(ByVal obj As Pasien)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Pasien " & _
                " (nama_Pasien, no_bpjs, alamat_Pasien, kontak_Pasien,jenis_kelamin, tanggal_lahir, id_member) " & _
                " VALUES ( ?nama, ?bpjs, ?alamat, ?kontak, ?kelamin, ?ttl, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaPasien)
                    .AddWithValue("?bpjs", obj.Bpjs)
                    .AddWithValue("?alamat", obj.AlamatPasien)
                    .AddWithValue("?kontak", obj.KontakPasien)
                    .AddWithValue("?kelamin", obj.KelaminPasien)
                    .AddWithValue("?ttl", obj.TglLahirPasien)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
                MsgBox("Data berhasil disimpan, refresh kembali untuk melihat data", MsgBoxStyle.Information, "Information")
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub PasienUpdate(ByVal obj As Pasien)
            Try
                Dim StrSQL As String = "UPDATE tbl_Pasien SET " & _
                "nama_Pasien=?nama,no_bpjs=?bpjs,alamat_Pasien=?alamat,kontak_Pasien=?kontak, jenis_kelamin=?kelamin, tanggal_lahir=?ttl, id_member=?member " & _
                " WHERE id_Pasien=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdPasien)
                    .AddWithValue("?nama", obj.NamaPasien)
                    .AddWithValue("?bpjs", obj.Bpjs)
                    .AddWithValue("?alamat", obj.AlamatPasien)
                    .AddWithValue("?kontak", obj.KontakPasien)
                    .AddWithValue("?kelamin", obj.KelaminPasien)
                    .AddWithValue("?ttl", obj.TglLahirPasien)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
                MsgBox("Data berhasil diubah, refresh kembali untuk melihat data", MsgBoxStyle.Information, "Information")

            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub PasienDelete(ByVal id_Pasien As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Pasien WHERE id_Pasien='" & id_Pasien & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()
                MsgBox("Data berhasil dihapus", MsgBoxStyle.Information, "Information")
            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindPasienById(ByVal Id As Integer) As List(Of Pasien)
            Dim Pasien As New List(Of Pasien)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Pasien WHERE id_Pasien = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Pasien()
                    x.IdPasien = CInt(rdr("id_Pasien"))
                    x.NamaPasien = rdr("nama_Pasien").ToString()
                    x.AlamatPasien = rdr("alamat_Pasien").ToString()
                    x.Bpjs = rdr("no_bpjs").ToString()
                    x.KontakPasien = rdr("kontak_Pasien").ToString()
                    x.KelaminPasien = rdr("jenis_kelamin").ToString()
                    x.TglLahirPasien = rdr("tanggal_lahir").ToString()
                    x.IDMember = CInt(rdr("id_member"))
                    Pasien.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Pasien
        End Function

    End Class
End Namespace
