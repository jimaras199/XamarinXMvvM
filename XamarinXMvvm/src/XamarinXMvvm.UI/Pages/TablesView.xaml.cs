using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using MvvmCross.Forms.Presenters.Attributes;
using MvvmCross.Forms.Views;
using MvvmCross.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Shapes;
using Xamarin.Forms.Xaml;
using XamarinXMvvm.Core.ViewModels.Home;

namespace XamarinXMvvm.UI.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    [MvxContentPagePresentation(WrapInNavigationPage = true)]
    public partial class TablesView : MvxContentPage<Core.ViewModels.Home.TablesViewModel>
    {
        public TablesView()
        {
            InitializeComponent();
        }

        #region StackTable Column Width Configuration
        private bool _isColumnWidthsLocked = false;
        private void SizeChangedScroll(object sender, EventArgs e)
        {
            Device.BeginInvokeOnMainThread(() => {
                if (!_isColumnWidthsLocked)
                {
                    SetWidths();
                    _isColumnWidthsLocked = true;
                }
            });
        }
        private void SetWidths()
        {
            List<double> GreaterLengths = FindMaxLenRowPositions();
            ApplyLengths(GreaterLengths);
        }
        private void ApplyLengths(List<double> greaterLengths)
        {
            var tablestack = (StackLayout)FindByName("StackTable");

            if (tablestack != null)
            {
                foreach (View child in tablestack.Children)
                {
                    var gridTable = (Grid)child;
                    foreach (var length in greaterLengths)
                    {
                        gridTable.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(length) });
                    }
                }
            }
        }     
        private List<double> FindMaxLenRowPositions()
        {
            var Positions = new List<double> { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
            var tablestack = (StackLayout)FindByName("StackTable");

            foreach (View child in tablestack.Children)
            {
                var gridTable = (Grid)child;
                for (var i = 0; i < gridTable.Children.Count; i++)
                {
                    var firstColumnLabel = (Label)gridTable.Children[i];
                    Size measuredSize = firstColumnLabel.Measure(double.PositiveInfinity, double.PositiveInfinity).Request;
                    Positions[i] = Math.Max(measuredSize.Width, Positions[i]) + 0.5;
                }
            }
            return Positions;
        }
        #endregion

        #region Lorem ipsum
        public const string Contentstring = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        private void SizeChangedLabel(object sender, EventArgs e)
        {
            var label = (Label)sender;

            var repeats = calculate_repeats(label);

            for (var i = 0; i < repeats; i++)
                label.Text += Contentstring;
        }
        private int calculate_repeats(Label label)
        {
            double totalHeight = 0, height = 0;
            var occupied_lines = calculate_lines(label, ref totalHeight, ref height);
            var occupied_Height = occupied_lines * height;
            var repeats = (int)(totalHeight / occupied_Height) + 1;
            return repeats;
        }
        private int calculate_lines(Label label, ref double totalHeight, ref double height)
        {
            label.Measure(double.PositiveInfinity, double.PositiveInfinity);
            label.Text = Contentstring;
            Size measuredSize = label.Measure(double.PositiveInfinity, double.PositiveInfinity).Request;
            var lines = (int)(measuredSize.Width / label.Width) + 1;
            totalHeight = label.Height;
            height = measuredSize.Height;
            return lines;
        }
        #endregion
    }
}
