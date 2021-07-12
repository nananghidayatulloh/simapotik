Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessPaket
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub PaketInsert(ByVal obj As Paket)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Paket " &
                "(nama_Paket, barcode_Paket,harga_netto,harga_non_resep,harga_resep,harga_bpjs,harga_khusus,created_by,created_date,edited_by,edited_date,id_member) " &
                " VALUES ( ?nama_Paket, ?barcode_Paket,?harga_netto,?harga_non_resep,?harga_resep,?harga_bpjs,?harga_khusus,?created_by,?created_date,?edited_by,?edited_date,?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama_Paket", obj.NamaPaket)
                    .AddWithValue("?barcode_Paket", obj.BarcodePaket)
                    .AddWithValue("?harga_netto", obj.HargaNetto)
                    .AddWithValue("?harga_non_resep", obj.HargaNonResep)
                    .AddWithValue("?harga_resep", obj.HargaResep)
                    .AddWithValue("?harga_bpjs", obj.HargaBPJS)
                    .AddWithValue("?harga_khusus", obj.HargaKhusus)
                    .AddWithValue("?created_by", obj.CreatedBy)
                    .AddWithValue("?created_date", obj.CreatedDate)
                    .AddWithValue("?edited_by", obj.ModifiedBy)
                    .AddWithValue("?edited_date", obj.ModifiedDate)
                    .AddWithValue("?member", obj.IdMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub PaketUpdate(ByVal obj As Paket)
            Try
                Dim StrSQL As String = "UPDATE tbl_Paket Set " &
                "nama_Paket=?nama_Paket, barcode_Paket =?barcode_Paket, harga_netto =?harga_netto, harga_non_resep =?harga_non_resep, harga_resep =?harga_resep, harga_bpjs =?harga_bpjs, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, id_member =?member " &
                " WHERE id_Paket=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdPaket)
                    .AddWithValue("?nama_Paket", obj.NamaPaket)
                    .AddWithValue("?barcode_Paket", obj.BarcodePaket)
                    .AddWithValue("?harga_netto", obj.HargaNetto)
                    .AddWithValue("?harga_non_resep", obj.HargaNonResep)
                    .AddWithValue("?harga_resep", obj.HargaResep)
                    .AddWithValue("?harga_bpjs", obj.HargaBPJS)
                    .AddWithValue("?harga_khusus", obj.HargaKhusus)
                    .AddWithValue("?created_by", obj.CreatedBy)
                    .AddWithValue("?created_date", obj.CreatedDate)
                    .AddWithValue("?edited_by", obj.ModifiedBy)
                    .AddWithValue("?edited_date", obj.ModifiedDate)
                    .AddWithValue("?member", obj.IdMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub PaketDelete(ByVal id_Paket As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Paket WHERE id_Paket='" & id_Paket & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindPaketById(ByVal Id As Integer) As List(Of Paket)
            Dim Paket As New List(Of Paket)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Paket WHERE id_Paket = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Paket()
                    x.IdPaket = CInt(rdr("id_Paket"))
                    x.NamaPaket = rdr("nama_Paket").ToString()
                    x.BarcodePaket = rdr("barcode_Paket").ToString()
                    x.HargaNetto = CDbl(rdr("harga_netto"))
                    x.HargaNonResep = CDbl(rdr("harga_non_resep"))
                    x.HargaResep = CDbl(rdr("harga_resep"))
                    x.HargaBPJS = CDbl(rdr("harga_bpjs"))
                    x.HargaKhusus = CDbl(rdr("harga_khusus"))
                    x.CreatedBy = rdr("created_by").ToString()
                    x.CreatedDate = rdr("created_date").ToString()
                    x.ModifiedBy = rdr("edited_by").ToString()
                    x.ModifiedDate = rdr("edited_date").ToString()
                    x.IdMember = CInt(rdr("id_member"))
                    Paket.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Paket
        End Function

    End Class

End Namespace

