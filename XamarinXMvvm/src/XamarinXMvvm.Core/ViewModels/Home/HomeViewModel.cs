using System.Windows.Input;
using System.Threading.Tasks;
using MvvmCross.Commands;
using MvvmCross.Navigation;
using MvvmCross.ViewModels;

namespace XamarinXMvvm.Core.ViewModels.Home
{
    public class HomeViewModel : MvxViewModel
    {
        private MvxCommand _tablesCommand;
        private MvxCommand _boatCommand;
        private readonly IMvxNavigationService _navigationService;
        public HomeViewModel(IMvxNavigationService navigationService)
        {
            _navigationService = navigationService;
        }

        public ICommand TablesCommand
        {
            get
            {
                _tablesCommand ??= new MvxCommand(async () => await ExecuteTablesCommandAsync());
                return _tablesCommand;
            }
        }

        public ICommand BoatCommand
        {
            get
            {
                _boatCommand ??= new MvxCommand(async () => await ExecuteBoatCommandAsync());
                return _boatCommand;
            }
        }

        private async Task ExecuteTablesCommandAsync()
        {
            await _navigationService.Navigate<TablesViewModel>();
        }

        private async Task ExecuteBoatCommandAsync()
        {
            await _navigationService.Navigate<BoatViewModel>();
        }
    }
}
