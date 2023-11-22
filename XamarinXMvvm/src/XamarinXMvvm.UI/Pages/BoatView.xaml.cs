using System;
using Xamarin.Forms;
using MvvmCross.Navigation;
using MvvmCross.Forms.Presenters.Attributes;
using MvvmCross.Forms.Views;
using Xamarin.Forms.Xaml;
using XamarinXMvvm.Core.ViewModels.Home;

namespace XamarinXMvvm.UI.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    [MvxContentPagePresentation(WrapInNavigationPage = true)]
    public partial class BoatView : MvxContentPage<Core.ViewModels.Home.BoatViewModel>
    {
        public BoatView()
        {
            InitializeComponent();
        }
        protected override void OnDisappearing()
        {
            // Save the state of your second view here
            base.OnDisappearing();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();

            // Restore the state of your second view here
        }

        private double _oldWidth;
        private double _oldHeight;
        
        protected override void OnSizeAllocated(double width, double height)
        {
            base.OnSizeAllocated(width, height);

            var isOrientationChanged = width != _oldWidth || height != _oldHeight;
            var isLandscape = width > height;

            if (isOrientationChanged)
            {
                _oldHeight = height;
                _oldWidth = width;
                // Handle the orientation change as needed
                if (isLandscape)
                {
                    Console.WriteLine("Orientation: Landscape");
                }
                else
                {
                    Console.WriteLine("Orientation: Portrait");
                }
            }
        }
    }
}
