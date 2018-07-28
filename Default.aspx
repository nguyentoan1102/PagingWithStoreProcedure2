<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PagingWithStore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="CustomerId" DataField="CustomerId" />
                <asp:BoundField HeaderText="ContactName" DataField="ContactName" />
                <asp:BoundField HeaderText="CompanyName" DataField="CompanyName" />
            </Columns>
        </asp:GridView>
        <br />
        PageSize:
        <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PageSize_Changed">
            <asp:ListItem Text="10" Value="10" />
            <asp:ListItem Text="25" Value="25" />
            <asp:ListItem Text="50" Value="50" />
        </asp:DropDownList>
        <hr />
        <asp:Repeater ID="rptPager" runat="server">
            <ItemTemplate>
                <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>' Enabled='<%# Eval("Enabled") %>' OnClick="Page_Changed" CssClass='<%#Convert.ToBoolean(Eval("Enabled")) ? "ActiveLinkBtn" :"InActiveLinkBtn"%>'></asp:LinkButton>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
