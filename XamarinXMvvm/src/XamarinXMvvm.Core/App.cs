using MvvmCross.IoC;
using MvvmCross.ViewModels;
using XamarinXMvvm.Core.ViewModels.Home;

namespace XamarinXMvvm.Core
{
    public class App : MvxApplication
    {
        public override void Initialize()
        {
            RegisterAppStart<HomeViewModel>();
        }
    }
}
