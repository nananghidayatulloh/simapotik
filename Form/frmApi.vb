Imports System.IO
Imports System.Net
Imports Newtonsoft.Json
Imports System.Text

Public Class frmApi
    Private urlToPost As String = ""
    Private apikey_favoriot As String = "644b5ae67fe5b305350cdd755e8651b7"

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        ''Set view property
        ListView1.View = View.Details
        ListView1.GridLines = True
        ListView1.FullRowSelect = True

        'Add column header
        ListView1.Columns.Add("Email", 100)
        ListView1.Columns.Add("First Name", 70)
        ListView1.Columns.Add("Last Name", 70)

        'Add items in the listview
        Dim arr(3) As String
        Dim itm As ListViewItem

        'Request Data Menggunakan HttpWebRequest
        Dim request As HttpWebRequest = DirectCast(WebRequest.Create("http://www.api.myapotek.net/obat"), HttpWebRequest)
        Dim response As HttpWebResponse = DirectCast(request.GetResponse(), HttpWebResponse)
        Dim reader As StreamReader = New StreamReader(response.GetResponseStream())
        Dim JsonString As String = reader.ReadToEnd()
        '--------------------------------------------
        'Cara memparsing dari Json ke Object Data
        Dim objData As name = JsonConvert.DeserializeObject(Of name)(JsonString)
        Console.WriteLine("--------Ini Hasil Parsing dari Json ke Object Data-----------")
        For Each datum As Datum In objData.data
            'Console.WriteLine("Id :" & datum.id & ",Email :" & datum.email & ", First Name :" & datum.first_name & ", Last Name :" & datum.last_name)

            'Add first item
            arr(0) = datum.email
            arr(1) = datum.first_name
            arr(2) = datum.last_name
            itm = New ListViewItem(arr)
            ListView1.Items.Add(itm)
        Next

        'Cara mengkonversi Object Data ke Json Format
        Dim json = JsonConvert.SerializeObject(objData)
        Console.WriteLine("-----------Ini Hasil Konversi dari Data ke Json Format---------")
        Console.WriteLine(json)
        Console.Read()
    End Sub

    'Public Sub New(ByVal urlToPost As String)
    '    Me.urlToPost = urlToPost
    'End Sub

    'Public Function postData(ByVal dictData As Dictionary(Of String, Object)) As Boolean
    '    Dim webClient As New WebClient()
    '    Dim resByte As Byte()
    '    Dim resString As String
    '    Dim reqString() As Byte

    '    Try
    '        webClient.Headers("content-type") = "application/json"
    '        webClient.Headers.Add("apikey", apikey_favoriot)
    '        reqString = Encoding.Default.GetBytes(JsonConvert.SerializeObject(dictData, Formatting.Indented))
    '        resByte = webClient.UploadData(Me.urlToPost, "post", reqString)
    '        resString = Encoding.Default.GetString(resByte)
    '        Console.WriteLine(resString)
    '        webClient.Dispose()
    '        Return True
    '    Catch ex As Exception
    '        Console.WriteLine(ex.Message)
    '    End Try
    '    Return False
    'End Function

    'Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
    '    Dim frmA As New frmApi("http://192.168.254.104:8000")
    '    Dim dictData As New Dictionary(Of String, Object)
    '    dictData.Add("device_developer_id", "deviceDefault@FAVORIOT")
    '    dictData.Add("data", "temperature : 31")
    '    frmA.postData(dictData)
    'End Sub
End Class