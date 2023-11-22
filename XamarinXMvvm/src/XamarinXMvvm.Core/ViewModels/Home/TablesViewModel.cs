using System;
using System.Threading.Tasks;
using MvvmCross.ViewModels;

namespace XamarinXMvvm.Core.ViewModels.Home
{
    public class TablesViewModel : MvxViewModel
    {
        private ITimeService _timeService;

        // Property to store the current time
        private DateTime _currentTime;
        public DateTime CurrentTime
        {
            get => _currentTime;
            set => SetProperty(ref _currentTime, value);
        }
        private void OnTimeUpdated(object sender, DateTime currentTime)
        {
            CurrentTime = currentTime;
        }
        public string Lorem_Ipsum { get; set; }
        
        public override async Task Initialize()
        {
            _timeService = new TimeService();
            _timeService.OnTimeUpdated += OnTimeUpdated;
            await base.Initialize();
        }

    }
}
