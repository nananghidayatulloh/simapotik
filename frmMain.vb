Imports System.Drawing.Drawing2D

Public Class frmMain
    Private Function GetRandomColor(ByVal r As Random) As Color
        If r Is Nothing Then
            r = New Random(DateTime.Now.Millisecond)
        End If
        Return Color.FromKnownColor(CType(r.[Next](1, 150), KnownColor))
    End Function
    Private Sub MainForm_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        'ToolStripStatusLabel2.Text = DateTime.Now.ToString("hh:mm:ss")
    End Sub

    Private Sub ribbonOrbOptionButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ribbonOrbOptionButton1.Click
        MyBase.Close()
    End Sub

    Private Sub ribbonButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim t = New Form()
        t.ShowDialog(Me)
    End Sub

    Private Sub ribbonButton5_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim t = New Form()
        t.Show(Me)
    End Sub

    Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        ribbon1.Minimized = True
    End Sub

    Private Sub RibbonButton3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton3.Click
        Dim fdr As New frmDokter
        fdr.MdiParent = Me
        fdr.ControlBox = False
        fdr.MinimizeBox = False
        fdr.MaximizeBox = False
        fdr.WindowState = FormWindowState.Maximized
        fdr.Show()
    End Sub

    Private Sub RibbonButton4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton4.Click
        Dim fpsn As New frmPasien
        fpsn.MdiParent = Me
        fpsn.ControlBox = False
        fpsn.MinimizeBox = False
        fpsn.MaximizeBox = False
        fpsn.WindowState = FormWindowState.Maximized
        fpsn.Show()
    End Sub

    Private Sub RibbonButton13_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton13.Click
        Dim fak As New frmPerkiraan
        fak.MdiParent = Me
        fak.ControlBox = False
        fak.MinimizeBox = False
        fak.MaximizeBox = False
        fak.WindowState = FormWindowState.Maximized
        fak.Show()
    End Sub

   
    Private Sub RibbonButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton1.Click
        Dim fpeng As New frmPengguna
        fpeng.MdiParent = Me
        fpeng.ControlBox = False
        fpeng.MinimizeBox = False
        fpeng.MaximizeBox = False
        fpeng.WindowState = FormWindowState.Maximized
        fpeng.Show()
    End Sub

   
    Private Sub RibbonButton2_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton2.Click
        Dim fpl As New frmPelanggan
        fpl.MdiParent = Me
        fpl.ControlBox = False
        fpl.MinimizeBox = False
        fpl.MaximizeBox = False
        fpl.WindowState = FormWindowState.Maximized
        fpl.Show()
    End Sub

    Private Sub RibbonButton5_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton5.Click
        Dim fsl As New frmSales
        fsl.MdiParent = Me
        fsl.ControlBox = False
        fsl.MinimizeBox = False
        fsl.MaximizeBox = False
        fsl.WindowState = FormWindowState.Maximized
        fsl.Show()
    End Sub

    Private Sub RibbonButton6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton6.Click
        Dim x As New frmSatuan
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton7.Click
        Dim x As New frmRak
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton8.Click
        Dim x As New frmGudang
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton9.Click
        Dim x As New frmProdusen
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton10.Click
        Dim x As New frmSupplier
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton11.Click
        Dim x As New frmJenisGolObat
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RibbonButton12.Click
        Dim x As New frmSubGolObat
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub RibbonButton16_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles RibbonButton16.Click
        Dim x As New frmJasa
        x.MdiParent = Me
        x.ControlBox = False
        x.MinimizeBox = False
        x.MaximizeBox = False
        x.WindowState = FormWindowState.Maximized
        x.Show()
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        ToolStripStatusLabel2.Text = DateTime.Now.ToString("dd MMM yyyy hh:mm:ss")
    End Sub
End Class