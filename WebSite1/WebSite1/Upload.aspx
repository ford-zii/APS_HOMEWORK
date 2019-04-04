<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

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
                <h1>UPLOAD</h1>
            </div>
            </div>
        <div class="row justify-content-md-center">
            
            <div class="col-md-auto">
                <form id="form1" runat="server" class="container">
                    <div class="row">
                        <div class="form-group col text-left">
                           
                            <asp:DropDownList ID="DropDownDay" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group col text-left">
                            
                            <asp:DropDownList ID="DropDownMonth" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group col text-left">
                         
                            <asp:DropDownList ID="DropDownYear" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>

                       <div class="col-12 text-left mt-3">
                              <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file btn-outline-info" />
                       </div>
                        <div class="col-12 text-left mt-3">
                            <asp:Button ID="save" runat="server" OnClick="save_Click" CssClass="btn btn-primary btn-block" Text="บันทึก" />
                            <asp:Label ID="Label1" runat="server" CssClass="alert alert-success m-4" Text="Successful" ViewStateMode="Disabled" Visible="False"></asp:Label>
                       </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
