   M S B A M L   `   `   `  ����C  ?TEKNO_v1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TEKNO_v1.ClientesTEKNO_v1.Clientes  5   	   )    #TEKNO_v1.Clientes.Registro_Clientes   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TEKNO_v1.Clientes     5   	   v rTelerik.Windows.Controls.EntityFramework, Version=2017.3.1018.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.RibbonView, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7g	 cTelerik.Windows.Documents, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7|
 xTelerik.Windows.Documents.FormatProviders.Html, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.ImageEditor, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7| xTelerik.Windows.Documents.FormatProviders.Xaml, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7 {Telerik.Windows.Documents.FormatProviders.OpenXml, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Rtf, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2017.3.1010.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7t pTelerik.Windows.Controls.RichTextBoxUI, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2017.3.1018.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7[telerik1http://schemas.telerik.com/2008/xaml/presentation     	 
          5   	     � Title$  Registro_Clientes��5	   	   $	��405��6#   $	��519��60   .��5
      � .+�5   
   �� -   5         ��Name$ 	lblNombre��5      $��Nombre del Cliente��6#   $
��Left=�6@   $��	24,63,0,0q�6[   $	��Top=�6n   �� 5   
   -   5        $ lblAp_Paterno��5      $��Apellido Paterno��6'   $
��Left=�6B   $��	24,89,0,0q�6]   $	��Top=�6p   �� 5   
   -   5        $ lblAp_Materno��5      $��Apellido Materno��6'   $
��Left=�6B   $��
24,120,0,0q�6]   $	��Top=�6q   �� 5   
   -   5        $ 	lblCorreo��5      $��e-mail��6#   $
��Left=�64   $��
24,146,0,0q�6O   $	��Top=�6c   �� 5   
   -   5        $ lblTelefono��5      $��Telefono��6%   $
��Left=�68   $��
24,172,0,0q�6S   $	��Top=�6g   �� 5   
   -   5        $ 
lblEscuela��5      $��Escuela��6$   $
��Left=�66   $��
24,198,0,0q�6Q   $	��Top=�6e   �� 5   
   -   5        $ 	lblTitulo��5      $��Registro de Clientes��6#   $
��Left=�6B   $��
179,10,0,0q�6]   $	��Top=�6q   $
��Bold"�6�   $��14(�6�   �� 5   
   -   5         ��Name$ 
txtCliente��5      $
��Left=�6&   $��23��6A   $��
188,67,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $	��Top=�6v   $	��223��6�   $��0,0,0,1q�6�   
�������6�   �� 5   
   -	   5        $ 
txtPaterno��5      $
��Left=�6&   $��23��6A   $��
188,95,0,0q�6M   $
 Wrap=�6a   $	��Top=�6v   $	��223��6�   $��0,0,0,1q�6�   
�������6�   �� 5   
   -
   5        $ 
txtMaterno��5      $
��Left=�6&   $��23��6A   $��188,120,0,0q�6M   $
 Wrap=�6b   $	��Top=�6w   $	��223��6�   $��0,0,0,1q�6�   
�������6�   �� 5   
   -   5        $ txtemail��5      $
��Left=�6$   $��23��6?   $��188,146,0,0q�6K   $
 Wrap=�6`   $	��Top=�6u   $	��223��6�   $��0,0,0,1q�6�   
�������6�   �� 5   
   -   5        $ txtTelefono��5      $
��Left=�6'   $��23��6B   $��188,174,0,0q�6N   $
 Wrap=�6c   $	��Top=�6x   $	��223��6�   $��0,0,0,1q�6�   
�������6�   �� 5   
   -   5         ��Name$ 
btnGuardar��5      $��Guardar��6%   $
��Left=�67   $��118,275,0,0q�6R   $	��Top=�6g   $��75��6   $��0,0,0,1q�6�   
�������6�   �� 5   
   -   5        $ btnCancelar��5      $��Cancelar��6&   $
��Left=�69   $��336,275,0,0q�6T   $	��Top=�6i   $��75��6�   $��0,0,0,1q�6�   
�������6�   1  +Telerik.Windows.Controls.RadAutoCompleteBox  5   
   -   5          Name$ autoEscuela��5   %   $
��Left=�6:   $��188,202,0,0q�6U   $	��Top=�6j   $	��223��6�   $��0,0,0,1q�6�   
�������   DisplayMemberPath$ nombre��5   %      AutoCompleteMode$ Suggest=�5   %      SelectionMode$ Single=�5   %   	   ItemsSource	 5   %   �� *	cliente+5   %   �� 5   
   -   5        $ btnActualizar��5      $��
Actualizar��6(   $
��Left=�6=   $��118,275,0,0q�6X   $	��Top=�6m   $��75��6�   $��0,0,0,1q�6�   
�������$y�Hidden=�6�   5!      5"      