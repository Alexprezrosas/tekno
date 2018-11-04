using AccesoBD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace TEKNO_v1.Escuelas
{
    /// <summary>
    /// Lógica de interacción para Registrar_Escuela.xaml
    /// </summary>
    public partial class Registrar_Escuela : Window
    {
        int ide;
        public Registrar_Escuela()
        {
            InitializeComponent();
        }

        public Registrar_Escuela(escuela esc)
        {
            InitializeComponent();
            ide = esc.id_escuela;
            txtEscuela.Text = esc.nombre;
            txtDireccion.Text = esc.direccion;
            btnGuardar.Visibility = Visibility.Hidden;
            btnEditar.Visibility = Visibility.Visible;
        }

        void Guardar()
        {
            if (txtEscuela.Text == "")
            {
                MessageBox.Show("Ingresa el nombre de la escuela");
            }else
            {
                if(txtDireccion.Text == "")
                {
                    MessageBox.Show("Ingresa la direccion");
                }else
                {
                    escuela esc = new escuela
                    {
                        nombre = txtEscuela.Text,
                        direccion = txtDireccion.Text,
                        usuario_id = 1,
                        estatus = "Activo"
                    };
                    BaseDatos.GetBaseDatos().escuelas.Add(esc);
                    BaseDatos.GetBaseDatos().SaveChanges();
                    MessageBox.Show("Registro exitoso");
                }
            }
        }

        void Editar()
        {
            if (txtEscuela.Text == "")
            {
                MessageBox.Show("Ingresa el nombre de la escuela");
            }
            else
            {
                if (txtDireccion.Text == "")
                {
                    MessageBox.Show("Ingresa la direccion");
                }
                else
                {
                    var es = BaseDatos.GetBaseDatos().escuelas.Find(ide);
                    es.nombre = txtEscuela.Text;
                    es.direccion = txtDireccion.Text;
                    BaseDatos.GetBaseDatos().SaveChanges();
                    ConsultarEscuelas ce = new ConsultarEscuelas();
                    this.Close();
                }
            }
        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            Guardar();
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnEditar_Click(object sender, RoutedEventArgs e)
        {
            Editar();
        }
    }
}
