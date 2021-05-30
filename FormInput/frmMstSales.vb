Public Class frmMstSales
    Private mOpt As Integer
    Private mData As Integer
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Dim bMgr As BindingManagerBase
    Dim SalesBindSource As New BindingSource

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
    Private Sub FillWilayah()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from provinsi")

            ComboBox1.ValueMember = "id_prov"
            ComboBox1.DisplayMember = "nama"
            ComboBox1.DataSource = myData.Tables(0)
        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub FillArea(ByVal WilayahID As Integer)
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from kabupaten WHERE id_prov='" & WilayahID & "'")
            ' isikan parameter Continent'Benua

            ComboBox2.ValueMember = "id_kab"
            ComboBox2.DisplayMember = "nama"
            ComboBox2.DataSource = myData.Tables(0)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub frmMstSales_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        formDesign(_opt, _data)

        FillWilayah()
    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ComboBox1.SelectedIndexChanged
        '' pastikan pilihan benar
        If (Not IsNothing(ComboBox1.SelectedValue)) Then
            '' ambil ID provinsi yang dipilih user
            Dim id As Integer = ComboBox1.SelectedValue
            '' isi combobox country berdasarkan benua yang dipilih
            FillArea(id)
        End If
    End Sub


    Private Sub formDesign(ByVal opt As Integer, ByVal data As Integer)
        If opt = 2 Then
            Me.Text = "Edit Data Sales"
            TextBox1.ReadOnly = True
            fillData(data)

        ElseIf opt = 1 Then
            Me.Text = "Input Data Sales"
            TextBox1.ReadOnly = False
            clearText()

        End If
    End Sub

    Private Sub fillData(ByVal id As Integer)
        Try
            Dim AccessSales As New AccessData.AccessSales
            Dim Sales As New Sales
            Dim list As List(Of Sales) = AccessSales.FindSalesById(id)
            For Each obj As Sales In list
                TextBox1.Text = obj.IDSales.ToString
                TextBox2.Text = obj.Nama
                TextBox3.Text = obj.IDMember.ToString
                TextBox4.Text = obj.Alamat
                TextBox5.Text = obj.Kontak
                TextBox6.Text = obj.Komisi.ToString
                TextBox7.Text = obj.SubArea
                ComboBox2.Text = obj.Area
                ComboBox1.Text = obj.Wilayah
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        saveSales()
    End Sub

    Private Sub clearText()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        ComboBox1.Text = ""
        ComboBox2.Text = ""
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If MsgBox("Anda yakin ingin keluar ?", MsgBoxStyle.Information Or MsgBoxStyle.YesNo, "Konfirmasi") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

    Private Sub saveSales()
        Dim _opt As Integer = Me.Opt
        Dim _data As Integer = Me.Data
        Dim Sales As New Sales
        Dim AccessSales As New AccessData.AccessSales
        Dim answer As Integer
        answer = MsgBox("Do you want to Continue?", vbQuestion + vbYesNo, "Konfirmasi")

        ''OPT 1 untuk Save
        ''OPT 2 untuk Edit
        If answer = vbYes Then
            'MsgBox(_opt.ToString)
            If _opt = 1 Then
                Try

                    Sales.Nama = TextBox2.Text
                    Sales.Alamat = TextBox4.Text
                    Sales.Kontak = TextBox5.Text
                    Sales.Wilayah = ComboBox1.Text
                    Sales.Area = ComboBox2.Text
                    Sales.SubArea = TextBox7.Text
                    Sales.Komisi = CDbl(TextBox6.Text)
                    Sales.IDMember = CInt(TextBox3.Text)
                    AccessSales.SalesInsert(Sales)

                    clearText()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            ElseIf _opt = 2 Then
                Try
                    Sales.IDSales = CInt(TextBox1.Text)
                    Sales.Nama = TextBox2.Text
                    Sales.Alamat = TextBox4.Text
                    Sales.Kontak = TextBox5.Text
                    Sales.Wilayah = ComboBox1.Text
                    Sales.Area = ComboBox2.Text
                    Sales.SubArea = TextBox7.Text
                    Sales.Komisi = CDbl(TextBox6.Text)
                    Sales.IDMember = CInt(TextBox3.Text)
                    AccessSales.SalesUpdate(Sales)

                    MsgBox("Data berhasil diupdate")
                    Me.Close()
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
        End If
    End Sub
End Class