using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class users_publicar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Luciano\\Documents\\Visual Studio 2010\\WebSites\\EventSpots\\banco\\eventSports.mdf; Integrated Security=True;Connect Timeout=30;User Instance=True"))
        {
            using (SqlCommand cmd = new SqlCommand("insert into evento(titulo,conteudo,data) values(@TITULO,@CONTEUDO,@DATA)", con))
            {
                cmd.Parameters.AddWithValue("TITULO", txtTitulo.Value);
                cmd.Parameters.AddWithValue("CONTEUDO", txtConteudo.Value);
                DateTime date = DateTime.Parse(txtData.Value.ToString());

                cmd.Parameters.AddWithValue("DATA", date);
                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.InnerText = "Evento cadastrado com sucesso.";
                    }
                }
                catch (Exception ex)
                {
                    lblMensagem.InnerText = "Erro ao cadastrar evento.\n" + ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}