using System.Threading.Tasks;
using MvvmCross.ViewModels;

namespace XamarinXMvvm.Core.ViewModels.Home
{
    public class BoatViewModel : MvxViewModel
    {
        public override async Task Initialize()
        {
            await base.Initialize();
            //[monodroid-assembly] open_from_bundles: failed to load assembly Xamarin.Forms.Platform.Android.AppLinks.dll
        }
    }
}
