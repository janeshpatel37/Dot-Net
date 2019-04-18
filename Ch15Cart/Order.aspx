<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Ch15Cart.Order" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row"><%-- row 1: drop-down list --%>
        <div class="form-group">
            <div class="col-sm-12">
                <label class="col-sm-4">Please select a product:</label>
                <div class="col-sm-4">
                    <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="ModelNo" 
                        DataValueField="ProductID" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString='<%$ ConnectionStrings:FinalConnectionString %>' 
                        SelectCommand="SELECT Specifications.ProductID, Specifications.ModelNo, Products.ShortDesc, Products.LongDesc, Products.image, Specifications.VarPrice FROM Products INNER JOIN Specifications ON Products.ProductID = Specifications.ProductID ORDER BY Products.ModelNo">
                    </asp:SqlDataSource>
                   </div>
            </div>
        </div>
    </div><%-- end of row 1 --%>
     <div class="row">
                    <label class="col-sm-4">Please select spec :</label>
                    <div class="col-sm-4">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="SpecName" DataValueField="SpecID" AutoPostBack="True" CssClass="form-control">
                    </asp:DropDownList>
                    </div>
                    </div>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnectionString %>" SelectCommand="SELECT Products.ProductID, Products.ModelNo, Products.ShortDesc, Products.LongDesc, Products.image, Specifications.Storage, Specifications.RAM, Specifications.SpecName, Specifications.SpecID FROM Products INNER JOIN Specifications ON Products.ProductID = Specifications.ProductID WHERE (Specifications.ProductID = @ProductID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlProducts" Name="ProductID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    <%-- row 2: FormView control --%>
        <asp:FormView ID="FormView1" runat="server" 
            DataSourceID="SqlDataSource2" DataKeyNames="ProductID">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ModelNo:
                <asp:TextBox ID="ModelNoTextBox" runat="server" Text='<%# Bind("ModelNo") %>' />
                <br />
                ShortDesc:
                <asp:TextBox ID="ShortDescTextBox" runat="server" Text='<%# Bind("ShortDesc") %>' />
                <br />
                LongDesc:
                <asp:TextBox ID="LongDescTextBox" runat="server" Text='<%# Bind("LongDesc") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                RAM:
                <asp:TextBox ID="RAMTextBox" runat="server" Text='<%# Bind("RAM") %>' />
                <br />
                Storage:
                <asp:TextBox ID="StorageTextBox" runat="server" Text='<%# Bind("Storage") %>' />
                <br />
                VarPrice:
                <asp:TextBox ID="VarPriceTextBox" runat="server" Text='<%# Bind("VarPrice") %>' />
                <br />
                SpecName:
                <asp:TextBox ID="SpecNameTextBox" runat="server" Text='<%# Bind("SpecName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ModelNo:
                <asp:TextBox ID="ModelNoTextBox" runat="server" Text='<%# Bind("ModelNo") %>' />
                <br />
                ShortDesc:
                <asp:TextBox ID="ShortDescTextBox" runat="server" Text='<%# Bind("ShortDesc") %>' />
                <br />
                LongDesc:
                <asp:TextBox ID="LongDescTextBox" runat="server" Text='<%# Bind("LongDesc") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                RAM:
                <asp:TextBox ID="RAMTextBox" runat="server" Text='<%# Bind("RAM") %>' />
                <br />
                Storage:
                <asp:TextBox ID="StorageTextBox" runat="server" Text='<%# Bind("Storage") %>' />
                <br />
                VarPrice:
                <asp:TextBox ID="VarPriceTextBox" runat="server" Text='<%# Bind("VarPrice") %>' />
                <br />
                SpecName:
                <asp:TextBox ID="SpecNameTextBox" runat="server" Text='<%# Bind("SpecName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <%--<div class="row">--%>
                    <div class="col-6">
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ModelNo:
                <asp:Label ID="ModelNoLabel" runat="server" Text='<%# Bind("ModelNo") %>' />
                <br />
                ShortDesc:
                <asp:Label ID="ShortDescLabel" runat="server" Text='<%# Bind("ShortDesc") %>' />
                <br />
                LongDesc:
                <asp:Label ID="LongDescLabel" runat="server" Text='<%# Bind("LongDesc") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Bind("image") %>' />
                <br />
                RAM:
                <asp:Label ID="RAMLabel" runat="server" Text='<%# Bind("RAM") %>' />
                <br />
                Storage:
                <asp:Label ID="StorageLabel" runat="server" Text='<%# Bind("Storage") %>' />
                <br />
                VarPrice:
                <asp:Label ID="VarPriceLabel" runat="server" Text='<%# Bind("VarPrice") %>' />
                <br />
                SpecName:
                <asp:Label ID="SpecNameLabel" runat="server" Text='<%# Bind("SpecName") %>' />
                <br /></div>
                    <div class="col-6">
                        <asp:Image ID="imgProduct" runat="server" 
                        ImageUrl='<%# Eval("image", "Images/Products/{0}")%>' CssClass="col-12 img-custom"/>
                    </div>
                    </div>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" 
            ConnectionString='<%$ ConnectionStrings:FinalConnectionString %>' 
            SelectCommand="SELECT Products.ProductID, Products.ModelNo, Products.ShortDesc, Products.LongDesc, Products.image, Specifications.RAM, Specifications.Storage, Specifications.VarPrice, Specifications.SpecName FROM Products INNER JOIN Specifications ON Products.ProductID = Specifications.ProductID WHERE (Specifications.ProductID = @ProductID) AND (Specifications.SpecID = @SpecID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProducts" Name="ProductID" 
                    PropertyName="SelectedValue" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="DropDownList1" Name="SpecID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />

    <div class="row"><%-- row 3: quantity, buttons --%>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="col-sm-1">Quantity:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtQuantity" runat="server" 
                        CssClass="form-control"></asp:TextBox>
                    <br />
                </div>
                <div class="col-sm-8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                        runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity must range from 1 to 500."
                        MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator></div>
                <br />
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
                        onclick="btnAdd_Click" CssClass="btn" />
                    <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                        PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn" />
                </div>
            </div>
        </div>
    </div><%-- end of row 3 --%>

</asp:Content>