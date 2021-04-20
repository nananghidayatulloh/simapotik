Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessSales
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub SalesInsert(ByVal obj As Sales)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Sales " & _
                " (nama_sales, alamat, no_telp, wilayah, area, sub_area, komisi, id_member) " & _
                " VALUES ( ?nama_sales, ?alamat, ?no_telp, ?wilayah, ?area, ?sub_area, ?komisi, ?id_member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama_sales", obj.Nama)
                    .AddWithValue("?alamat", obj.Alamat)
                    .AddWithValue("?no_telp", obj.Kontak)
                    .AddWithValue("?wilayah", obj.Wilayah)
                    .AddWithValue("?area", obj.Area)
                    .AddWithValue("?sub_area", obj.SubArea)
                    .AddWithValue("?komisi", obj.Komisi)
                    .AddWithValue("?id_member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub SalesUpdate(ByVal obj As Sales)
            Try
                Dim StrSQL As String = "UPDATE tbl_Sales SET " & _
                "nama_sales=?nama_sales, alamat=?alamat, no_telp=?no_telp, wilayah=?wilayah, area=?area, sub_area=?sub_area, komisi=?komisi, id_member=?id_member " & _
                " WHERE id_Sales=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IDSales)
                    .AddWithValue("?nama_sales", obj.Nama)
                    .AddWithValue("?alamat", obj.Alamat)
                    .AddWithValue("?no_telp", obj.Kontak)
                    .AddWithValue("?wilayah", obj.Wilayah)
                    .AddWithValue("?area", obj.Area)
                    .AddWithValue("?sub_area", obj.SubArea)
                    .AddWithValue("?komisi", obj.Komisi)
                    .AddWithValue("?id_member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub SalesDelete(ByVal id_Sales As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Sales WHERE id_Sales='" & id_Sales & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindSalesById(ByVal Id As Integer) As List(Of Sales)
            Dim Sales As New List(Of Sales)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Sales WHERE id_Sales = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim x As New Sales()
                    x.IDSales = CInt(rdr("id_Sales"))
                    x.Nama = rdr("nama_Sales").ToString()
                    x.Alamat = rdr("alamat").ToString()
                    x.Kontak = rdr("no_telp").ToString()
                    x.Wilayah = rdr("wilayah").ToString()
                    x.Area = rdr("area").ToString()
                    x.SubArea = rdr("sub_area").ToString()
                    x.Komisi = CDbl(rdr("komisi"))
                    x.IDMember = CInt(rdr("id_member"))
                    Sales.Add(x)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Sales
        End Function

    End Class

End Namespace

