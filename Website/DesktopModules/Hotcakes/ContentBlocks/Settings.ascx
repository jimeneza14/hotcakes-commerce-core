﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="Hotcakes.Modules.ContentBlocks.Settings" %>
<%@ Register Src="../../../controls/labelcontrol.ascx" TagName="labelcontrol" TagPrefix="dnn" %>
<div class="dnnFormMessage dnnFormInfo">
    <asp:Label runat="server" resourcekey="SettingsHint" />
</div>
<div class="dnnForm">
    <fieldset>
        <div class="dnnFormItem">
            <dnn:labelcontrol id="ViewLabel" controlname="ViewContentLabel" suffix=":" runat="server" />
            <asp:Label ID="ViewContentLabel" CssClass="dnnFormLabel" runat="server" Text="" />
        </div>
        <div class="dnnFormItem">
            <dnn:labelcontrol id="ViewSelectionLabel" controlname="ViewComboBox" suffix=":" runat="server" />
            <asp:DropDownList ID="ViewComboBox" runat="server" Width="250px" Height="150px"/>
        </div>
        <div class="dnnFormItem">
            <dnn:labelcontrol id="ContentBlocksLabel" controlname="ContentBlocksValueLabel" suffix=":" runat="server" />
            <asp:Label ID="ContentBlocksValueLabel" CssClass="dnnFormLabel" runat="server" Text="" />
        </div>
        <div class="dnnFormItem">
            <dnn:labelcontrol id="ContentBlocksSelectionLabel" controlname="ContentBlocksComboBox" suffix=":" runat="server" />
            <asp:DropDownList ID="ContentBlocksComboBox" runat="server" Width="250px" Height="150px"/>
        </div>
    </fieldset>
</div>
