Public Class frmPasien
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim DokterBindSource As New BindingSource

    Private Sub frmDokter_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles MyBase.KeyDown
        If e.KeyCode = Keys.Escape Then Me.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Public Sub ListViewDesign()
        ListView1.View = View.Details
        ListView1.GridLines = True
        ListView1.FullRowSelect = True

        'menambahkan header kolom
        ListView1.Columns.Add("", 0, HorizontalAlignment.Center)
        ListView1.Columns.Add("Nama Pasien", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("No BPJS", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Alamat", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Kontak", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Jenis Kelamin", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Tanggal Lahir", 200, HorizontalAlignment.Center)
    End Sub

    Public Sub FillListview()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pasien")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("no_bpjs").ToString)
                    lSingleItem.SubItems.Add(.Item("alamat_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("kontak_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("jenis_kelamin").ToString)
                    lSingleItem.SubItems.Add(.Item("tanggal_lahir").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub frmPasien_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ListViewDesign()
        FillListview()
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pasien where nama_pasien like '" & txtSearch.Text & "%'")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("no_bpjs").ToString)
                    lSingleItem.SubItems.Add(.Item("alamat_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("kontak_pasien").ToString)
                    lSingleItem.SubItems.Add(.Item("jenis_kelamin").ToString)
                    lSingleItem.SubItems.Add(.Item("tanggal_lahir").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        frmMstPasien.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstPasien.Opt = 2
        frmMstPasien.ShowDialog()
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


        If MsgBox("Anda yakin ingin menghapus data : " & ListView1.Items(x).SubItems(1).Text & "?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Try
                Dim pasien As New Pasien
                Dim AccessPasien As New AccessData.AccessPasien
                pasien.IdPasien = CInt(ListView1.Items(x).SubItems(0).Text)
                AccessPasien.PasienDelete(pasien.IdPasien)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
        FillListview()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        frmMstPasien.Opt = 1
        frmMstPasien.ShowDialog()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        If ListView1.SelectedItems.Count > 0 Then
            Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
            frmMstPasien.Data = CInt(ListView1.Items(x).SubItems(0).Text)
            frmMstPasien.Opt = 2
            frmMstPasien.ShowDialog()
        Else
            MsgBox("Silahkan pilih data yang akan diubah")
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        If ListView1.SelectedItems.Count > 0 Then
            Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
            'MsgBox(ListView1.Items(x).SubItems(0).Text)
            If MsgBox("Anda yakin ingin menghapus data :  " & ListView1.Items(x).SubItems(1).Text & "?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
                Try
                    Dim pasien As New Pasien
                    Dim AccessPasien As New AccessData.AccessPasien
                    pasien.IdPasien = CInt(ListView1.Items(x).SubItems(0).Text)
                    AccessPasien.PasienDelete(pasien.IdPasien)
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            FillListview()
        Else
            MsgBox("Silahkan pilih data yang akan dihapus")
        End If
    End Sub

    Private Sub EditToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles EditToolStripMenuItem.Click
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        frmMstPasien.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstPasien.Opt = 2
        frmMstPasien.ShowDialog()
    End Sub

    Private Sub RefreshDataToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshDataToolStripMenuItem.Click
        FillListview()

    End Sub
End Class