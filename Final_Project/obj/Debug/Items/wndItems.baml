   M S B A M L   `   `   `  ����H  DFinal_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Final_ProjectFinal_Project  5   	       Final_Project.wndItems   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Final_Project     5   	     � Title$  wndItems��5   	   $	��460��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�63    � 	Resources 5	         	OnLoaded1 g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%8  &	        �� 5
   
   $ Forever��6'   .��5      U� $ (UIElement.Opacity)�6,   $ JewelryShoppeLbl��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:2��6'   $ 1Q�67     5      $ 0:0:4��6'   $ 1Q�67     5      $ 0:0:6��6'   $ 0Q�67   5      5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 FrameworkElement.Loaded��6   .[�5      �� #��[  6   5      .��5      � 
 � ColumnDefinitions
 5   
   �� 5      $
��266* �6   �� 5      $
��266* �6   �� 5      $
��266* �6   ��5   
   �� 5       �� ImageSource$7 1/Final_Project;component/Voronoi-Blue-Grey-BG.jpg��6    j� Stretch$ UniformToFill=�6Y   .+�5!   
   � $��3��6   $��10,100,10,10q�6#   .+�5"      �� ���	#FF4C9DBA J� Opacity$	 0.7Q�6,   $��0,10,0,0q�6:   $	��280��6L   $	��760��6Y    J� Effect 5#      3  -System.Windows.Media.Effects.DropShadowEffect  5$      5)      &   System.Windows.Controls.DataGrid  5*      -   5          Name$ ItemDataGrid��5*      $��10,26,10,10q�6-   $	 0.7Q�6B      
IsReadOnly .    ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6b    5+        5,      ��5.      �� 5/       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�50      -   5        51      53      54      �� 55   
   -   5        $��addItemButton��55      $��Add Item��6&   $��0,50,130,325q�6:   $��Verdana)�6P   $	 0.7Q�6e   $
��Bold"�6s   $��1��6�    56        57      59      �� 5:   
   -   5        $��
editButton��5:      $��	Edit Item��6#   $��1��67   $��215,49,179,326q�6G   $��Verdana)�6_   $	 0.7Q�6t   $
��Bold"�6�   $��2��6�    5;        5<      5>      �� 5?   
   -   5        $��deleteButton��5?      $��Delete Item��6%   $��2��6;   $��120,50,10,325q�6K   $	 0.7Q�6b   $��Verdana)�6p   $
��Bold"�6�    5@        5A      5C      �� 5D   
   -   5         ��Name$ JewelryShoppeLbl��5D      $��The Jewelry Shoppe��6*   $��1��6G   $��0,0,0.0,370q�6W   $��Center=�6l   $��Center=�6�     JewelryShoppeStyle#���  6�   �� 5E   
   $��Code:��6    �� Left$ 10��6    
 �� Top$ 47��61   $��Verdana)�6A   $
��Bold"�6V   $��47��6h   $��20,30,197,365.333q�6s   �� 5F   
   -   5         ��Name$ 
codeTxtBox��5F      $��23��6&   $ 65��62    �� TextWrapping$
 Wrap=�6C   $ 47��6W   $	��159��6g   $	 0.7Q�6s   $��82,30,23,370.333q�6�   .��6�    5G        5H      .��5I      5J      �� 5K   
   $��Desc:��6   $��Verdana)�6    $
��Bold"�65   $��20,57,197,334.333q�6G   �� 5L   
   -   5        $ 
descTxtBox��5L      $��23��6&   $
 Wrap=�62   $	��159��6F   $	 0.7Q�6R   $��82,58,23,338q�6`   .��6v    5M        5N      .��5O      5P      �� 5Q   
   $��Cost:��6   $��Verdana)�6    $
��Bold"�65   $��47��6G   $��20,86,197,303.333q�6R   �� 5R   
   -	   5        $ 
costTxtBox��5R      $��23��6&   $
 Wrap=�62   $	��159��6F   $	 0.7Q�6R   $��82,86,23,310q�6`   .��6v    5S        5T      .��5U      5V      5W      5X      