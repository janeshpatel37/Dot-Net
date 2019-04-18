<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Ch15Cart.ContactUs" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row">
        <div class="col-xs-12 table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Number/Address</th>
                        <th>Extension</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>General</td><td>647-226-2020</td><td>0</td>
                    </tr>
                    <tr>
                        <td>Customer Service</td><td>1800-2020-2020</td><td>10</td>
                    </tr>
                    <tr>
                        <td>Billing & Accounts</td><td>647-226-2021</td><td>20</td>
                    </tr>
                    <tr>
                        <td>Mailing Address</td><td>286 SE Ave, Toronto-M4K-C547, Ontario</td><td></td>
                    </tr>
                    <tr>
                        <td>Email Address</td><td><a href="info@techbargain.com" target="_blank">info@techbargain.com</td><td></td>
                    </tr>
                    <tr>
                        <td>Facebook</td><td><a href="www.facebook.com/TechBargain" target="_blank">www.facebook.com/TechBargain</a></td><td></td>
                    </tr>
                    <tr>
                        <td>Twitter</td><td><a href="www.twitter.com/TechBargain" target="_blank">www.twitter.com/TechBargain</td><td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
