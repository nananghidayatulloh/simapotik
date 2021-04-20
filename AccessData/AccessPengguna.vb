Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessPengguna
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub PelangganInsert(ByVal obj As Pelanggan)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Pelanggan " & _
                " (nama_Pelanggan, alamat_Pelanggan, kontak_Pelanggan, id_member) " & _
                " VALUES ( ?nama, ?alamat, ?kontak, ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaPelanggan)
                    .AddWithValue("?alamat", obj.AlamatPelanggan)
                    .AddWithValue("?kontak", obj.KontakPelanggan)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub PelangganUpdate(ByVal obj As Pelanggan)
            Try
                Dim StrSQL As String = "UPDATE tbl_Pelanggan SET " & _
                "nama_Pelanggan=?nama,alamat_Pelanggan=?alamat,kontak_Pelanggan=?kontak,id_member=?member " & _
                " WHERE id_Pelanggan=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IDPelanggan)
                    .AddWithValue("?nama", obj.NamaPelanggan)
                    .AddWithValue("?alamat", obj.AlamatPelanggan)
                    .AddWithValue("?kontak", obj.KontakPelanggan)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()




            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub PelangganDelete(ByVal id_Pelanggan As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Pelanggan WHERE id_Pelanggan='" & id_Pelanggan & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindPelangganById(ByVal Id As Integer) As List(Of Pelanggan)
            Dim Pelanggan As New List(Of Pelanggan)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Pelanggan WHERE id_Pelanggan = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Pelanggan()
                    x.IDPelanggan = CInt(rdr("id_Pelanggan"))
                    x.NamaPelanggan = rdr("nama_Pelanggan").ToString()
                    x.AlamatPelanggan = rdr("alamat_Pelanggan").ToString()
                    x.KontakPelanggan = rdr("kontak_Pelanggan").ToString()
                    x.IDMember = CInt(rdr("id_member"))
                    Pelanggan.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Pelanggan
        End Function

    End Class

End Namespace

