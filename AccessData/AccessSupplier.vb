Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessSupplier
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub SupplierInsert(ByVal obj As Supplier)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Supplier " & _
                " (nama_Supplier, no_telp, alamat, no_ijin_Supplier, penanggung_jawab, id_member) " & _
                " VALUES ( ?nama_Supplier, ?no_telp, ?alamat, ?no_ijin_Supplier, ?penanggung_jawab, ?id_member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama_Supplier", obj.NamaSupplier)
                    .AddWithValue("?no_telp", obj.Telp)
                    .AddWithValue("?alamat", obj.Alamat)
                    .AddWithValue("?no_ijin_Supplier", obj.NoIjin)
                    .AddWithValue("?penanggung_jawab", obj.PenanggungJawab)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub SupplierUpdate(ByVal obj As Supplier)
            Try
                Dim StrSQL As String = "UPDATE tbl_Supplier SET " & _
                "nama_Supplier=?nama,no_telp=?no_telp,alamat=?alamat,no_ijin_Supplier=?no_ijin_Supplier,penanggung_jawab=?penanggung_jawab, id_member=?member " & _
                " WHERE id_Supplier=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdSupplier)
                    .AddWithValue("?nama_Supplier", obj.NamaSupplier)
                    .AddWithValue("?no_telp", obj.Telp)
                    .AddWithValue("?alamat", obj.Alamat)
                    .AddWithValue("?no_ijin_Supplier", obj.NoIjin)
                    .AddWithValue("?penanggung_jawab", obj.PenanggungJawab)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub SupplierDelete(ByVal id_Supplier As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Supplier WHERE id_Supplier='" & id_Supplier & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindSupplierById(ByVal Id As Integer) As List(Of Supplier)
            Dim Supplier As New List(Of Supplier)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Supplier WHERE id_Supplier = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Supplier()
                    x.IdSupplier = CInt(rdr("id_Supplier"))
                    x.NamaSupplier = rdr("nama_Supplier").ToString()
                    x.Alamat = rdr("alamat_Supplier").ToString()
                    x.Telp = rdr("no_sip").ToString()
                    x.NoIjin = rdr("kontak_Supplier").ToString()
                    x.PenanggungJawab = rdr("kontak_Supplier").ToString()
                    x.IDMember = CInt(rdr("id_member"))
                    Supplier.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Supplier
        End Function

    End Class

End Namespace

