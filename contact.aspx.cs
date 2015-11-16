using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public class Conexao
{
    public static SqlConnection CriarConexao()
    {
        SqlConnection conexao = null;
        try
        {
            conexao = new SqlConnection("User ID=[nome_usuario];Password=[senha_usuario];Data Source=localhost;Initial Catalog=[nome_bd]");
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        return conexao;
    }
}


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
}