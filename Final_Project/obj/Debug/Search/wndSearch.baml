   M S B A M L   `   `   `  ����H  DFinal_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Final_ProjectFinal_Project  5   	       Final_Project.wndSearch   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Final_Project     5   	     � Title$  	wndSearch��5   	   $	��450��6   $	��800��6(    � WindowStartupLocation$ CenterScreen=�64    � 	Resources 5	         	OnLoaded1 g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%8  &	        �� 5
   
   $ Forever��6'   .��5      U� $ (UIElement.Opacity)�6,   $ JewelryShoppeLbl��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:2��6'   $ 1Q�67     5      $ 0:0:4��6'   $ 1Q�67     5      $ 0:0:6��6'   $ 0Q�67   5      5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 FrameworkElement.Loaded��6   .[�5      �� #��[  6   5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $	��56* �6   �� 5      $
��363* �6    � ColumnDefinitions 5   
   �� 5      $
��120* �6   �� 5      $
��533* �6   �� 5       $
��120* �6   ��5"   
   �� 5#       �� ImageSource$7 1/Final_Project;component/Voronoi-Blue-Grey-BG.jpg��6   .+�5%   
   � $��3��6   $��10,10,10,10q�6#   $��1��68    5&      �� 5'      $
��128* �6#   �� 5(      $
��128* �6#   �� 5)      $
��128* �6#   .+�5+      �� ���	#FF6BB9DD J� Opacity$	 0.7Q�6,   $��3��6:    J� Effect 5,      3  -System.Windows.Media.Effects.DropShadowEffect  5-      .+�5/      �� $��
Invoice #:��6   $��	10,10,0,0q�6-   $��Verdana)�6@   $
��Bold"�6U   �� 50      -   5         ��Name$ 	InvoiceCB��50      $��	90,13,0,0q�6.   $	��160��6A   $	 0.7Q�6M    51        52      54      �� 55      $��Total Charges:��6   $��
260,10,0,0q�61   $��Verdana)�6E   $
��Bold"�6Z   �� 56      -   5        $ TotalChargesCB��56      $��
370,13,0,0q�63   $	��140��6G   $	 0.7Q�6S    57        58      5:      �� 5;      $��Invoice Date:��6   $��
520,10,0,0q�60   $��Verdana)�6D   $
��Bold"�6Y   �� 5<      -   5        $ DateCB��5<      $	��136��6+   $	 0.7Q�67    �� Left$	 626��6E   
 �� Top$ 13��6W    5=        5>      5@      5B      &   System.Windows.Controls.DataGrid  5C      -   5          Name$ srchDataGrid��5C      $��10,50,10,10q�6-   $��20��6B   $	 0.7Q�6W      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6e    5D        5E      5G      5H      �� 5I   
   -   5         ��Name$ 	SelectBtn��5I      $��Select��6$   $��Verdana)�65   $
��Bold"�6J   $��10,10,10,10q�6\   $	 0.7Q�6q    5J        5K      5M      �� 5N   
   -   5        $ ResetBtn��5N      $��Reset��6#   $��Verdana)�63   $
��Bold"�6H   $��10,10,10,10q�6Z   $��2��6o   $	 0.7Q�6    5O        5P      5R      �� 5S   
   -   5         ��Name$ JewelryShoppeLbl��5S      $��The Jewelry Shoppe��6*   $��1��6G   $��100,10,100,10q�6W     JewelryShoppeStyle#���  6n   $��Center=�6�   $��Center=�6�   5U      5V      