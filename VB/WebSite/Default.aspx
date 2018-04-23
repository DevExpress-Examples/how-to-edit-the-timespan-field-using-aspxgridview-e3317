﻿'INSTANT VB NOTE: This code snippet uses implicit typing. You will need to set 'Option Infer On' in the VB file or set 'Option Infer' at the project level:

<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default"
	Culture="auto" UICulture="auto" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.8.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.8.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to edit the TimeSpan field using ASPxGridView</title>
</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxGridView runat="server" ID="Grid" KeyFieldName="ID" OnRowUpdating="Grid_RowUpdating"
		OnParseValue="Grid_ParseValue" AutoGenerateColumns="False" ClientIDMode="AutoID"
		OnRowInserting="Grid_RowInserting" OnCellEditorInitialize="Grid_CellEditorInitialize">
		<Columns>
			<dx:GridViewDataTextColumn FieldName="Time" Width="150px">
				<PropertiesTextEdit Width="150px">
					<MaskSettings Mask="<-100..100>\.<00..23>:<00..59>:<00..59>" />
				</PropertiesTextEdit>
			</dx:GridViewDataTextColumn>
			<dx:GridViewCommandColumn>
				<EditButton Visible="true">
				</EditButton>
				<NewButton Visible="True">
				</NewButton>
			</dx:GridViewCommandColumn>
		</Columns>
		<SettingsPager Mode="ShowAllRecords">
		</SettingsPager>
	</dx:ASPxGridView>
	</form>
</body>
</html>