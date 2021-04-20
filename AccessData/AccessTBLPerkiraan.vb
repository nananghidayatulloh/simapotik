Imports MySql.Data.MySqlClient
Namespace AccessData
    Public Class AccessTBLPerkiraan
        Private myconnection As New AccessData.DataBaseConnection
        Public Function DokterInsert(ByVal Dokter As Dokter) As MySqlDataReader
            Try
                Dim StrSQL As String = "INSERT INTO tbl_dokter " & _
                " (nama_dokter,no_sip,alamat_dokter,kontak_dokter) " & _
                " VALUES (@nama_dokter,@no_sip,@alamat_dokter,@kontak_dokter);"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                Dim parameterNamaDokter As MySqlParameter = New MySqlParameter("@nama_dokter", MySqlDbType.VarChar, 100)
                Dim parameterNiSip As MySqlParameter = New MySqlParameter("@no_sip", MySqlDbType.VarChar, 100)
                Dim parameterAlamatDokter As MySqlParameter = New MySqlParameter("@alamat_dokter", MySqlDbType.VarChar, 200)
                Dim parameterKontakDokter As MySqlParameter = New MySqlParameter("@kontak_dokter", MySqlDbType.VarChar, 100)

                parameterNamaDokter.Value = Dokter.NamaDokter
                parameterAlamatDokter.Value = Dokter.AlamatDokter
                parameterNiSip.Value = Dokter.Sip
                parameterKontakDokter.Value = Dokter.KontakDokter

                With myCommand.Parameters
                    .Add(parameterNamaDokter)
                    .Add(parameterNiSip)
                    .Add(parameterAlamatDokter)
                    .Add(parameterKontakDokter)
                End With
                Dim result As MySqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
                Return result
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Function


        Public Function DokterUpdate(ByVal Dokter As Dokter) As MySqlDataReader
            Try
                Dim StrSQL As String = "Update tbl_dokter set " & _
                "nama_dokter=@nama_dokter,no_sip=@no_sip,alamat_dokter=@alamat_dokter,kontak_dokter=@kontak_dokter " & _
                " where id_dokter=@id_dokter "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                Dim parameterID As MySqlParameter = New MySqlParameter("@id_dokter", MySqlDbType.Int32, 11)
                Dim parameterNamaDokter As MySqlParameter = New MySqlParameter("@nama_dokter", MySqlDbType.VarChar, 100)
                Dim parameterNiSip As MySqlParameter = New MySqlParameter("@no_sip", MySqlDbType.VarChar, 100)
                Dim parameterAlamatDokter As MySqlParameter = New MySqlParameter("@alamat_dokter", MySqlDbType.VarChar, 200)
                Dim parameterKontakDokter As MySqlParameter = New MySqlParameter("@kontak_dokter", MySqlDbType.VarChar, 100)


                parameterID.Value = Dokter.IDDokter
                parameterNamaDokter.Value = Dokter.NamaDokter
                parameterNiSip.Value = Dokter.Sip
                parameterAlamatDokter.Value = Dokter.AlamatDokter
                parameterKontakDokter.Value = Dokter.KontakDokter

                With myCommand.Parameters
                    .Add(parameterNamaDokter)
                    .Add(parameterNiSip)
                    .Add(parameterAlamatDokter)
                    .Add(parameterKontakDokter)
                    .Add(parameterID)
                End With
                Dim result As MySqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
                Return result
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Function


        Public Function DokterDelete(ByVal Dokter As Dokter) As MySqlDataReader
            Try
                Dim parameterID As MySqlParameter = New MySqlParameter("@parameter1", MySqlDbType.Int64, 11)
                Dim tes As Integer = Dokter.IDDokter
                parameterID.Value = tes
                'MsgBox(parameterID.Value.ToString)
                Dim StrSQL As String = "Delete From tbl_dokter Where id_dokter = " & tes
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                myCommand.Parameters.Add(parameterID)
                Dim result As MySqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
                Return result
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Function
    End Class

End Namespace
