<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Number Input Display</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Enter a Number</h2>

        <asp:TextBox ID="txtNumber" runat="server" placeholder="Enter number"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />

        <h3>Numbers:</h3>
        <asp:BulletedList ID="numberList" runat="server"></asp:BulletedList>

    </form>
</body>
</html>

<script runat="server">
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtNumber.Text))
        {
            numberList.Items.Add(txtNumber.Text);
            txtNumber.Text = ""; // clear input
        }
    }
</script>
