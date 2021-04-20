Public Class Datum
    Public Property id As Integer
    Public Property email As String
    Public Property first_name As String
    Public Property last_name As String
    Public Property avatar As String
End Class

Public Class Support
    Public Property url As String
    Public Property text As String
End Class

Public Class name
    Public Property page As Integer
    Public Property per_page As Integer
    Public Property total As Integer
    Public Property total_pages As Integer
    Public Property data As Datum()
    Public Property support As Support
End Class
