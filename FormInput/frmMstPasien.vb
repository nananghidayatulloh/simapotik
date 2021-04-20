Public Class frmMstPasien
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim PasienBindSource As New BindingSource
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

    Private Sub frmMstPasien_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Enter Then savePasien()

    End Sub

    Private Sub frmMstPasien_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data

        formDesign(_opt, _data)
    End Sub

    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Pasien"
            TextBox1.ReadOnly = True
            fillComboGender()
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Pasien"
            fillComboGender()
        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessPasien As New AccessData.AccessPasien
            Dim Pasien As New Pasien
            Dim list As List(Of Pasien) = AccessPasien.FindPasienById(id)
            For Each obj As Pasien In list
                TextBox1.Text = obj.IdPasien.ToString
                TextBox2.Text = obj.NamaPasien
                TextBox3.Text = obj.Bpjs
                TextBox4.Text = obj.AlamatPasien
                TextBox5.Text = obj.KontakPasien
                ComboBox1.Text = obj.KelaminPasien
                DateTimePicker1.Text= obj.TglLahirPasien
                TextBox6.Text = obj.IDMember.ToString
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub fillComboGender()
        ComboBox1.Text = "-- Pilih Jenis Kelamin --"
        ComboBox1.Items.Add("Laki-laki")
        ComboBox1.Items.Add("Perempuan")
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        savePasien()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub savePasien()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Pasien As New Pasien
        Dim AccessPasien As New AccessData.AccessPasien
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try
                    Pasien.NamaPasien = TextBox2.Text
                    Pasien.Bpjs = TextBox3.Text
                    Pasien.AlamatPasien = TextBox4.Text
                    Pasien.KontakPasien = TextBox5.Text
                    Pasien.KelaminPasien = Trim(ComboBox1.Text)
                    Pasien.TglLahirPasien = Format(DateTimePicker1.Value, "yyyy-MM-dd")
                    Pasien.IDMember = CInt(TextBox6.Text)
                    AccessPasien.PasienInsert(Pasien)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Pasien.NamaPasien = TextBox2.Text
                    Pasien.Bpjs = TextBox3.Text
                    Pasien.AlamatPasien = TextBox4.Text
                    Pasien.KontakPasien = TextBox5.Text
                    Pasien.KelaminPasien = Trim(ComboBox1.Text)
                    Pasien.TglLahirPasien = Format(DateTimePicker1.Value, "yyyy-MM-dd")
                    Pasien.IDMember = CInt(TextBox6.Text)
                    AccessPasien.PasienUpdate(Pasien)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class