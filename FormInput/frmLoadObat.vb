Public Class frmLoadObat
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Private Sub frmLoadObat_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        Me.Close()
    End Sub

    Private Sub frmLoadObat_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        load_Kriteria()
        FillDgObat()
    End Sub

    Private Sub load_Kriteria()
        ComboBox1.DataSource = Nothing
        ComboBox1.Items.Clear()
        With ComboBox1
            .Items.Add("Nama")
            .Items.Add("Barcode")
        End With
    End Sub

    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub


    Public Sub FillDgObat()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select barcode_obat, nama_obat from tbl_obat ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub
End Class