Public Class frmMstJasa
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim JasaBindSource As New BindingSource
    Dim f, g As Double

    Public Property Opt() As Integer
        Get
            Return mOpt
        End Get
        Set(ByVal value As Integer)
            mOpt = value
        End Set
    End Property

    Public Property Data() As Integer
        Get
            Return mData
        End Get
        Set(ByVal value As Integer)
            mData = value
        End Set
    End Property

    ''' <summary>
    ''' Mengisi Combo Box pertama (provinsi)
    ''' </summary>
    Private Sub FillCombo()
        ComboBox1.Items.Clear()
        ComboBox1.Items.Add("Racikan")
        ComboBox1.Items.Add("Dokter")
        ComboBox1.Items.Add("Konsultasi")
        ComboBox1.Items.Add("Lainnya")
    End Sub

   

    Private Sub frmMstJasa_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)

    End Sub


    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Jasa"
            TextBox1.ReadOnly = True
            fillData(data)
            FillCombo()
        ElseIf opt = 1 Then
            Me.Text = "Input Data Jasa"
            FillCombo()
            clearText()
        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessJasa As New AccessData.AccessJasa
            Dim Jasa As New Jasa
            Dim list As List(Of Jasa) = AccessJasa.FindJasaById(id)
            For Each obj As Jasa In list
                TextBox1.Text = obj.IdJasa.ToString
                TextBox2.Text = obj.NamaJasa
                TextBox4.Text = obj.Keterangan
                TextBox5.Text = Format(Val(obj.HargaNetto), "###,###")
                TextBox6.Text = Format(Val(obj.HargaNonResep), "###,###")
                TextBox3.Text = Format(Val(obj.HargaResep), "###,###")
                TextBox7.Text = Format(Val(obj.HargaBPJS), "###,###")
                TextBox8.Text = Format(Val(obj.HargaKhusus), "###,###")
                ComboBox1.Text = obj.JenisJasa
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveJasa()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        ComboBox1.Text = ""

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub saveJasa()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim x As New Jasa
        Dim AccessJasa As New AccessData.AccessJasa
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try
                    x.NamaJasa = TextBox2.Text
                    x.JenisJasa = ComboBox1.Text
                    x.Keterangan = TextBox4.Text
                    x.HargaNetto = CDbl(TextBox5.Text)
                    x.HargaNonResep = CDbl(TextBox6.Text)
                    x.HargaResep = CDbl(TextBox3.Text)
                    x.HargaBPJS = CDbl(TextBox7.Text)
                    x.HargaKhusus = CInt(TextBox8.Text)
                    x.CreatedBy = frmMain.ToolStripStatusLabel1.Text
                    x.CreatedDate = System.DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
                    x.ModifiedBy = frmMain.ToolStripStatusLabel1.Text
                    x.ModifiedDate = System.DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
                    x.IdMember = 8
                    AccessJasa.JasaInsert(x)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    x.IdJasa = CInt(TextBox1.Text)
                    x.NamaJasa = TextBox2.Text
                    x.JenisJasa = ComboBox1.Text
                    x.Keterangan = TextBox4.Text
                    x.HargaNetto = CDbl(TextBox5.Text)
                    x.HargaNonResep = CDbl(TextBox6.Text)
                    x.HargaResep = CDbl(TextBox3.Text)
                    x.HargaBPJS = CDbl(TextBox7.Text)
                    x.HargaKhusus = CInt(TextBox8.Text)
                    x.CreatedBy = frmMain.ToolStripStatusLabel1.Text
                    x.CreatedDate = System.DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
                    x.ModifiedBy = frmMain.ToolStripStatusLabel1.Text
                    x.ModifiedDate = System.DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss")
                    x.IdMember = 8
                    AccessJasa.JasaUpdate(x)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub

    Private Sub TextBox5_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox5.KeyPress
        If Not ((e.KeyChar >= "0" And e.KeyChar <= "9") Or e.KeyChar = vbBack) Then e.Handled = True

    End Sub

    Private Sub TextBox5_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox5.TextChanged
        If TextBox5.Text = "" Or Not IsNumeric(TextBox5.Text) Then
            Exit Sub
        End If
        f = TextBox5.Text
        TextBox5.Text = Format(Val(f), "###,###")
        TextBox5.SelectionStart = Len(TextBox5.Text)
    End Sub

    Private Sub TextBox6_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox6.KeyPress
        If Not ((e.KeyChar >= "0" And e.KeyChar <= "9") Or e.KeyChar = vbBack) Then e.Handled = True

    End Sub

    Private Sub TextBox3_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox3.KeyPress
        If Not ((e.KeyChar >= "0" And e.KeyChar <= "9") Or e.KeyChar = vbBack) Then e.Handled = True

    End Sub

    Private Sub TextBox7_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox7.KeyPress
        If Not ((e.KeyChar >= "0" And e.KeyChar <= "9") Or e.KeyChar = vbBack) Then e.Handled = True

    End Sub

    Private Sub TextBox8_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox8.KeyPress
        If Not ((e.KeyChar >= "0" And e.KeyChar <= "9") Or e.KeyChar = vbBack) Then e.Handled = True

    End Sub

    Private Sub TextBox6_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox6.TextChanged
        If TextBox6.Text = "" Or Not IsNumeric(TextBox6.Text) Then
            Exit Sub
        End If
        f = TextBox6.Text
        TextBox6.Text = Format(Val(f), "###,###")
        TextBox6.SelectionStart = Len(TextBox6.Text)
    End Sub

    Private Sub TextBox3_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox3.TextChanged
        If TextBox3.Text = "" Or Not IsNumeric(TextBox3.Text) Then
            Exit Sub
        End If
        f = TextBox3.Text
        TextBox3.Text = Format(Val(f), "###,###")
        TextBox3.SelectionStart = Len(TextBox3.Text)
    End Sub

    Private Sub TextBox7_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox7.TextChanged
        If TextBox7.Text = "" Or Not IsNumeric(TextBox7.Text) Then
            Exit Sub
        End If
        f = TextBox7.Text
        TextBox7.Text = Format(Val(f), "###,###")
        TextBox7.SelectionStart = Len(TextBox7.Text)
    End Sub

    Private Sub TextBox8_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox8.TextChanged
        If TextBox8.Text = "" Or Not IsNumeric(TextBox8.Text) Then
            Exit Sub
        End If
        f = TextBox8.Text
        TextBox8.Text = Format(Val(f), "###,###")
        TextBox8.SelectionStart = Len(TextBox8.Text)
    End Sub
End Class