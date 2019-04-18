<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Ch15Cart.Products" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    
    <%--<div class="row-fluid">--%>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceAll">
            <ItemTemplate>
                <div class="col-sm-3" style="max-height:400px; min-height:400px;">
                    <div class="thumbnail img-custom text-center">
                        <img src='/Images/Products/<%# Eval("image") %>' 
                            alt='<%# Eval("ModelNo") %>' />
                        <div class="caption">
                            <h3><%# Eval("ModelNo") %></h3>
                            <p><b>Price: <%# Eval("VarPrice", "{0:c}") %></b>
                            <br><br><%# Eval("SpecName") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <%--</div>--%>
   

    <asp:SqlDataSource runat="server" ID="SqlDataSourceByCategory"
        ConnectionString='<%$ ConnectionStrings:FinalConnectionString %>'
        SelectCommand="SELECT Products.ModelNo, Specifications.SpecName, Specifications.VarPrice, Products.image FROM Products INNER JOIN Specifications ON Products.ProductID = Specifications.ProductID WHERE (Products.CategoryID = @CategoryID)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="catID" 
                Name="CategoryID" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceAll"
        ConnectionString='<%$ ConnectionStrings:FinalConnectionString %>'
        SelectCommand="SELECT Products.ModelNo, Specifications.SpecName, Specifications.VarPrice, Products.ShortDesc, Products.image FROM Products INNER JOIN Specifications ON Products.ProductID = Specifications.ProductID ORDER BY Products.ModelNo">
    </asp:SqlDataSource>
    
</asp:Content>
