﻿Public Class frmPelanggan
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim DokterBindSource As New BindingSource



    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Public Sub ListViewDesignPelanggan()
        ListView1.View = View.Details
        ListView1.GridLines = True
        ListView1.FullRowSelect = True
        ListView1.OwnerDraw = True

        'menambahkan header kolom
        ListView1.Columns.Add("", 0, HorizontalAlignment.Center)
        ListView1.Columns.Add("Nama Pelanggan", 300, HorizontalAlignment.Center)
        ListView1.Columns.Add("Alamat", 400, HorizontalAlignment.Center)
        ListView1.Columns.Add("Kontak", 300, HorizontalAlignment.Center)
    End Sub

    Public Sub FillListviewPelanggan()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pelanggan")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                    lSingleItem = ListView1.Items.Add(.Item("id_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("alamat_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("kontak_pelanggan").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        For i = 0 To ListView1.Items.Count - 2 Step 2
            ListView1.Items(i + 1).BackColor = Drawing.Color.Azure
        Next i

    End Sub

    Private Sub frmPelanggan_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Escape Then Me.Close()
    End Sub

 

    Private Sub txtSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pelanggan where nama_pelanggan like '" & txtSearch.Text & "%'")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            ListView1.Items.Clear()
            For i = 0 To (objDataTable.Rows.Count - 1)
                With objDataTable.Rows(i)
                    Dim lSingleItem As ListViewItem
                   lSingleItem = ListView1.Items.Add(.Item("id_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("nama_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("alamat_pelanggan").ToString)
                    lSingleItem.SubItems.Add(.Item("kontak_pelanggan").ToString)
                End With
            Next i
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        frmMstPelanggan.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstPelanggan.Opt = 2
        frmMstPelanggan.ShowDialog()
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
                Dim pelanggan As New Pelanggan
                Dim AccessPelanggan As New AccessData.AccessPelanggan
                pelanggan.IDPelanggan = CInt(ListView1.Items(x).SubItems(0).Text)
                AccessPelanggan.PelangganDelete(pelanggan.IDPelanggan)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If
        FillListviewPelanggan()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        frmMstPelanggan.Opt = 1
        frmMstPelanggan.ShowDialog()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        If ListView1.SelectedItems.Count > 0 Then
            Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
            frmMstPelanggan.Data = CInt(ListView1.Items(x).SubItems(0).Text)
            frmMstPelanggan.Opt = 2
            frmMstPelanggan.ShowDialog()
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
                    Dim pelanggan As New Pelanggan
                    Dim AccessPelanggan As New AccessData.AccessPelanggan
                    pelanggan.IDPelanggan = CInt(ListView1.Items(x).SubItems(0).Text)
                    AccessPelanggan.PelangganDelete(pelanggan.IDPelanggan)
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            FillListviewPelanggan()
        Else
            MsgBox("Silahkan pilih data yang akan dihapus")
        End If
    End Sub

    Private Sub EditToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles EditToolStripMenuItem.Click
        Dim x As Integer = CInt(ListView1.SelectedItems(0).Index)
        frmMstPelanggan.Data = CInt(ListView1.Items(x).SubItems(0).Text)
        frmMstPelanggan.Opt = 2
        frmMstPelanggan.ShowDialog()
    End Sub

    Private Sub RefreshDataToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshDataToolStripMenuItem.Click
        FillListviewPelanggan()

    End Sub

    Private Sub frmPelanggan_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ListViewDesignPelanggan()
        FillListviewPelanggan()
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