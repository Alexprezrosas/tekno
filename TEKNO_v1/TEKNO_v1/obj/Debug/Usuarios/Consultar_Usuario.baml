   M S B A M L   `   `   `  ����C  ?TEKNO_v1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TEKNO_v1.UsuariosTEKNO_v1.Usuarios  5   	   )    #TEKNO_v1.Usuarios.Consultar_Usuario   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TEKNO_v1.Usuarios     5   	   v rTelerik.Windows.Controls.EntityFramework, Version=2017.3.1018.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.RibbonView, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7g	 cTelerik.Windows.Documents, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7|
 xTelerik.Windows.Documents.FormatProviders.Html, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.ImageEditor, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7| xTelerik.Windows.Documents.FormatProviders.Xaml, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7 {Telerik.Windows.Documents.FormatProviders.OpenXml, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Rtf, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2017.3.1010.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7t pTelerik.Windows.Controls.RichTextBoxUI, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7[telerik1http://schemas.telerik.com/2008/xaml/presentation     	 
          5   	     � Title$  Consultar_Usuario��5	   	   $��430.493��6#   $��773.298��64   .��5
      � .+�5   
   �� -   5         ��Name$ 	lblTitulo��5      $��Consultar Usuario��6#   $
��Left=�6?   $��
291,10,0,0q�6Z   $	��Top=�6n   $
��Bold"�6�   $��14(�6�   *  $Telerik.Windows.Controls.RadGridView  5   
   -   5          Name$ 
radUsuario��5      $
��Left=�5      $��	10,44,0,0q�69   $	��Top=�6L   $	��347��6d   $	��614��6q   ;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��1��5         ShowSearchPanel .     IsSearchingDeferred . 
�������*  $Telerik.Windows.Controls.DataControl   SelectedItem 5      �� *
id_usuario+   Columns 5      1  +Telerik.Windows.Controls.GridViewDataColumn  5      6  0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$ NOMBRE��6R   -  'Telerik.Windows.Controls.GridViewColumn	   
Background
	 �����
   DataMemberBinding
 6-   �� *nombre+6b     5      $ APELLIDO PATERNO��6V   
 6-   �� *
ap_paterno+6V     5      $ APELLIDO MATERNO��6V   
 6-   �� *
ap_materno+6V     5      $ CONTRASEÑA��6T   
 6-   �� *
password+6T     5      $ PUESTO��6R   
 6-   �� *puesto+6R   5      �� 5   
   -   5         ��Name$ 	btnEditar��5      $��Editar��6$   $
��Left=�65   $��629,107,0,0q�6P   $	��Top=�6e   $	��128��6}   6�   �� 5   
   -   5        $ btnEliminar��5      $��Eliminar��6&   $
��Left=�69   $��629,145,0,0q�6T   $	��Top=�6i   $	��128��6�   6�   �� 5   
   -   5         ��Name$ image��5      $
��Left=�6   $	��174��6:   $��629,197,0,0q�6G   $	��Top=�6\   $	��128��6t   $$��/Usuarios/imagenes/usuario.png��6�   5$      5%      