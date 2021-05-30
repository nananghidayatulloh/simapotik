Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessJasa
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub JasaInsert(ByVal obj As Jasa)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_jasa " &
                "(nama_jasa, jenis_jasa,keterangan,harga_netto,harga_non_resep,harga_resep,harga_bpjs,harga_khusus,created_by,created_date,edited_by,edited_date,id_member) " &
                " VALUES ( ?nama_jasa, ?jenis_jasa,?keterangan,?harga_netto,?harga_non_resep,?harga_resep,?harga_bpjs,?harga_khusus,?created_by,?created_date,?edited_by,?edited_date,?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama_jasa", obj.NamaJasa)
                    .AddWithValue("?jenis_jasa", obj.JenisJasa)
                    .AddWithValue("?keterangan", obj.Keterangan)
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


        Public Sub JasaUpdate(ByVal obj As Jasa)
            Try
                Dim StrSQL As String = "UPDATE tbl_jasa Set " &
                "nama_jasa=?nama_jasa, jenis_jasa =?jenis_jasa, keterangan =?keterangan, harga_netto =?harga_netto, harga_non_resep =?harga_non_resep, harga_resep =?harga_resep, harga_bpjs =?harga_bpjs, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, harga_netto =?harga_netto, id_member =?member " &
                " WHERE id_Jasa=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdJasa)
                    .AddWithValue("?nama_jasa", obj.NamaJasa)
                    .AddWithValue("?jenis_jasa", obj.JenisJasa)
                    .AddWithValue("?keterangan", obj.Keterangan)
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


        Public Sub JasaDelete(ByVal id_Jasa As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_jasa WHERE id_Jasa='" & id_Jasa & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindJasaById(ByVal Id As Integer) As List(Of Jasa)
            Dim Jasa As New List(Of Jasa)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_jasa WHERE id_Jasa = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Jasa()
                    x.IdJasa = CInt(rdr("id_Jasa"))
                    x.NamaJasa = rdr("nama_Jasa").ToString()
                    x.JenisJasa = rdr("jenis_Jasa").ToString()
                    x.Keterangan = rdr("keterangan").ToString()
                    x.HargaNetto = CDbl(rdr("harga_netto"))
                    x.HargaNonResep = CDbl(rdr("harga_non_resep"))
                    x.HargaResep = CDbl(rdr("harga_resep"))
                    x.HargaBPJS = CDbl(rdr("harga_bpjs"))
                    x.HargaKhusus = CDbl(rdr("harga_khusus"))
                    x.CreatedBy = rdr("nama_Jasa").ToString()
                    x.CreatedDate = rdr("nama_Jasa").ToString()
                    x.ModifiedBy = rdr("nama_Jasa").ToString()
                    x.ModifiedDate = rdr("nama_Jasa").ToString()
                    x.IdMember = CInt(rdr("id_member"))
                    Jasa.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Jasa
        End Function

    End Class

End Namespace

