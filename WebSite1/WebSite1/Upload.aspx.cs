using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetDayDDL();
            SetMounthDDL();
            SetYearDDL();

        }
    }
    private void SetDayDDL()
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    private void SetMounthDDL()
    {
        for (int i = 1; i <= 12; i++)
        {
            DropDownMonth.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    private void SetYearDDL()
    {
        int CY = DateTime.Now.Year;
        for (int i = CY - 5; i <= CY + 1; i++)
        {
            DropDownYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    private void InsertFileDB(string OldFileName, string cPath)
    {

        string StrConn = WebConfigurationManager.ConnectionStrings["UPPart2ConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertFile";
                ObjCM.Parameters.AddWithValue("@FilePath", cPath);
                ObjCM.Parameters.AddWithValue("@Name", OldFileName);
                
                ObjCM.Parameters.AddWithValue("@day", DropDownDay.Text);
                ObjCM.Parameters.AddWithValue("@month",DropDownMonth.Text);
                ObjCM.Parameters.AddWithValue("@year", DropDownYear.Text);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }

    }


    protected void save_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        if (FileUpload1.HasFile)
        {
            string OldFiileName = FileUpload1.FileName;

            string Ext = System.IO.Path.GetExtension
                (FileUpload1.PostedFile.FileName);


            string NewName = Guid.NewGuid().ToString();
            string cNewName = string.Format("{0}{1}", NewName, Ext);
            string Path = string.Format("Upload/{0}", cNewName);
            string cPath = Server.MapPath(Path);
            FileUpload1.SaveAs(cPath);


            // DB
            InsertFileDB(OldFiileName, Path);

            Label1.Text = "Upload Successfully!!!!";
            Label1.ForeColor = System.Drawing.Color.Green;


        }
        else
        {
            Label1.Text = "Pls your selected file.";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
    }
}