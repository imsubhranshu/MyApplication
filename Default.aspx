<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <table style="margin: 40px;">
            <tr>
                <td>
                    Roll Number:

                </td>
                <td>
                    <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Name:

                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Address:
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Department Id:

                </td>
                <td>
                    <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <asp:Button ID="Add" Text="ADD" runat="server" OnClick="Add_Click" CssClass="btn btn-primary" />
                </td>
                <td>
                    <asp:Button ID="Update" Text="UPDATE" runat="server" OnClick="Update_Click" CssClass="btn btn-secondary" />
                    <asp:Button ID="Delete" Text="DELETE" runat="server" OnClick="Delete_Click" CssClass="btn btn-secondary" />
                    
                </td>
            </tr>

        </table>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="MyApplicationStudent">
            <Columns>
                <asp:BoundField DataField="rollNo" HeaderText="rollNo" SortExpression="rollNo" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="MyApplicationStudent" runat="server" ConnectionString="<%$ ConnectionStrings:MyApplicationConnectionString %>" SelectCommand="SELECT [rollNo], [name], [address], [department] FROM [student] ORDER BY [rollNo]">

        </asp:SqlDataSource>




    </div>

</asp:Content>
