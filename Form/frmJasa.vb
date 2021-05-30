Public Class frmJasa
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim JasaBindSource As New BindingSource

    Private Sub frmJasa_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles MyBase.KeyDown
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
        ListView1.OwnerDraw = True

        'menambahkan header kolom
        ListView1.Columns.Add("", 0, HorizontalAlignment.Center)
        ListView1.Columns.Add("Nama Jasa", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Jenis Jasa", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Keterangan", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Harga Netto", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Harga Non Resep", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Harga Resep", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Harga BPJS", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Harga Khusus", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Created By", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Created Date", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Edit By", 200, HorizontalAlignment.Center)
        ListView1.Columns.Add("Edit Date", 200, HorizontalAlignment.Center)
    End Sub

    Public Sub FillListview()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_jasa")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("jenis_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("keterangan").ToString)
                    lSingleItem.SubItems.Add(Format(.Item("harga_netto"), "#,##0.00").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_non_resep").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_resep").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_bpjs").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_khusus").ToString)
                    lSingleItem.SubItems.Add(.Item("created_by").ToString)
                    lSingleItem.SubItems.Add(.Item("created_date").ToString)
                    lSingleItem.SubItems.Add(.Item("edited_by").ToString)
                    lSingleItem.SubItems.Add(.Item("edited_date").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        For i = 0 To ListView1.Items.Count - 2 Step 2
            ListView1.Items(i + 1).BackColor = Drawing.Color.Azure
        Next i
    End Sub

    Private Sub frmJasa_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ListViewDesign()
        FillListview()
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_Jasa where nama_Jasa Like '" & txtSearch.Text & "%'")
                    objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("jenis_jasa").ToString)
                    lSingleItem.SubItems.Add(.Item("keterangan").ToString)
                    lSingleItem.SubItems.Add(Format(.Item("harga_netto"), "#,##0.00").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_non_resep").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_resep").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_bpjs").ToString)
                    lSingleItem.SubItems.Add(.Item("harga_khusus").ToString)
                    lSingleItem.SubItems.Add(.Item("created_by").ToString)
                    lSingleItem.SubItems.Add(.Item("created_date").ToString)
                    lSingleItem.SubItems.Add(.Item("edited_by").ToString)
                    lSingleItem.SubItems.Add(.Item("edited_date").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        frmMstJasa.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstJasa.Opt = 2
        frmMstJasa.ShowDialog()
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
                Dim Jasa As New Jasa
                Dim AccessJasa As New AccessData.AccessJasa
                Jasa.IdJasa = CInt(ListView1.Items(x).SubItems(0).Text)
                AccessJasa.JasaDelete(Jasa.IdJasa)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
        FillListview()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        frmMstJasa.Opt = 1
        frmMstJasa.ShowDialog()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        If ListView1.SelectedItems.Count > 0 Then
            Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
            frmMstJasa.Data = CInt(ListView1.Items(x).SubItems(0).Text)
            frmMstJasa.Opt = 2
            frmMstJasa.ShowDialog()
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
                    Dim Jasa As New Jasa
                    Dim AccessJasa As New AccessData.AccessJasa
                    Jasa.IdJasa = CInt(ListView1.Items(x).SubItems(0).Text)
                    AccessJasa.JasaDelete(Jasa.IdJasa)
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
        frmMstJasa.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstJasa.Opt = 2
        frmMstJasa.ShowDialog()
    End Sub

    Private Sub RefreshDataToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshDataToolStripMenuItem.Click
        FillListview()

    End Sub
    Private Sub ListView1_DrawColumnHeader(ByVal sender As Object, ByVal e As DrawListViewColumnHeaderEventArgs) Handles ListView1.DrawColumnHeader
        Using lgb As New Drawing2D.LinearGradientBrush(Point.Empty, New Point(0, e.Bounds.Height), Color.Gainsboro, Color.Blue)
            e.Graphics.FillRectangle(lgb, e.Bounds)
        End Using

        Using strFormat As New StringFormat With {.LineAlignment = StringAlignment.Center}
            If e.Header.TextAlign = HorizontalAlignment.Center Then
                strFormat.Alignment = StringAlignment.Center
            ElseIf e.Header.TextAlign = HorizontalAlignment.Right Then
                strFormat.Alignment = StringAlignment.Far
            End If

            Using headerFont As New Font("Arial", 8, FontStyle.Bold)
                e.Graphics.DrawString(e.Header.Text, headerFont, Brushes.White, e.Bounds, strFormat)
            End Using
        End Using
    End Sub

    Private Sub ListView1_DrawItem(ByVal sender As Object, ByVal e As System.Windows.Forms.DrawListViewItemEventArgs) Handles ListView1.DrawItem
        e.DrawBackground()
        e.DrawDefault = True
    End Sub

    Private Sub ListView1_DrawSubItem(ByVal sender As Object, ByVal e As DrawListViewSubItemEventArgs) Handles ListView1.DrawSubItem
        e.DrawBackground()
        e.DrawDefault = True
    End Sub

End Class