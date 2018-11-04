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

namespace TEKNO_v1.Productos
{
    /// <summary>
    /// Lógica de interacción para RegistrarProducto.xaml
    /// </summary>
    public partial class RegistrarProducto : Window
    {
        int idp;
        public RegistrarProducto()
        {
            InitializeComponent();
        }

        public RegistrarProducto(producto pr)
        {
            InitializeComponent();
            idp = pr.id_producto;
            txtProducto.Text = pr.nombre;
            txtDescripcion.Text = pr.descripcion;
            txtMarca.Text = pr.marca;
            cbbAlmacen.Text = pr.almacen;
            btnGuardar.Visibility = Visibility.Hidden;
            btnActualizar.Visibility = Visibility.Visible;
        }

        void Guardar()
        {
            if (txtProducto.Text == "")
            {
                MessageBox.Show("Ingresa el nombre del producto");
            }else
            {
                if (txtDescripcion.Text == "")
                {
                    MessageBox.Show("Ingresa la descripcion");
                }else
                {
                    if (txtMarca.Text == "")
                    {
                        MessageBox.Show("Ingresa la marca");
                    }else
                    {
                        if (cbbAlmacen.Text == "")
                        {
                            MessageBox.Show("Selecciona el almacen");
                        }else
                        {
                            producto pr = new producto
                            {
                                nombre = txtProducto.Text,
                                descripcion = txtDescripcion.Text,
                                marca = txtMarca.Text,
                                almacen = cbbAlmacen.Text,
                                usuario_id = 1,
                                estatus = "Activo"
                            };
                            BaseDatos.GetBaseDatos().productoes.Add(pr);
                            BaseDatos.GetBaseDatos().SaveChanges();
                            Limpiar();
                            MessageBox.Show("Registro exitoso");
                        }
                    }
                }
            }
        }

        void Actualizar()
        {
            if (txtProducto.Text == "")
            {
                MessageBox.Show("Ingresa el nombre del producto");
            }
            else
            {
                if (txtDescripcion.Text == "")
                {
                    MessageBox.Show("Ingresa la descripcion");
                }
                else
                {
                    if (txtMarca.Text == "")
                    {
                        MessageBox.Show("Ingresa la marca");
                    }
                    else
                    {
                        if (cbbAlmacen.Text == "")
                        {
                            MessageBox.Show("Selecciona el almacen");
                        }
                        else
                        {
                            var pr = BaseDatos.GetBaseDatos().productoes.Find(idp);
                            pr.nombre = txtProducto.Text;
                            pr.descripcion = txtDescripcion.Text;
                            pr.marca = txtMarca.Text;
                            pr.almacen = cbbAlmacen.Text;
                            BaseDatos.GetBaseDatos().SaveChanges();
                            ConsultarProductos cp = new ConsultarProductos();
                            cp.Show();
                            this.Close();
                        }
                    }
                }
            }
        }

        void Limpiar()
        {
            txtProducto.Text = String.Empty;
            txtDescripcion.Text = String.Empty;
            txtMarca.Text = String.Empty;
            cbbAlmacen.SelectedItem = -1;
        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            Guardar();
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            Actualizar();
        }
    }
}
