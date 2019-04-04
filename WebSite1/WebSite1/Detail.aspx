<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div>
        <div class="row justify-content-md-center">
            <div  class="col-md-auto">
                <h1>DETAIL</h1>
            </div>
    </div>
    <div>
        <div class="row justify-content-md-center">
            <div  class="col-md-auto">
                <form id="form1" runat="server" class="container text-center">
                     
                    <div class="row m-5">
                        <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" EmptyDataText="No Data." EmptyDataRowStyle-CssClass="alert alert-dark" ></asp:GridView>
                    </div>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPPart2ConnectionString %>" SelectCommand="SELECT * FROM [file]"></asp:SqlDataSource>
                </form>
            </div>
    </div>
    
</body>
</html>
