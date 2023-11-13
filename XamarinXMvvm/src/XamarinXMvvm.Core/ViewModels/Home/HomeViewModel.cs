using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using System.Threading.Tasks;
using MvvmCross.Commands;
using MvvmCross.Navigation;
using MvvmCross.ViewModels;
using Microsoft.Extensions.Logging;

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
            // Your logic for Tables command
            //try
            //{
            //    await _navigationService.Navigate<TablesViewModel>();
            //}
            //catch (Exception ex) {
            //    Console.WriteLine("Exception Message: " + ex.Message);
            //    Console.WriteLine("Exception Stack Trace: " + ex.StackTrace);
            //}
        }

        private async Task ExecuteBoatCommandAsync()
        {
            // Your logic for Boat command
            //await _navigationService.Navigate<BoatViewModel>();
        }
    }
}
