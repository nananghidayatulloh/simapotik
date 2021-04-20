Public Class frmMstDokter

    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim DokterBindSource As New BindingSource
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

    Private Sub frmMstDokter_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        If e.KeyCode = Keys.Enter Then saveDokter()

    End Sub

    Private Sub frmMstDokter_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)
    End Sub

    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Dokter"
            TextBox1.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Dokter"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessDokter As New AccessData.AccessDokter
            Dim Dokter As New Dokter
            Dim list As List(Of Dokter) = AccessDokter.FindDokterById(id)
            For Each obj As Dokter In list
                TextBox1.Text = obj.IDDokter.ToString
                TextBox2.Text = obj.NamaDokter
                TextBox3.Text = obj.Sip
                TextBox4.Text = obj.AlamatDokter
                TextBox5.Text = obj.KontakDokter
                TextBox6.Text = obj.IDMember.ToString
            Next
          
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveDokter()
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

    Private Sub saveDokter()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim dokter As New Dokter
        Dim AccessDokter As New AccessData.AccessDokter
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try
                    dokter.NamaDokter = TextBox2.Text
                    dokter.Sip = TextBox3.Text
                    dokter.AlamatDokter = TextBox4.Text
                    dokter.KontakDokter = TextBox5.Text
                    dokter.IDMember = CInt(TextBox6.Text)
                    AccessDokter.DokterInsert(dokter)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    dokter.IDDokter = CInt(TextBox1.Text)
                    dokter.NamaDokter = TextBox2.Text
                    dokter.Sip = TextBox3.Text
                    dokter.AlamatDokter = TextBox4.Text
                    dokter.KontakDokter = TextBox5.Text
                    dokter.IDMember = CInt(TextBox6.Text)
                    AccessDokter.DokterUpdate(dokter)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class