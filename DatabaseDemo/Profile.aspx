<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DatabaseDemo.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 21%;
        }
        .auto-style1 {
            width: 84px;
        }
        .auto-style2 {
            width: 191px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Data" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">City</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Age</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="message" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="MyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ShopifyConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [Email], [Age], [City], [Password]) VALUES (@FirstName, @LastName, @Email, @Age, @City, @Password)" SelectCommand="SELECT * FROM [Users] Where UserId=@UserId" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Age] = @Age, [City] = @City, [Password] = @Password WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox7" Name="UserId" PropertyName="Text" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox7" Name="UserId" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="FirstName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="LastName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="Age" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox4" Name="City" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox6" Name="Password" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox7" Name="UserId" PropertyName="Text" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
