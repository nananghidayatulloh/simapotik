Module General
    Public Function rubahtgl(ByVal tgl As String)
        Return Replace(Replace(Replace(Replace(Replace(Replace(Replace(tgl, "Sunday", "Minggu"), "Monday", "Senin"), "Tuesday", "Selasa"), "Wednesday", "Rabu"), "Thursday", "Kamis"), "Friday", "Jumat"), "Saturday", "Sabtu")
    End Function
End Module
