<%@ Control Language="C#" AutoEventWireup="True" Inherits="Hotcakes.Modules.Core.Modules.Shipping.Rate_Table_by_Total_Price.Edit" CodeBehind="Edit.ascx.cs" %>

<h1>
    <asp:Label runat="server" resourcekey="EditShippingMethod"/>
</h1>
<div class="hcForm">
    <div class="hcFormItemHor">
        <label class="hcLabel"><%=Localization.GetString("Name") %><i class="hcLocalizable"></i></label>
        <asp:TextBox ID="NameField" runat="server" ValidationGroup="ShippingMethod" />
    </div>
    <div class="hcFormItemHor">
        <asp:Label runat="server" resourcekey="HighlightColor" CssClass="hcLabel"/>
        <asp:DropDownList ID="lstHighlights" runat="server" ValidationGroup="ShippingMethod"/>
    </div>
    <div class="hcFormItemHor">
        <asp:Label runat="server" resourcekey="AdjustPriceBy" CssClass="hcLabel"/>
        <asp:TextBox ID="AdjustmentTextBox" runat="server" />
        <asp:CustomValidator ID="cvAdjustmentTextBox" runat="server" ControlToValidate="AdjustmentTextBox" OnServerValidate="cvAdjustmentTextBox_ServerValidate" Display="Dynamic" CssClass="hcFormError" ValidationGroup="ShippingMethod"/>
    </div>
    <div class="hcFormItemHor">
        <label class="hcLabel"></label>
        <asp:DropDownList ID="AdjustmentDropDownList" runat="server" ValidationGroup="ShippingMethod"/>
    </div>
    <div class="hcFormItemHor">
        <asp:Label runat="server" resourcekey="ShippingZone" CssClass="hcLabel"/>
        <asp:DropDownList ID="lstZones" runat="server" ValidationGroup="ShippingMethod"/>
    </div>
</div>
<ul class="hcActions">
    <li>
        <asp:LinkButton ID="btnSave" resourcekey="btnSave" runat="server" OnClick="btnSave_Click" ValidationGroup="ShippingMethod" CssClass="hcPrimaryAction" />
    </li>
    <li>
        <asp:LinkButton ID="btnCancel" resourcekey="btnCancel" CausesValidation="false" runat="server" OnClick="btnCancel_Click" ValidationGroup="ShippingMethod" CssClass="hcSecondaryAction" />
    </li>
</ul>

<h2>
    <asp:Label runat="server" resourcekey="RateTable" />
</h2>
<div class="hcBlock">
    <div class="hcClear">
        <asp:GridView ID="gvRates" CellPadding="3" runat="server" AutoGenerateColumns="False"
            OnRowDeleting="gvRates_RowDeleting" CssClass="hcGrid" OnRowDataBound="gvRates_OnRowDataBound">
            <RowStyle CssClass="hcGridRow" />
            <HeaderStyle CssClass="hcGridHeader" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblLevel" runat="server" Text='<%# Bind("Level") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("Rate", "{0:C}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblPercent" runat="server" Text='<%# Bind("Percent", "{0}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" ItemStyle-Width="80px">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" CssClass="hcIconDelete" OnPreRender="btnDelete_OnPreRender"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="hcForm">
        <div class="hcFormItemHor">
            <asp:Label runat="server" resourcekey="OrderTotal" CssClass="hcLabel"/>
            <asp:TextBox ID="NewLevelField" runat="server" ValidationGroup="Rates" />
            <asp:RequiredFieldValidator ID="rfvNewLevelField" runat="server" ControlToValidate="NewLevelField" CssClass="hcFormError" Display="Dynamic" ValidationGroup="RateTable"/>
            <asp:CompareValidator ID="cvNewLevelField" runat="server" ControlToValidate="NewLevelField" CssClass="hcFormError" Display="Dynamic" ValidationGroup="RateTable" Operator="DataTypeCheck" Type="Double"/>
        </div>
        <div class="hcFormItemHor">
            <asp:Label runat="server" resourcekey="Charge" CssClass="hcLabel"/>
            <asp:TextBox ID="NewAmountField" runat="server" ValidationGroup="RateTable" />
            <asp:RequiredFieldValidator ID="rfvNewAmountField" runat="server" Display="Dynamic" CssClass="hcFormError" ControlToValidate="NewAmountField" ValidationGroup="RateTable" />
            <asp:CompareValidator ID="cvNewAmountField" runat="server" Display="Dynamic" CssClass="hcFormError" ControlToValidate="NewAmountField" ValidationGroup="RateTable" Operator="DataTypeCheck" Type="Double" />
        </div>
        <div class="hcFormItemHor">
            <asp:Label runat="server" resourcekey="AndPercent" CssClass="hcLabel"/>
            <asp:TextBox ID="NewPercentField" runat="server" ValidationGroup="RateTable" />
            <asp:RequiredFieldValidator ID="rfvNewPercentField" runat="server" Display="Dynamic" CssClass="hcFormError" ControlToValidate="NewPercentField" ValidationGroup="RateTable" />
            <asp:CompareValidator ID="cvNewPercentField" runat="server" Display="Dynamic" CssClass="hcFormError" ControlToValidate="NewPercentField" ValidationGroup="RateTable" Operator="DataTypeCheck" Type="Double" />
        </div>
        <div class="hcFormItem">
            <asp:LinkButton ID="btnNew" resourcekey="btnNew" runat="server" OnClick="btnNew_Click" CssClass="hcSecondaryAction" ValidationGroup="RateTable" />
        </div>
    </div>
</div>