Imports System.Drawing.Printing

Public Class frmTransaksiPenjualan
    Dim rs As New Resizer
    Dim StoreName As String = "MY APOTEK"
    Dim StoreAddress As String = "KEDIRI"
    'Dim Img As Image = Image.FromFile("d:\logo.jpg") '--> for fixed location
    'Dim Img As Image = Image.FromFile(Application.StartupPath() & "\myapotek-ConvertImage.jpg")
    Dim TransNo As String = "TCN10-20191204-001"
    Dim TransDate As String = Format(Now, "yyyy-MM-dd HH:mm:ss")

    'for item sales | untuk item penjualan
    Dim dtItem As DataTable
    Dim arrWidth() As Integer
    Dim arrFormat() As StringFormat

    'declaring printing format class
    Dim c As New PrintingFormat

    'for subtotal & qty total
    Dim dblSubtotal As Double = 0
    Dim dblQty As Double = 0
    Dim dblPayment As Double = 50000

    Dim TextToPrint As String = ""
    Dim jumlahkarakter As Integer = 40 '40 adalah jumlah karakter (lebar) yang ada pada struk

    Private Sub frmTransaksiPenjualan_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        rs.ResizeAllControls(Me)
    End Sub

    Sub Data_Load()
        dtItem = New DataTable
        With dtItem.Columns
            .Add("itemname", Type.GetType("System.String"))
            .Add("qty", Type.GetType("System.String"))
            .Add("price", Type.GetType("System.String"))
        End With

        Dim ItemRow As DataRow

        'ItemRow = dtItem.NewRow()
        'ItemRow("itemname") = "PARACETAMOL"
        'ItemRow("qty") = "1"
        'ItemRow("price") = "5000"
        'dtItem.Rows.Add(ItemRow)

        'ItemRow = dtItem.NewRow()
        'ItemRow("itemname") = "VIT C"
        'ItemRow("qty") = "2"
        'ItemRow("price") = "7000"
        'dtItem.Rows.Add(ItemRow)

        'ItemRow = dtItem.NewRow()
        'ItemRow("itemname") = "AMPETAMINE"
        'ItemRow("qty") = "5"
        'ItemRow("price") = "1000"
        'dtItem.Rows.Add(ItemRow)

        For Each row As DataGridViewRow In DataGridView1.Rows
            MessageBox.Show(CStr(row.Cells(2).FormattedValue))
            Dim valitem, valqty, valprice As String
            valitem = CStr(row.Cells(2).FormattedValue)
            valqty = CStr(row.Cells(4).FormattedValue)
            valprice = CStr(row.Cells(3).FormattedValue)
            MessageBox.Show(valitem)
            ItemRow = dtItem.NewRow()
            ItemRow("itemname") = valitem
            ItemRow("qty") = valqty
            ItemRow("price") = valprice
            dtItem.Rows.Add(ItemRow)
        Next row

    End Sub
    Private Sub frmTransaksiPenjualan_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        rs.FindAllControls(Me)
        Timer1.Interval = 200
        PrintDocument1.PrinterSettings.PrinterName = "Generic / Text Only"
        FillPelanggan()
        FillPasien()
        FillDokter()
        FillSales()
    End Sub

    Private Sub txtBarcode_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs)
        If e.KeyCode = Keys.Enter AndAlso Not txtBarcode.ReadOnly Then 'if the key that was pressed/sent is an Enter key then the end of the scan code has been sent.
            txtBarcode.ReadOnly = True 'set the textbox to ReadOnly so it will not accept anymore keys at this time
            txtBarcode.BackColor = Color.Red 'just as a visual aleart that the full bar code was read, set the textbox`s backcolor to red
            e.SuppressKeyPress = True 'suppress the textbox from adding the enter key to the text
            Timer1.Start() 'start the timer, it will take 200 milliseconds before the Tick event will be raised.
        End If
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Timer1.Stop() 'stop the timer
        'DataGridView1.Rows.Add(TextBox_ProductId.Text)
        insertBarang()
        txtBarcode.Text = ""
        DataGridView1.Refresh()
        txtBarcode.BackColor = Color.White 'as a visual aleart that a new scan can now be done, set the backcolor of the textbox back to white
        txtBarcode.ReadOnly = False 'now that the scanned code has been processed, set the TextBox`s ReadOnly property back to False so another scan can be done

    End Sub

    Sub insertBarang()
        Dim Total As Double = 0
        Dim exist As Boolean = False, numrow As Integer = 0, numtext As Integer
        For Each itm As DataGridViewRow In DataGridView1.Rows
            If itm.Cells(0).Value IsNot Nothing Then
                If itm.Cells(0).Value.ToString = txtBarcode.Text Then
                    exist = True
                    numrow = itm.Index
                    numtext = CInt(itm.Cells(6).Value)
                    Exit For
                End If
            End If
        Next
        If exist = False Then
            DataGridView1.Rows.Add(New String() {txtBarcode.Text, txtBarcode.Text, "PARACETAMOL", "1200", "1", "1200", "1200"})
        Else
            'DataGridView1.Rows(numrow).Cells(4).Value = CInt(DataGridView1.Rows(numrow).Cells(1).Value) + numtext
            DataGridView1.Rows(numrow).Cells(4).Value = CInt(DataGridView1.Rows(numrow).Cells(4).Value) + 1
            DataGridView1.Rows(numrow).Cells(6).Value = CInt(DataGridView1.Rows(numrow).Cells(6).Value) + numtext

        End If
    End Sub


    Private Sub DataGridView1_CellClick(ByVal sender As Object, _
    ByVal e As System.Windows.Forms.DataGridViewCellEventArgs)
        With DataGridView1
            MsgBox(.Item(4, .CurrentRow.Index).Value)
        End With
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim strPrint As String
        ' Create a variable to store your value (example qty)
        'Dim total As Integer = 0


        'For i = 0 To YourDataGridHere.RowCount - 1
        '    If Not (YourDataGridHere.Rows(i).Cells("Column1").Value = 0) Then
        '        MsgBox(YourDataGridHere.Rows(i).Cells("Column4").Value)
        '    End If
        'Next

        strPrint = "Nosware Store & Coffe Shop" & vbCrLf
        strPrint = strPrint & "------------------------------" & vbCrLf
        strPrint = strPrint & "No     : TN1254389" & vbCrLf
        strPrint = strPrint & "Cashier: Soni" & vbCrLf
        strPrint = strPrint & " " & vbCrLf
        strPrint = strPrint & "Nama   Qty. Costs   SubTotal" & vbCrLf
        strPrint = strPrint & "------------------------------" & vbCrLf

        For Each row As DataGridViewRow In DataGridView1.Rows
            'MessageBox.Show(CStr(row.Cells(2).FormattedValue))
            strPrint = strPrint & CStr(row.Cells(2).FormattedValue) & CStr(row.Cells(4).FormattedValue) & CStr(row.Cells(3).FormattedValue) & vbCrLf
        Next row

        strPrint = strPrint & "------------------------------" & vbCrLf
        strPrint = strPrint & "Total                13000" & vbCrLf
        Print.Print(strPrint)
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Data_Load2()
        Printer.NewPrint()
        'Printer.Print(Img, 200, 100)
        'Setting Font
        Printer.SetFont("Courier New", 11, FontStyle.Bold)
        Printer.Print(StoreName) 'Store Name | Nama Toko
        'Setting Font
        Printer.SetFont("Courier New", 8, FontStyle.Regular)
        Printer.Print(StoreAddress & ";", {280}, 0) 'Store Address | Alamat Toko
        'spacing
        Printer.Print(" ")
        Printer.Print(TransNo) ' Transaction No | Nomor transaksi
        Printer.Print(TransDate) ' Trans Date | Tanggal transaksi
        Printer.Print(" ") 'spacing
        Printer.SetFont("Courier New", 8, FontStyle.Bold) 'Setting Font
        arrWidth = {120, 40, 70, 80} 'array for column width | array untuk lebar kolom
        arrFormat = {c.MidLeft, c.MidRight, c.MidRight, c.MidRight} 'array alignment 
        'column header split by ; | nama kolom dipisah dengan ;
        Printer.Print("item;qty;price;subtotal", arrWidth, arrFormat)
        Printer.SetFont("Courier New", 8, FontStyle.Regular) 'Setting Font
        Printer.Print("------------------------------------") 'line
        dblSubtotal = 0
        dblQty = 0
        'looping item sales | loop item penjualan
        For r = 0 To dtItem.Rows.Count - 1
            Printer.Print(dtItem.Rows(r).Item("itemname") & ";" & dtItem.Rows(r).Item("qty") & ";" &
                          dtItem.Rows(r).Item("price") & ";" &
                          (dtItem.Rows(r).Item("qty") * dtItem.Rows(r).Item("price")), arrWidth, arrFormat)
            dblQty = dblQty + CSng(dtItem.Rows(r).Item("qty"))
            dblSubtotal = dblSubtotal + (dtItem.Rows(r).Item("qty") * dtItem.Rows(r).Item("price"))
        Next
        Printer.Print("------------------------------------")
        arrWidth = {130, 120} 'array for column width | array untuk lebar kolom
        arrFormat = {c.MidLeft, c.MidRight} 'array alignment 

        Printer.Print("Total;" & dblSubtotal, arrWidth, arrFormat)
        Printer.Print("Payment;" & dblPayment, arrWidth, arrFormat)
        Printer.Print("------------------------------------")
        Printer.Print("Change;" & dblPayment - dblSubtotal, arrWidth, arrFormat)
        Printer.Print(" ")
        Printer.Print("Item Qty;" & dblQty, arrWidth, arrFormat)

        'Release the job for actual printing
        Printer.DoPrint()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        'Data_Load2()


        ' Create object, passing in text
        'Dim MyPrintObject As New TextPrint("testing")
        ' Set font, if required
        'MyPrintObject.Font = New Font("Tahoma", 8)
        ' Issue print command
        'MyPrintObject.Print()

        'PrintHeader()
        'ItemsToBePrinted()
        'printFooter()
        'Dim printControl = New Printing.StandardPrintController
        'PrintDocument1.PrintController = printControl
        'Try
        '    PrintDocument1.Print()
        'Catch ex As Exception
        '    MsgBox(ex.Message)
        'End Try


        'PrintDocument1.Print()

        Dim prn As New Printing.PrintDocument
        Dim psz As New Printing.PaperSize
        '---- Select the PDF Printer
        prn.PrinterSettings.PrinterName = "Generic / Text Only"
        '---- Ensure we have LETTER Sized Paper
        psz.RawKind = Printing.PaperKind.Custom
        psz.Width = 3
        psz.Height = 3
        '---- Set the paper size
        prn.DefaultPageSettings.PaperSize = psz
        Debug.WriteLine(prn.DefaultPageSettings.Bounds)
        Debug.WriteLine(prn.DefaultPageSettings.PrintableArea.Size)
        prn.Print()

    End Sub


    Sub Data_Load2()
        dtItem = New DataTable
        With dtItem.Columns
            .Add("itemname", Type.GetType("System.String"))
            .Add("qty", Type.GetType("System.String"))
            .Add("price", Type.GetType("System.String"))
        End With

        Dim ItemRow As DataRow
        Dim exist As Boolean = False, numrow As Integer = 0
        For Each itm As DataGridViewRow In DataGridView1.Rows
            If itm.Cells(0).Value IsNot Nothing Then
                'MessageBox.Show(CStr(itm.Cells(2).Value))
                ItemRow = dtItem.NewRow()
                ItemRow("itemname") = CStr(itm.Cells(2).Value)
                ItemRow("qty") = CStr(itm.Cells(4).Value)
                ItemRow("price") = CStr(itm.Cells(3).Value)
                dtItem.Rows.Add(ItemRow)

            End If
        Next

    End Sub


    Public Sub PrintHeader()
        Dim huruf As Integer = 0
        Dim sisa As Integer = 0

        Dim NamaKasir As Integer

        TextToPrint = ""

        'Header Struk Nama toko, alamat, telepon
        Dim StringToPrint As String = "Nama Toko"
        Dim LineLen As Integer = StringToPrint.Length
        Dim spcLen1 As New String(" "c, Math.Round((jumlahkarakter - LineLen) / 2)) 'This line is used to center text in the middle of the receipt
        TextToPrint &= spcLen1 & StringToPrint & Environment.NewLine

        StringToPrint = "Alamat Toko"
        LineLen = StringToPrint.Length
        Dim spcLen2 As New String(" "c, Math.Round((jumlahkarakter - LineLen) / 2))
        TextToPrint &= spcLen2 & StringToPrint & Environment.NewLine

        StringToPrint = "Telp : 085742872638"
        LineLen = StringToPrint.Length
        Dim spcLen3 As New String(" "c, Math.Round((jumlahkarakter - LineLen) / 2))
        TextToPrint &= spcLen3 & StringToPrint & Environment.NewLine

        ' garis
        Dim spcLen4 As New String(StrDup(40, "-"))
        TextToPrint &= spcLen4 & Environment.NewLine

        'No Struk dan nama kasir
        huruf = Len("010207000234") + 6
        NamaKasir = Len(Strings.Left("Anggola", 12)) + 8
        sisa = (40 - (huruf + NamaKasir))
        Dim spcLen4b As New String("Bon : " + "010207000234" + StrDup(sisa, " ") + "Kasir : " + Strings.Left("Anggola", 12))
        TextToPrint &= spcLen4b & Environment.NewLine

        ' garis
        Dim spcLen5 As New String(StrDup(40, "-"))
        TextToPrint &= spcLen5 & Environment.NewLine
    End Sub

    Public Sub ItemsToBePrinted()
        Dim i As Integer
        Dim hurufnama As Integer = 0
        Dim sisanama As Integer = 0

        Dim hurufqty As Integer = 0
        Dim sisaqty As Integer = 0

        Dim hurufharga As Integer = 0
        Dim sisaharga As Integer = 0

        Dim hurufsub As Integer = 0
        Dim sisasub As Integer = 0
        For i = 0 To 9
            hurufnama = Len(Strings.Left("NAMA BARANG", 17))
            sisanama = (18 - hurufnama)
            hurufqty = Len(Format(2, "#,###"))
            sisaqty = (5 - hurufqty)
            hurufharga = Len(Format(2000, "#,###"))
            sisaharga = (8 - hurufharga)
            hurufsub = Len(Format(4000, "#,###"))
            sisasub = (9 - hurufsub)

            Dim spcLen4b As New String(Strings.Left("NAMA BARANG", 17) + StrDup(sisanama, " ") + StrDup(sisaqty, " ") + Format(2, "#,###") + StrDup(sisaharga, " ") + Format(2000, "#,###") + StrDup(sisasub, " ") + Format(4000, "#,###"))
            TextToPrint &= spcLen4b & Environment.NewLine
        Next

    End Sub
    Public Sub printFooter()
        Dim huruf As Integer = 0
        Dim sisa As Integer = 0

        Dim spcLen6 As New String(StrDup(40, "-"))
        TextToPrint &= spcLen6 & Environment.NewLine

        huruf = Len(Format(40000, "#,###")) + 5
        sisa = (40 - (huruf))
        Dim spcLen7 As New String("Total" + StrDup(sisa, " ") + Format(40000, "#,###"))
        TextToPrint &= spcLen7 & Environment.NewLine

        huruf = Len(Format(50000, "#,###")) + 5
        sisa = (40 - (huruf))
        Dim spcLen10 As New String("Tunai" + StrDup(sisa, " ") + Format(50000, "#,###"))
        TextToPrint &= spcLen10 & Environment.NewLine

        huruf = Len(Format(10000, "#,###")) + 7
        sisa = (40 - (huruf))
        Dim spcLen11 As New String("Kembali" + StrDup(sisa, " ") + Format(10000, "#,###"))
        TextToPrint &= spcLen11 & Environment.NewLine

        Dim spcLen12 As New String(StrDup(40, "-"))
        TextToPrint &= spcLen12 & Environment.NewLine

        Dim spcLen13 As New String("01/05/2015 07:47:59")
        TextToPrint &= spcLen13 & Environment.NewLine

        Dim spcLen14 As New String(StrDup(40, "-"))
        TextToPrint &= spcLen14 & Environment.NewLine

        Dim StringToPrint As String = "Terimakasih Atas Kunjungan Anda"
        Dim LineLen As Integer = StringToPrint.Length
        Dim spcLen1 As New String(" "c, Math.Round((jumlahkarakter - LineLen) / 2))
        TextToPrint &= spcLen1 & StringToPrint & Environment.NewLine

    End Sub


    Private Sub PrintDocument1_PrintPage(ByVal sender As Object, ByVal e As System.Drawing.Printing.PrintPageEventArgs)
        Static currentChar As Integer
        'Untuk font struk direkomendasikan Font Telidon Hv
        Dim textfont As Font = New Font("Telidon Hv", 9, FontStyle.Regular)

        Dim h, w As Integer
        Dim left, top As Integer
        With PrintDocument1.DefaultPageSettings
            h = 0
            w = 0
            left = 1
            top = 0
        End With

        PrintDocument1.DefaultPageSettings.PaperSize = New System.Drawing.Printing.PaperSize("Paper Size Name", 1, 1)

        Dim lines As Integer = CInt(Math.Round(h / 1))
        Dim b As New Rectangle(left, top, w, h)
        Dim format As StringFormat
        format = New StringFormat(StringFormatFlags.LineLimit)
        Dim line, chars As Integer

        e.Graphics.MeasureString(Mid(TextToPrint, currentChar + 1), textfont, New SizeF(w, h), format, chars, line)
        e.Graphics.DrawString(TextToPrint.Substring(currentChar, chars), New Font("Telidon Hv", 9, FontStyle.Regular), Brushes.Black, b, format)

        currentChar = currentChar + chars
        If currentChar < TextToPrint.Length Then
            e.HasMorePages = True
        Else
            e.HasMorePages = False
            currentChar = 0
        End If
    End Sub

    Private Sub FillPelanggan()
        
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pelanggan")

            ComboBox1.ValueMember = "id_pelanggan"
            ComboBox1.DisplayMember = "nama_pelanggan"
            ComboBox1.DataSource = myData.Tables(0)

        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub FillPasien()

        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_pasien")

            ComboBox2.ValueMember = "id_pasien"
            ComboBox2.DisplayMember = "nama_pasien"
            ComboBox2.DataSource = myData.Tables(0)

        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub FillDokter()

        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_dokter")

            ComboBox3.ValueMember = "id_dokter"
            ComboBox3.DisplayMember = "nama_dokter"
            ComboBox3.DataSource = myData.Tables(0)

        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub FillSales()

        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select * from tbl_sales")

            ComboBox4.ValueMember = "id_sales"
            ComboBox4.DisplayMember = "nama_sales"
            ComboBox4.DataSource = myData.Tables(0)

        Catch ex As Exception
            ' infokan ke user, jika ada error
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub btnSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        frmLoadPelanggan.ShowDialog()
    End Sub

    Private Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim f2 As New frmLoadObat
        f2.showdialog()
    End Sub

    Private Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim f2 As New frmLoadJasa
        f2.ShowDialog()
    End Sub

    Private Sub Button10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button10.Click
        Dim f2 As New frmLoadPaket
        f2.ShowDialog()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim f2 As New frmLoadPasien
        f2.ShowDialog()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim f2 As New frmLoadDokter
        f2.ShowDialog()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim f2 As New frmLoadSales
        f2.ShowDialog()
    End Sub
End Class
