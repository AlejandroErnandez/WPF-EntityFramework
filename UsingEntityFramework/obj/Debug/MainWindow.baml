   M S B A M L   `   `   `  ����O  KUsingEntityFramework, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:UsingEntityFrameworkUsingEntityFramework  5   	   %    UsingEntityFramework.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:UsingEntityFramework     5   	   -   5          � Title$  Application��5   	   $	��350��6   $	��525��6*   $	��350��66   $	��525��6F   .��5	      � .+�5
   
   �� -   5         ��Name$ 	buttonAdd��5
      $
��Left=�6>   $��
236,10,0,0q�6Y   $	��Top=�6m   $��80��6�   $��45��6�   ��5      �� 5      .��5      �  � Color$ Green��6#    � Offset$ 0Q�61   � 5      $ Yellow��6#   $	 0.8Q�62   5      .��5      �� .+�5      �� $��	icon3.png��6   $��25��6+   69   �� 5      $	��Add��6   $��11(�6&   $��0q�64   6B   5      5      �� 5   
   -   5        $ 
buttonEdit��5      $
��Left=�6?   $��
330,10,0,0q�6Z   $	��Top=�6n   $��80��6�   $��45��6�   ��5      �� 5      .��5      � $ Yellow��6#   $ 0Q�62   � 5      $ Orange��6#   $	 1.1Q�62   5      .��5      �� .+�5      �� $��	icon4.png��6   $��25��6+   69   �� 5       $
��Edit��6   $��11(�6'   $��0q�65   6C   5!      5"      �� 5%   
   -   5        $ buttonDelete��5%      $
��Left=�6C   $��
425,10,0,0q�6^   $	��Top=�6r   $��80��6�   $��45��6�   ��5&      �� 5'      .��5(      � $	 Red��6#   $ 0Q�6/   � 5)      $ Yellow��6#   $ 1Q�62   5*      .��5,      �� .+�5-      �� $��	icon2.png��6   $��25��6+   69   �� 5.      $��Delete��6   $��11(�6)   $��0q�67   6E   5/      50      �� 52   
   -   5         ��Name$ label4��52      $��Search��6    $
��Left=�61   $��10,6,0,0q�6L   $	��Top=�6^   �� 53   
   -   5        $ label��53      $�� ��6   $
��Left=�6*   $��	38,56,0,0q�6E   $	��Top=�6X   �� 54   
   -   5        $ label1��54      $
��Name��6    $
��Left=�6/   $��	87,56,0,0q�6J   $	��Top=�6]    J� RenderTransformOrigin$ -0.489,0.474&�6u   �� 55   
   -   5        $ label2��55      $��Position��6    $
��Left=�63   $��
236,56,0,0q�6N   $	��Top=�6b   �� 56   
   -	   5        $ label3��56      $��Salary��6    $
��Left=�61   $��
380,56,0,0q�6L   $	��Top=�6`   �� 57   
   -
   5        $ labelId��57      $�� ��6!   $
��Left=�6-   $��	38,87,0,0q�6H   $	��Top=�6[   $��32��6s   �� 59   
   -   5         ��Name$ textBoxSearch��59      $
��Left=�6Q   $��23��6l   $��60,9,0,0q�6x    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��161��6�   �� 5:   
   -   5        $ textBoxSalary��5:      $
��Left=�6�   $��23��6�   $��
380,87,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6  ��6)   �� *Salary+ �� UpdateSourceTrigger$ PropertyChanged=�	 � DataContext	 6f   �� 
 �� ElementName$
 dataGrid�� �� Path$ SelectedItem�6  �� 5;   
   -   5        $ textBoxPosition��5;      $
��Left=�6�   $��23��6�   $��
236,87,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6  ��6+   �� *
Position+$ PropertyChanged=�	 6j   �� $
 dataGrid��$ SelectedItem�6  �� 5<   
   -   5        $ textBoxName��5<      $
��Left=�6�   $��23��6�   $��	87,87,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��120��6	  ��6'   �� *Name+$ PropertyChanged=�	 6b   �� $
 dataGrid��$ SelectedItem�6	  &   System.Windows.Controls.DataGrid  5>   
   -   5          Name$ dataGrid��5>         RowDetailsVisibilityMode$ VisibleWhenSelected=�6%      EnableRowVirtualization .    AutoGenerateColumns .     SelectionMode$ Single=�6�    �� IsTextSearchEnabled .    
IsReadOnly . $
��Left=�6�   $��
38,128,0,0q�6�   $	��Top=�6  $	��171��6  $	��442��6'   J� Effect 5?      3  -System.Windows.Media.Effects.DropShadowEffect  5@      6%      Columns 5B      0  *System.Windows.Controls.DataGridTextColumn  5C      -   5        	idCol��,  &System.Windows.Controls.DataGridColumn   Header$ Id��5C   4      Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6W   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *Id+6W     5D      -   5        nameCol��$
 Name��5D   6   $	 170 6]    6D   �� *Name+6]     5E      -   5        positionCol��$ Position��5E   :   $	 130 6i    6L   �� *
Position+6i     5F      -   5        	salaryCol��$ Salary��5F   8   $	 100 6c    6H   �� *Salary+6c   5H      5J      5K      