﻿
Public Class frmLoadJasa
    Dim DtDataview As New DataView
    Dim objDataTable As New DataTable
    Private Sub frmLoadObat_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed
        Me.Close()
    End Sub

    Private Sub frmLoadJasa_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FillDgJasa()
    End Sub
    Private Sub FormatGridWithBothTableAndColumnStyles()
        Me.dgw.DefaultCellStyle.ForeColor = Color.Black
        Me.dgw.RowsDefaultCellStyle.BackColor = Color.AliceBlue
        Me.dgw.GridColor = Color.Blue
        Me.dgw.BorderStyle = BorderStyle.Fixed3D
        Me.dgw.RowHeadersBorderStyle = BorderStyle.Fixed3D
    End Sub

    Public Sub FillDgJasa()
        Try
            Dim DataControl As New AccessData.DataControl
            Dim myData As DataSet = DataControl.GetDataSet("Select nama_jasa, jenis_jasa, keterangan from tbl_jasa ")
            objDataTable = myData.Tables("data")
            DtDataview.Table = objDataTable
            dgw.DataSource = DtDataview
            FormatGridWithBothTableAndColumnStyles()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class