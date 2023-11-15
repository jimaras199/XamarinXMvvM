using MvvmCross.Forms.Presenters.Attributes;
using MvvmCross.Forms.Views;
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
    }
}
