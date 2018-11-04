﻿using AccesoBD;
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

namespace TEKNO_v1.Usuarios
{
    /// <summary>
    /// Lógica de interacción para Registrar_Usuario.xaml
    /// </summary>
    public partial class Registrar_Usuario : Window
    {
        int idu;
        public Registrar_Usuario()
        {
            InitializeComponent();
        }

        public Registrar_Usuario(usuario us)
        {
            InitializeComponent();
            idu = us.id_usuario;
            txtNombre.Text = us.nombre;
            txtPaterno.Text = us.ap_paterno;
            txtMaterno.Text = us.ap_materno;
            password.Password = us.password;
            cbbPuesto.Text = us.puesto;
            btnGuardar.Visibility = Visibility.Hidden;
            btnActualizar.Visibility = Visibility.Visible;
        }

        void Guardar()
        {
            if (txtNombre.Text == "")
            {
                MessageBox.Show("Ingresar Nombre");
            }
            else
            {
                if (txtPaterno.Text == "")
                {
                    MessageBox.Show("Ingresa Apellido Paterno");
                }
                else
                {
                    if (txtMaterno.Text == "")
                    {
                        MessageBox.Show("Ingresa Apellido Materno");
                    }else
                    {
                        if(password.Password == "")
                        {
                            MessageBox.Show("Ingresar Contraseña");
                        }else
                        {
                            if(cbbPuesto.SelectedItem == null)
                            {
                                MessageBox.Show("Seleccionar Puesto");
                            }
                            else
                            {
                                usuario usu = new usuario
                                {
                                    nombre = txtNombre.Text,
                                    ap_paterno = txtPaterno.Text,
                                    ap_materno = txtMaterno.Text,
                                    password = password.Password,
                                    puesto = cbbPuesto.Text,
                                    status = "Activo"
                                };
                                BaseDatos.GetBaseDatos().usuarios.Add(usu);
                                BaseDatos.GetBaseDatos().SaveChanges();
                                MessageBox.Show("Registro con Exito");
                                Limpiar();
                            }
                        }
                    }
                }
            }

           
        }

        void Editar()
        {
            if (txtNombre.Text == "")
            {
                MessageBox.Show("Ingresar Nombre");
            }
            else
            {
                if (txtPaterno.Text == "")
                {
                    MessageBox.Show("Ingresa Apellido Paterno");
                }
                else
                {
                    if (txtMaterno.Text == "")
                    {
                        MessageBox.Show("Ingresa Apellido Materno");
                    }
                    else
                    {
                        if (password.Password == "")
                        {
                            MessageBox.Show("Ingresar Contraseña");
                        }
                        else
                        {
                            if (cbbPuesto.SelectedItem == null)
                            {
                                MessageBox.Show("Seleccionar Puesto");
                            }
                            else
                            {
                                var usua = BaseDatos.GetBaseDatos().usuarios.Find(idu);
                                usua.nombre = txtNombre.Text;
                                usua.ap_paterno = txtPaterno.Text;
                                usua.ap_materno = txtMaterno.Text;
                                usua.password = password.Password;
                                usua.puesto = cbbPuesto.Text;
                                BaseDatos.GetBaseDatos().SaveChanges();
                                Consultar_Usuario cu = new Consultar_Usuario();
                                this.Close();
                            }
                        }
                    }
                }
            }


        }

        void Limpiar()
        {
            txtNombre.Text = String.Empty;
            txtPaterno.Text = String.Empty;
            txtMaterno.Text = String.Empty;
            password.Password = String.Empty;
            cbbPuesto.SelectedItem = -1;
        }
        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            Guardar();
        }

        private void btnActualizar_Click(object sender, RoutedEventArgs e)
        {
            Editar();
        }
    }
}
