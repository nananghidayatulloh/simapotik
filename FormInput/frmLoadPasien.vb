Public Class frmLoadPasien
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable


    Private Sub frmLoadPasien_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FillDgPasien()
    End Sub


    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub


    Public Sub FillDgPasien()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select no_bpjs, nama_pasien from tbl_pasien ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub
End Class