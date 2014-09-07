using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CommonUtilities
/// </summary>
public class CommonUtilities
{
	public CommonUtilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\CloudTest\\Irain-M\\Irain-M\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    //ADO Net Declarations ending here

    //Execute SP will be calling when INSERT,DELETE,UPDATE Required by users.
    //With SQL Parameters and no parameters

    public void ExecuteSP(string ProcName)
    {

        try
        {
            con.Open();
            cmd = new SqlCommand(ProcName, con); //To Pass the Query and To Mention the Table Name....
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }

    }
    public string ExecuteSP(string ProcName, SqlParameter[] Param)
    {
        string Result;
        try
        {
            con.Open();
            cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter Params in Param)
            {
                cmd.Parameters.Add(Params);
            }
            cmd.ExecuteNonQuery();
            Result = "";

        }
        catch (Exception ex)
        {
            Result = ex.Message;
        }
        finally
        {
            con.Close();
        }

        return Result;
    }

    public void Fill_DropDownList(string ProcName, DropDownList DDL, string TField, string VField)
    {
        DDL.Items.Clear();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds, "DDLTbl");

            DDL.DataTextField = TField;
            DDL.DataValueField = VField;
            DDL.DataSource = ds.Tables[0];
            DDL.DataBind();
        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    public void Fill_DropDownList(string ProcName, SqlParameter[] Param, DropDownList DDL, string TField, string VField)
    {
        DDL.Items.Clear();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter sqlparams in Param)
            {
                cmd.Parameters.Add(sqlparams);
            }

            da = new SqlDataAdapter(cmd);
            da.Fill(ds, "DDLTbl");

            DDL.DataTextField = TField;
            DDL.DataValueField = VField;
            DDL.DataSource = ds.Tables[0];
            DDL.DataBind();
        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }

    public void Fill_ListBox(string ProcName, ListBox LST)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                LST.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    public void Fill_ListBox(SqlParameter[] Param, string ProcName, ListBox LST)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter Params in Param)
            {
                cmd.Parameters.Add(Params);
            }
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                LST.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }


    public void Fill_GridView(string ProcName, GridView GV)
    {
        try
        {
            ds.Clear();
            ds.Reset();
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);

            da = new SqlDataAdapter(cmd);
            da.Fill(ds);

            GV.DataSource = ds.Tables[0];
            GV.DataBind();

        }
        catch (Exception ex)
        {

            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }

    }
    public void Fill_GridView(SqlParameter[] Param, string ProcName, GridView GV)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(ProcName, con);

            foreach (SqlParameter Params in Param)
            {
                cmd.Parameters.Add(Params);
            }

            da = new SqlDataAdapter(cmd);
            da.Fill(ds);

            GV.DataSource = ds.Tables[0];
            GV.DataBind();
        }
        catch (Exception ex)
        {
            MessageBox(ex.Message);
        }
        finally
        {
            con.Close();
        }

    }


    public string GetSingleVal(string ProcName)
    {
        string Result = null;
        try
        {
            con.Open();
            cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Result = dr[0].ToString();
            }
            else
            {
                Result = "0";
            }

        }
        catch (Exception ex)
        {
            Result = ex.Message;
        }
        finally
        {
            con.Close();
        }

        return Result;
    }
    public string GetSingleVal(string ProcName, SqlParameter[] Param)
    {
        string Result = null;
        try
        {
            con.Open();
            cmd = new SqlCommand(ProcName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter Params in Param)
            {
                cmd.Parameters.Add(Params);
            }
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Result = dr[0].ToString();
            }
            else
            {
                Result = "0";
            }
        }
        catch (Exception ex)
        {
            Result = ex.Message;
        }
        finally
        {
            con.Close();
        }

        return Result;
    }

    public void MessageBox(string Message)
    {
        System.Web.HttpContext.Current.Response.Write("<script type=text/javascript>alert('" + Message + "')</script>");

    }

}
