Public Class frmMstPaket
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim PaketBindSource As New BindingSource

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


    Private Sub frmMstPaket_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)
    End Sub



    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Paket"
            TextBox1.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Paket"

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessPaket As New AccessData.AccessPaket
            Dim Paket As New Paket
            Dim list As List(Of Paket) = AccessPaket.FindPaketById(id)
            For Each obj As Paket In list
                TextBox1.Text = obj.NamaPaket
                TextBox2.Text = obj.BarcodePaket
                TextBox3.Text = Format(Val(obj.HargaNetto), "###,###")
                TextBox4.Text = Format(Val(obj.HargaNonResep), "###,###")
                TextBox5.Text = Format(Val(obj.HargaResep), "###,###")
                TextBox6.Text = Format(Val(obj.HargaBPJS), "###,###")
                TextBox7.Text = Format(Val(obj.HargaKhusus), "###,###")
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        savePaket()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub savePaket()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Paket As New Paket
        Dim AccessPaket As New AccessData.AccessPaket
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try

                    'Paket.Nama = TextBox2.Text
                    'Paket.Alamat = TextBox4.Text
                    'Paket.Kontak = TextBox5.Text
                    'Paket.Komisi = CDbl(TextBox6.Text)
                    Paket.IdMember = CInt(TextBox3.Text)
                    AccessPaket.PaketInsert(Paket)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Paket.IdPaket = CInt(TextBox1.Text)
                    'Paket.Nama = TextBox2.Text
                    'Paket.Alamat = TextBox4.Text
                    'Paket.Kontak = TextBox5.Text
                    'Paket.Komisi = CDbl(TextBox6.Text)
                    Paket.IdMember = CInt(TextBox3.Text)
                    AccessPaket.PaketUpdate(Paket)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class