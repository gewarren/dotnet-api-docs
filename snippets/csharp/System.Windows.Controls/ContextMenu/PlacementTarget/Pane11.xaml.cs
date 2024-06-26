﻿//This is a list of commonly used namespaces for a pane.
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Threading;

namespace TabControlEx
{
	/// <summary>
	/// Interaction logic for Pane11.xaml
	/// </summary>
        	
        public partial class Pane11 : StackPanel
	{
        System.Windows.UIElement target;
        //<Snippet2>
        void MyMenuHandler(object sender, RoutedEventArgs e)
        {
        //<Snippet3>
        ContextMenu cm = (ContextMenu)sender;
        target = cm.PlacementTarget;
        //</Snippet3>
        if(e.Source==red)
          {
           backgroundcolor.Background = Brushes.Red;
           backgroundcolor.Header = "Background red";
          }
          else if(e.Source==blue)
          {
           backgroundcolor.Background = Brushes.LightBlue;
           backgroundcolor.Header = "Background blue";
          }
          else if(e.Source==yellow)
          {
           backgroundcolor.Background = Brushes.Yellow;
           backgroundcolor.Header = "Background yellow";
          }
         }
         //</Snippet2>
         void MyMenuHandler2(object sender, RoutedEventArgs e)
         {
          ContextMenu cm = (ContextMenu)sender;
          target = cm.PlacementTarget;
          if (e.Source == green)
             {
              foregroundcolor.Foreground = Brushes.Green;
              foregroundcolor.Header = "Foreground green";
             }
             else if (e.Source == purple)
             {
             foregroundcolor.Foreground = Brushes.Purple;
             foregroundcolor.Header = "Foreground purple";
             }
             else if (e.Source == crimson)
             {
             foregroundcolor.Foreground = Brushes.Crimson;
             foregroundcolor.Header = "Foreground crimson";
             }
            }	
	         
        void MyMenuHandler3(object sender, RoutedEventArgs e)
        {
         ContextMenu cm = (ContextMenu)sender;
         target = cm.PlacementTarget;
         if(e.Source==sixteen)
           {
            fontsize.FontSize = 16;
            fontsize.Header = "Font Size 16";
           }
         else if(e.Source==twenty)
           {
           fontsize.FontSize = 20;
           fontsize.Header = "Font Size 20";
           }
         else if(e.Source==twentyfour)
           {
           fontsize.FontSize = 24;
           fontsize.Header = "Font Size 24";
           }
         }
       }
}
