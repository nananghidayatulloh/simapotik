Imports System.Drawing.Printing
Public Class frmPOS

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

    Sub Data_Load()
        dtItem = New DataTable
        With dtItem.Columns
            .Add("itemname", Type.GetType("System.String"))
            .Add("qty", Type.GetType("System.String"))
            .Add("price", Type.GetType("System.String"))
        End With

        Dim ItemRow As DataRow

        ItemRow = dtItem.NewRow()
        ItemRow("itemname") = "PARACETAMOL"
        ItemRow("qty") = "1"
        ItemRow("price") = "5000"
        dtItem.Rows.Add(ItemRow)

        ItemRow = dtItem.NewRow()
        ItemRow("itemname") = "VIT C"
        ItemRow("qty") = "2"
        ItemRow("price") = "7000"
        dtItem.Rows.Add(ItemRow)

        ItemRow = dtItem.NewRow()
        ItemRow("itemname") = "AMPETAMINE"
        ItemRow("qty") = "5"
        ItemRow("price") = "1000"
        dtItem.Rows.Add(ItemRow)

    End Sub
    Private Sub frmPOS_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        rs.FindAllControls(Me)
        DataGridView1.ColumnCount = 2
        DataGridView1.Columns(0).Name = "Product ID"
        DataGridView1.Columns(1).Name = "Product QTY"
        Timer1.Interval = 200

        With ListView1
            .View = View.Details
            .Columns.Add("Column_ProductId", "Product Id")
            .Columns.Add("Column_Quantity", "Quantity")
        End With
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'get the ListViewItem of the first ListViewItem in the ListView that has the same Product Id that was entered into the ProductId textbox.
        'if none exist, then lvi will be nothing.
        Dim lvi As ListViewItem = ListView1.FindItemWithText(TextBox_ProductId.Text)
        'Dim lvi As ListViewItem = (From i As ListViewItem In ListView1.Items.Cast(Of ListViewItem)() Where i.Text = TextBox_ProductId.Text).FirstOrDefault
        'Dim lvi As ListViewItem = (From i As ListViewItem In ListView1.Items.Cast(Of ListViewItem)() Where i.Text = txtCodProd.Text).FirstOrDefault
        If lvi IsNot Nothing Then
            Dim indx As Integer = ListView1.Columns("Column_Quantity").Index 'get the index of the Quantity column
            Dim Quant As Integer = CInt(lvi.SubItems(indx).Text) 'get an Integer value of the text String in the Quantity column from the matching ListViewItem
            Quant += CInt(TextBox_Quantity.Text) 'add the Integer value of the Quantity textbox to the Integer value from the Quantity column
            lvi.SubItems(indx).Text = Quant.ToString 'now set the text String in the Quantity column to the new Quantity
        Else
            Dim newlvi As ListViewItem = ListView1.Items.Add(TextBox_ProductId.Text) 'add the pruduct id to the 1st column
            newlvi.SubItems.Add(TextBox_Quantity.Text) 'add the quantity to the 2nd column
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        Data_Load()
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
        arrWidth = {120, 40, 70, 70} 'array for column width | array untuk lebar kolom
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

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        'Dim Found As Boolean = False
        'If DataGridView1.RowCount > 0 Then
        '    For Each row As DataGridViewRow In DataGridView1.Rows
        '        If Not row.IsNewRow Then
        '            'MessageBox.Show(row.Cells(0).Value.ToString & "," & row.Cells(1).Value.ToString)
        '            If DataGridView1.CurrentRow.Cells(0).Value.ToString = TextBox_ProductId.Text And DataGridView1.CurrentRow.Cells(1).Value.ToString = TextBox_Quantity.Text Then
        '                row.Cells(1).Value = Convert.ToString(1 + Convert.ToInt16(row.Cells(1).Value))
        '                Found = True
        '            End If
        '        End If
        '    Next
        'Else
        '    Dim myArray() As String = {TextBox_ProductId.Text, TextBox_Quantity.Text}
        '    DataGridView1.Rows.Add(myArray)
        'End If

        Dim exist As Boolean = False, numrow As Integer = 0, numtext As Integer
        For Each itm As DataGridViewRow In DataGridView1.Rows
            If itm.Cells(0).Value IsNot Nothing Then
                If itm.Cells(0).Value.ToString = TextBox_ProductId.Text Then
                    exist = True
                    numrow = itm.Index
                    numtext = CInt(itm.Cells(1).Value)
                    Exit For
                End If
            End If
        Next
        If exist = False Then
            DataGridView1.Rows.Add(New String() {TextBox_ProductId.Text, TextBox_Quantity.Text})
        Else
            DataGridView1.Rows(numrow).Cells(1).Value = CInt(TextBox_Quantity.Text) + numtext
        End If

    End Sub

    Private Sub TextBox_ProductId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextBox_ProductId.KeyDown
        If e.KeyCode = Keys.Enter AndAlso Not TextBox_ProductId.ReadOnly Then 'if the key that was pressed/sent is an Enter key then the end of the scan code has been sent.
            TextBox_ProductId.ReadOnly = True 'set the textbox to ReadOnly so it will not accept anymore keys at this time
            TextBox_ProductId.BackColor = Color.Red 'just as a visual aleart that the full bar code was read, set the textbox`s backcolor to red
            e.SuppressKeyPress = True 'suppress the textbox from adding the enter key to the text
            Timer1.Start() 'start the timer, it will take 200 milliseconds before the Tick event will be raised.
        End If

    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Timer1.Stop() 'stop the timer
        'DataGridView1.Rows.Add(TextBox_ProductId.Text)
        insertBarang()
        TextBox_ProductId.Text = ""
        DataGridView1.Refresh()
        TextBox_ProductId.BackColor = Color.White 'as a visual aleart that a new scan can now be done, set the backcolor of the textbox back to white
        TextBox_ProductId.ReadOnly = False 'now that the scanned code has been processed, set the TextBox`s ReadOnly property back to False so another scan can be done

    End Sub

    Sub insertBarang()
        Dim exist As Boolean = False, numrow As Integer = 0, numtext As Integer
        For Each itm As DataGridViewRow In DataGridView1.Rows
            If itm.Cells(0).Value IsNot Nothing Then
                If itm.Cells(0).Value.ToString = TextBox_ProductId.Text Then
                    exist = True
                    numrow = itm.Index
                    numtext = CInt(itm.Cells(1).Value)
                    Exit For
                End If
            End If
        Next
        If exist = False Then
            DataGridView1.Rows.Add(New String() {TextBox_ProductId.Text, TextBox_Quantity.Text})
        Else
            DataGridView1.Rows(numrow).Cells(1).Value = CInt(TextBox_Quantity.Text) + numtext
        End If
    End Sub

    Private Sub frmPOS_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        rs.ResizeAllControls(Me)
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click

        Dim strPrint As String
        strPrint = "Nosware Store & Coffe Shop" & vbCrLf
        strPrint = strPrint & "------------------------------" & vbCrLf
        strPrint = strPrint & "No     : TN1254389" & vbCrLf
        strPrint = strPrint & "Cashier: Soni" & vbCrLf
        strPrint = strPrint & " " & vbCrLf
        strPrint = strPrint & "Nama   Qty. Costs   SubTotal" & vbCrLf
        strPrint = strPrint & "------------------------------" & vbCrLf
        For x As Integer = 1 To 10
            strPrint = strPrint & "Sauce    " & x & "   5000    10000" & vbCrLf
        Next x
        strPrint = strPrint & "Sauce    2   5000    10000" & vbCrLf
        strPrint = strPrint & "Coffe    3   1000     3000" & vbCrLf
        strPrint = strPrint & "Sugar    1   8000     3000" & vbCrLf
        strPrint = strPrint & "------------------------------" & vbCrLf
        strPrint = strPrint & "Total                13000" & vbCrLf
        Print.Print(strPrint)
    End Sub


End Class