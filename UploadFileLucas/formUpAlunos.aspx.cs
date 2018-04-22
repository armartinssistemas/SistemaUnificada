using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace UploadFileLucas
{
    public partial class formUpAlunos : System.Web.UI.Page
    {
        UnificadaEntities entityUni = new UnificadaEntities();

       private static List<matricula> listaMatricula;

        public static List<matricula> ListaMatricula { get => listaMatricula; set => listaMatricula = value; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            upFile.SaveAs((@"C:\arquivos\" + upFile.FileName));

            using (StreamReader sr = new StreamReader(@"C:\arquivos\" + upFile.FileName, Encoding.Default))
            {

                ListaMatricula = new List<matricula>();


                if (sr.ReadLine() != null)
                {
                    String linha = sr.ReadLine();
                    while (linha != null)
                    {
                        string[] array = linha.Split(',');
                        matricula m = new UploadFileLucas.matricula();
                        m.ra = array[0];
                        //m.Senha = array[1];
                        m.nome = array[2];
                        m.sobrenome = array[3];
                        // byte[] bytesCidade = Encoding.Default.GetBytes(array[4]);
                        //String utf8Cidade = Encoding.UTF8.GetString(bytesCidade);
                        //m.cidade = utf8Cidade;
                        m.cidade = array[4];
                        m.email = array[5];
                        m.disciplina = array[6];
                        //m.Chave = array[7];
                        //m.Departamento = array[8];
                        m.curso = array[9];
                        ListaMatricula.Add(m);
                        linha = sr.ReadLine();
                    }
                    grid.DataSource = ListaMatricula;
                    grid.DataBind();
                }
            }

        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSalvarCadastro_Click(object sender, EventArgs e)
        {
            // Salvar lista de cadastro
            entityUni.matriculas.AddRange(ListaMatricula);
            entityUni.SaveChanges();

        }
    }
}