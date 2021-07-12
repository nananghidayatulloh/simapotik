Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessObat
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub ObatInsert(ByVal obj As Obat)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_obat " &
                "nama_obat, kode_obat, barcode_obat, id_jenis_obat, id_golongan, id_sub_golongan, id_merk, tipe, indikasi, post_image, deskripsi, komposisi, dosis, stok_total, stok_min, stok_max, id_member, created_by, created_date, edited_by, edited_date, platform) " &
                " VALUES (?nama_obat, ?kode_obat, ?barcode_obat, ?id_jenis_obat, ?id_golongan, ?id_sub_golongan, ?id_merk, ?tipe, ?indikasi, ?post_image, ?deskripsi, ?komposisi, ?dosis, ?stok_total, ?stok_min, ?stok_max, ?id_member, ?created_by, ?created_date, ?edited_by, ?edited_date, ?platform)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama_obat", obj.NamaObat)
                    .AddWithValue("?kode_obat", obj.Kode_obat)
                    .AddWithValue("?barcode_obat", obj.Barcode_obat)
                    .AddWithValue("?id_jenis_obat", obj.Id_jenis_obat)
                    .AddWithValue("?id_golongan", obj.Id_golongan)
                    .AddWithValue("?id_sub_golongan", obj.Id_sub_golongan)
                    .AddWithValue("?id_merk", obj.Id_merk)
                    .AddWithValue("?tipe", obj.Tipe)
                    .AddWithValue("?indikasi", obj.Indikasi)
                    .AddWithValue("?post_image", obj.Post_image)
                    .AddWithValue("?deskripsi", obj.Deskripsi)
                    .AddWithValue("?komposisi", obj.Komposisi)
                    .AddWithValue("?dosis", obj.Dosis)
                    .AddWithValue("?stok_total", obj.Stok_total)
                    .AddWithValue("?stok_min", obj.Stok_min)
                    .AddWithValue("?stok_max", obj.Stok_max)
                    .AddWithValue("?created_by", obj.CreatedBy)
                    .AddWithValue("?created_date", obj.CreatedDate)
                    .AddWithValue("?edited_by", obj.ModifiedBy)
                    .AddWithValue("?edited_date", obj.ModifiedDate)
                    .AddWithValue("?id_member", obj.IdMember)
                    .AddWithValue("?platform", obj.Platform)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub ObatUpdate(ByVal obj As Obat)
            Try
                Dim StrSQL As String = "UPDATE tbl_obat Set " &
                "nama_obat = ?nama_obat, kode_obat=?kode_obat, barcode_obat=?barcode_obat, id_jenis_obat=?id_jenis_obat, id_golongan=?id_golongan, id_sub_golongan=?id_sub_golongan, id_merk=?id_merk, tipe=?tipe, indikasi=?indikasi, post_image=?post_image, deskripsi=?deskripsi, komposisi=?komposisi, dosis=?dosis, stok_total=?stok_total, stok_min=?stok_min, stok_max=?stok_max, id_member=?id_member, created_by=?created_by, created_date=?created_date, edited_by=?edited_by, edited_date=?edited_date, platform=?platform" &
                " WHERE id_obat=?id_obat "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id_obat", obj.IdObat)
                    .AddWithValue("?nama_obat", obj.NamaObat)
                    .AddWithValue("?kode_obat", obj.Kode_obat)
                    .AddWithValue("?barcode_obat", obj.Barcode_obat)
                    .AddWithValue("?id_jenis_obat", obj.Id_jenis_obat)
                    .AddWithValue("?id_golongan", obj.Id_golongan)
                    .AddWithValue("?id_sub_golongan", obj.Id_sub_golongan)
                    .AddWithValue("?id_merk", obj.Id_merk)
                    .AddWithValue("?tipe", obj.Tipe)
                    .AddWithValue("?indikasi", obj.Indikasi)
                    .AddWithValue("?post_image", obj.Post_image)
                    .AddWithValue("?deskripsi", obj.Deskripsi)
                    .AddWithValue("?komposisi", obj.Komposisi)
                    .AddWithValue("?dosis", obj.Dosis)
                    .AddWithValue("?stok_total", obj.Stok_total)
                    .AddWithValue("?stok_min", obj.Stok_min)
                    .AddWithValue("?stok_max", obj.Stok_max)
                    .AddWithValue("?created_by", obj.CreatedBy)
                    .AddWithValue("?created_date", obj.CreatedDate)
                    .AddWithValue("?edited_by", obj.ModifiedBy)
                    .AddWithValue("?edited_date", obj.ModifiedDate)
                    .AddWithValue("?id_member", obj.IdMember)
                    .AddWithValue("?platform", obj.Platform)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub ObatDelete(ByVal id_obat As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_obat WHERE id_obat='" & id_obat & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindObatById(ByVal Id As Integer) As List(Of Obat)
            Dim Obat As New List(Of Obat)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_obat WHERE id_obat = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Obat()

                    x.IdObat = CInt(rdr("id_obat"))
                    x.NamaObat = rdr("nama_obat").ToString()
                    x.Kode_obat = rdr("kode_obat").ToString()
                    x.Barcode_obat = rdr("barcode_obat").ToString()
                    x.Id_jenis_obat = CInt(rdr("id_jenis_obat"))
                    x.Id_golongan = CInt(rdr("id_golongan"))
                    x.Id_sub_golongan = CInt(rdr("id_sub_golongan"))
                    x.Id_merk = CInt(rdr("id_merk"))
                    x.Tipe = rdr("tipe").ToString()
                    x.Indikasi = rdr("indikasi").ToString()
                    x.Post_image = rdr("post_image").ToString()
                    x.Deskripsi = rdr("deskripsi").ToString()
                    x.Komposisi = rdr("komposisi").ToString()
                    x.Dosis = rdr("dosis").ToString()
                    x.Stok_total = CInt(rdr("stok_total"))
                    x.Stok_min = CInt(rdr("stok_min"))
                    x.Stok_max = CInt(rdr("stok_max"))
                    x.IdMember = CInt(rdr("id_member"))
                    x.CreatedBy = rdr("created_by").ToString()
                    x.CreatedDate = rdr("created_date").ToString()
                    x.ModifiedBy = rdr("edited_by").ToString()
                    x.ModifiedDate = rdr("edited_date").ToString()
                    x.Platform = rdr("platform").ToString()
                    'x.Gambar = rdr("Gambar")

                    Obat.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Obat
        End Function

    End Class

End Namespace

