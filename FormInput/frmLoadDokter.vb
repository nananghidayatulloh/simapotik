Public Class frmLoadDokter
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable

    Private Sub frmLoadDokter_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FillDgDokter()
    End Sub

    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub


    Public Sub FillDgDokter()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select no_sip, nama_dokter from tbl_dokter ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub
End Class