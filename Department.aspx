<%@ Page Title="Department Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="MyApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <table>
            <tr>
                <td>
                    Department Id:
                </td>
                <td>
                    <asp:TextBox ID="txtDeptId" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Department Name:
                </td>
                <td>
                    <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Floor Number:
                    <asp:SqlDataSource ID="MyApplication" runat="server" ConnectionString="<%$ ConnectionStrings:MyApplicationConnectionString %>" SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="txtDeptFloor" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr style="margin: 10px;">
                <td>
                    <asp:Button ID="Add" runat="server" Text="ADD" OnClick="Add_Click" CssClass="btn btn-primary" />
                </td>
                <td>
                    <asp:Button ID="Update" runat="server" Text="UPDATE" OnClick="Update_Click" CssClass="btn btn-secondary" />
                    <asp:Button ID="Delete" runat="server" Text="DELETE" OnClick="Delete_Click" CssClass="btn btn-secondary" />
                </td>
            </tr>
        </table>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="MyApplication">
                       <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="floor" HeaderText="floor" SortExpression="floor" />
                        </Columns>
        </asp:GridView>
       
    </div>
</asp:Content>
