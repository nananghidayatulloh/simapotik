Public Class frmLoadPelanggan
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable

    Private Sub frmLoadPelanggan_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FillDgPelanggan()
    End Sub

    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub


    Public Sub FillDgPelanggan()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select nama_pelanggan from tbl_pelanggan ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub dgw_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgw.DoubleClick
        frmTransaksiPenjualan.ComboBox1.Text = dgw.CurrentRow.Cells(0).Value.ToString
        Me.Close()
    End Sub
End Class