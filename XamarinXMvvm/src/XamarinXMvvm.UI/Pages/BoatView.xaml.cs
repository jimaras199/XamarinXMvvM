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
            System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: BoatView initialized!");
        }
    }
}
