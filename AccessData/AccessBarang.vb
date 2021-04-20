Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessBarang
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub BarangObatInsert(ByVal obj As BarangObat)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_BarangObat " & _
                " (nama_BarangObat, alamat, no_telp, wilayah, area, sub_area, komisi, id_member) " & _
                " VALUES ( ?nama_BarangObat, ?alamat, ?no_telp, ?wilayah, ?area, ?sub_area, ?komisi, ?id_member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                   
                    .AddWithValue("?id_member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub BarangObatUpdate(ByVal obj As BarangObat)
            Try
                Dim StrSQL As String = "UPDATE tbl_BarangObat SET " & _
                "nama_BarangObat=?nama_BarangObat, alamat=?alamat, no_telp=?no_telp, wilayah=?wilayah, area=?area, sub_area=?sub_area, komisi=?komisi, id_member=?id_member " & _
                " WHERE id_BarangObat=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                  
                    .AddWithValue("?id_member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub BarangObatDelete(ByVal id_BarangObat As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_BarangObat WHERE id_BarangObat='" & id_BarangObat & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindBarangObatById(ByVal Id As Integer) As List(Of BarangObat)
            Dim BarangObat As New List(Of BarangObat)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_BarangObat WHERE id_BarangObat = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New BarangObat()
                
                    x.IDMember = CInt(rdr("id_member"))
                    BarangObat.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return BarangObat
        End Function

    End Class

End Namespace

