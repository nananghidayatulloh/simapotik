Public Class frmLoadSales
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable

    Private Sub frmLoadSales_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FillDgSales()
    End Sub

    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub


    Public Sub FillDgSales()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select nama_sales from tbl_sales ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub dgw_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgw.DoubleClick
        frmTransaksiPenjualan.ComboBox4.Text = dgw.CurrentRow.Cells(0).Value.ToString
        Me.Close()
    End Sub
End Class