   M S B A M L   `   `   `  ����E  AWPFWeather, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WPFWeather
WPFWeather  5   	   =#clr-namespace:WPFWeather.ConvertersWPFWeather.Converters  5   	   =#clr-namespace:WPFWeather.ViewModelsWPFWeather.ViewModels  5   	   #    WPFWeather.Windows.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   *localclr-namespace:WPFWeather     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :
converters#clr-namespace:WPFWeather.Converters     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1.command http://www.galasoft.ch/mvvmlight  5
   	   4
viewModels#clr-namespace:WPFWeather.ViewModels  5   	     � Title$  WPF Weather Demo��5   	   $	��312��6"   $	��500��6/    � 	Resources 5      5   /WPFWeather.Converters.BoolToVisibilityConverter   boolToVisibilityConverter��%   &	          5   
   6/   5      .��5      �  � RowDefinitions 5   
   �� 5      $��3* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5!   
   �� $��1��6   $��Center=�6    $��0,0,0,0q�6=   $��Center=�6N   ��6i   �� *Weather.Icon+�� 5"   
   -   5        $��comboBox��5"   Y    �� SelectedIndex$ 0��6   $��20��6%   $��90��61   $��1��6<   $��1��6L    �� SelectedValuePath$ Content��6i   .  (System.Windows.Interactivity.Interaction   Triggers 5#      /  )System.Windows.Interactivity.EventTrigger  5$         	EventName$ Loaded��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5%      /  )GalaSoft.MvvmLight.Command.EventToCommand  	   Command	 6-   �� *DownloadWeatherCommand+
   CommandParameter
 5&   1   ��  �� ElementName$ comboBox�� �� Path$ SelectedValue�5'        5(      $ SelectionChanged��6!   . 5)        	 6-   �� *DownloadWeatherCommand+
 5*   1   �� $ comboBox��$ SelectedValue�5+      .@�5-      �� .��6   Brno6!   �� 5.      .��6   London6#   �� 5/      .��6   Praha6"   50      �� 51   
   $��1��6S   $��Center=�6c   $��0,0,0,0q�6�   $��2��6�   $
��Wrap=�6�   $��Center=�6�   ��6   �� *Weather.Temperature+ �� StringFormat$ 
{0:N0} °C��6�   �� 52   
   $��1��69   $��Center=�6I   $��0,0,0,0q�6f   $��3��6w   $
��Wrap=�6�   $��Center=�6�   ��6   �� *Weather.Description+6�   �� 53   
   $��2��6R   $��Center=�6b   $��0,0,0,0q�6   $��4��6�   $
��Wrap=�6�   $��Center=�6�   ��6   �� *Weather.WindSpeed+$ 
{0:N0} m/s��6�   � 55   
   $��5��6   y�6   �� *DownloadingWeather+ �� 	Converter# [   �� ConverterParameter$ False��.+�56      �� $��
Loading...��6   $
��Left=�6*   $��35,0,0,0q�6E   $
��Wrap=�6W   $��Center=�6k   57      � 59   
   $��31��6   $��31��6   $��4��6)   
���   � � LayoutTransform 5:      �� 5;       �� Angle 6"   �� *Weather.WindDirection+ � Points 5>      8�  8� X$ 15Q�6    8� Y$ 0Q�6   8� 5?      $ 10Q�6   $ 30Q�6   8� 5@      $ 20Q�6   $ 30Q�6   5B      5D      5E      