<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Carlendar.aspx.cs" Inherits="Carlendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
<body >
    <div class="row justify-content-md-center">
    
    <div class="col-md-auto">
      <form id="form1" runat="server" class="container">
        <div class="row my-2 text-white " > 
            <asp:HyperLink ID="Upload" runat="server" CssClass="btn btn-primary btn-lg btn-block" NavigateUrl="~/Upload.aspx">Upload File</asp:HyperLink>
        </div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="304px" NextPrevFormat="FullMonth" Width="538px" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
    </form>
    </div>
   
  </div>
    
</body>
</html>
