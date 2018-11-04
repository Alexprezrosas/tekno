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
using System.Windows.Navigation;
using System.Windows.Shapes;
using TEKNO_v1.Clientes;
using TEKNO_v1.Escuelas;
using TEKNO_v1.Productos;
using TEKNO_v1.Usuarios;

namespace TEKNO_v1
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void RadRadialMenuItem_Click(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            Registrar_Escuela esc = new Registrar_Escuela();
            esc.Show();
        }

        private void RadRadialMenuItem_Click_1(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            Registrar_Usuario ru = new Registrar_Usuario();
            ru.Show();
        }

        private void RadRadialMenuItem_Click_2(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            Consultar_Usuario usu = new Consultar_Usuario();
            usu.Show();
        }

        private void RadRadialMenuItem_Click_3(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            ConsultarEscuelas ce = new ConsultarEscuelas();
            ce.Show();
        }

        private void RadRadialMenuItem_Click_4(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            RegistrarProducto rp = new RegistrarProducto();
            rp.Show();
        }

        private void RadRadialMenuItem_Click_5(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            ConsultarProductos cp = new ConsultarProductos();
            cp.Show();
        }

        private void RadRadialMenuItem_Click_6(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            Registro_Clientes rc = new Registro_Clientes();
            rc.Show();
        }

        private void RadRadialMenuItem_Click_7(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
            ConsultarClientesxaml cc = new ConsultarClientesxaml();
            cc.Show();
        }
    }
}
