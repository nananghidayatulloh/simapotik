
Imports MySql.Data.MySqlClient
Namespace AccessData
    Public Class DataControl
        Private myconnection As New AccessData.DataBaseConnection
        Public Function GetDataSet(ByVal SQL As String) As DataSet
            Dim adapter As New MySqlDataAdapter(SQL, myconnection.open)
            Dim myData As New DataSet
            adapter.Fill(myData, "Data")
            Return myData
        End Function
    End Class
End Namespace

