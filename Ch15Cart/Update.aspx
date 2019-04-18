<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Ch15Cart.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table container" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataKeyNames="SpecID">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="SpecID" InsertVisible="False" SortExpression="SpecID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("SpecID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SpecID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Processor" SortExpression="Processor">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Processor") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox1" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Processor") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RAM" SortExpression="RAM">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RAM") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox2" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("RAM") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ScreenSize" SortExpression="ScreenSize">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ScreenSize") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox3" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ScreenSize") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ModelNo" SortExpression="ModelNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ModelNo") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox4" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ModelNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="VarPrice" SortExpression="VarPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("VarPrice") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox5" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("VarPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Storage" SortExpression="Storage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Storage") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field Required" ControlToValidate="TextBox6" ValidationGroup="edit" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Storage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="edit"/>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnectionString %>" SelectCommand="SELECT [SpecID], [Processor], [RAM], [ScreenSize], [ModelNo], [VarPrice], [Storage] FROM [Specifications] ORDER BY [ModelNo]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Specifications] WHERE [SpecID] = @original_SpecID AND [Processor] = @original_Processor AND [RAM] = @original_RAM AND [ScreenSize] = @original_ScreenSize AND [ModelNo] = @original_ModelNo AND [VarPrice] = @original_VarPrice AND [Storage] = @original_Storage" InsertCommand="INSERT INTO [Specifications] ([Processor], [RAM], [ScreenSize], [ModelNo], [VarPrice], [Storage]) VALUES (@Processor, @RAM, @ScreenSize, @ModelNo, @VarPrice, @Storage)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Specifications] SET [Processor] = @Processor, [RAM] = @RAM, [ScreenSize] = @ScreenSize, [ModelNo] = @ModelNo, [VarPrice] = @VarPrice, [Storage] = @Storage WHERE [SpecID] = @original_SpecID AND [Processor] = @original_Processor AND [RAM] = @original_RAM AND [ScreenSize] = @original_ScreenSize AND [ModelNo] = @original_ModelNo AND [VarPrice] = @original_VarPrice AND [Storage] = @original_Storage">
        <DeleteParameters>
            <asp:Parameter Name="original_SpecID" Type="Int32" />
            <asp:Parameter Name="original_Processor" Type="String" />
            <asp:Parameter Name="original_RAM" Type="Int32" />
            <asp:Parameter Name="original_ScreenSize" Type="Decimal" />
            <asp:Parameter Name="original_ModelNo" Type="String" />
            <asp:Parameter Name="original_VarPrice" Type="Decimal" />
            <asp:Parameter Name="original_Storage" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Processor" Type="String" />
            <asp:Parameter Name="RAM" Type="Int32" />
            <asp:Parameter Name="ScreenSize" Type="Decimal" />
            <asp:Parameter Name="ModelNo" Type="String" />
            <asp:Parameter Name="VarPrice" Type="Decimal" />
            <asp:Parameter Name="Storage" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Processor" Type="String" />
            <asp:Parameter Name="RAM" Type="Int32" />
            <asp:Parameter Name="ScreenSize" Type="Decimal" />
            <asp:Parameter Name="ModelNo" Type="String" />
            <asp:Parameter Name="VarPrice" Type="Decimal" />
            <asp:Parameter Name="Storage" Type="Int32" />
            <asp:Parameter Name="original_SpecID" Type="Int32" />
            <asp:Parameter Name="original_Processor" Type="String" />
            <asp:Parameter Name="original_RAM" Type="Int32" />
            <asp:Parameter Name="original_ScreenSize" Type="Decimal" />
            <asp:Parameter Name="original_ModelNo" Type="String" />
            <asp:Parameter Name="original_VarPrice" Type="Decimal" />
            <asp:Parameter Name="original_Storage" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
