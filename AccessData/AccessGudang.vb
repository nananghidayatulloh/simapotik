Imports MySql.Data.MySqlClient
Namespace AccessData

    Public Class AccessGudang
        Private myconnection As New AccessData.DataBaseConnection

        Public Sub GudangInsert(ByVal obj As Gudang)

            Try
                Dim StrSQL As String = "INSERT INTO tbl_Gudang " & _
                " (nama_Gudang, id_member) " & _
                " VALUES ( ?nama,  ?member)"
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text
                With myCommand.Parameters
                    .AddWithValue("?nama", obj.NamaGudang)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()
            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try

        End Sub


        Public Sub GudangUpdate(ByVal obj As Gudang)
            Try
                Dim StrSQL As String = "UPDATE tbl_Gudang SET " & _
                "nama_Gudang=?nama, id_member=?member " & _
                " WHERE id_Gudang=?id "
                Dim myCommand As MySqlCommand = New MySqlCommand(StrSQL, myconnection.open)
                myCommand.CommandType = CommandType.Text

                With myCommand.Parameters
                    .AddWithValue("?id", obj.IdGudang)
                    .AddWithValue("?nama", obj.NamaGudang)
                    .AddWithValue("?member", obj.IDMember)
                End With
                myCommand.ExecuteNonQuery()


            Catch SqlEx As MySqlException
                Throw New Exception(SqlEx.Message.ToString())
            End Try
        End Sub


        Public Sub GudangDelete(ByVal id_Gudang As Integer)
            Dim myCommand As MySqlCommand = New MySqlCommand("DELETE FROM tbl_Gudang WHERE id_Gudang='" & id_Gudang & "'", myconnection.open)
            Try
                myCommand.ExecuteNonQuery()

            Catch ex As Exception
                MsgBox("Ada Kesalahan : " & ex.Message, MsgBoxStyle.Critical, "Terjadi error tak terduga")
            End Try
        End Sub

        Public Function FindGudangById(ByVal Id As Integer) As List(Of Gudang)
            Dim Gudang As New List(Of Gudang)()
            Try
                Dim StrSQL As String = "SELECT * FROM tbl_Gudang WHERE id_Gudang = '" & Id & "'"
                Dim myCommand As New MySqlCommand(StrSQL, myconnection.open)
                Dim rdr As MySqlDataReader = myCommand.ExecuteReader
                While rdr.Read()
                    Dim dok As New Gudang()
                    dok.IdGudang = CInt(rdr("id_Gudang"))
                    dok.NamaGudang = rdr("nama_Gudang").ToString()
                    dok.IDMember = CInt(rdr("id_member"))
                    Gudang.Add(dok)
                End While
            Catch sqlex As MySqlException
                Throw New Exception(sqlex.Message.ToString())
            End Try
            Return Gudang
        End Function

    End Class

End Namespace

