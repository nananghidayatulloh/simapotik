Public Class frmPerkiraan
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim DokterBindSource As New BindingSource

   
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub ListViewDesign()
        ListView1.View = View.Details
        ListView1.GridLines = True
        ListView1.FullRowSelect = True

        'menambahkan header kolom
        ListView1.Columns.Add("Kode Perkiraan", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Nama Perkiraan", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Kelompok Akun", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Kelompok Laporan", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Kode Perusahaan", 200, HorizontalAlignment.Center)
    End Sub

    Private Sub FillListview()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tblPerkiraan")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("Kode_Perkiraan").ToString)
                    lSingleItem.SubItems.Add(.Item("Nama_Perkiraan").ToString)
                    lSingleItem.SubItems.Add(.Item("Kelompok_Akun").ToString)
                    lSingleItem.SubItems.Add(.Item("Kelompok_Laporan").ToString)
                    lSingleItem.SubItems.Add(.Item("Kode_Perusahaan").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

   

    Private Sub txtSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_dokter where nama_dokter like '" & txtSearch.Text & "%'")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_dokter").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_dokter").ToString)
                    lSingleItem.SubItems.Add(.Item("no_sip").ToString)
                    lSingleItem.SubItems.Add(.Item("alamat_dokter").ToString)
                    lSingleItem.SubItems.Add(.Item("kontak_dokter").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    'Private Sub ListView1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.Click
    '    Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
    '    MsgBox(ListView1.Items(x).SubItems(0).Text)
    'End Sub

    Private Sub ListView1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListView1.MouseUp
        If e.Button = MouseButtons.Right Then
            Me.ContextMenuStrip = ContextMenuStrip1

        End If
    End Sub

    Private Sub HapusToolStripMenuItem_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles HapusToolStripMenuItem.Click
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        'MsgBox(ListView1.Items(x).SubItems(0).Text)


        If MsgBox("Anda yakin ingin menghapus data " & ListView1.Items(x).SubItems(1).Text & "?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Try
                Dim dokter As New Dokter
                Dim AccessDokter As New AccessData.AccessDokter
                dokter.IDDokter = CInt(ListView1.Items(x).SubItems(0).Text)
                'AccessDokter.DokterDelete(dokter)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
        FillListview()
    End Sub

    Private Sub frmPerkiraan_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Escape Then Me.Close()
    End Sub

    Private Sub frmPerkiraan_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ListViewDesign()
        FillListview()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        frmInputAkun.ShowDialog()
    End Sub
End Class