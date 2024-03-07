using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace XamarinXMvvm.Core
{
    public interface ITimeService
    {
        event EventHandler<DateTime> OnTimeUpdated;
        public Task StartUpdatingAsync();
    }
    public class TimeService : ITimeService
    {
        private bool _isUpdating;
        private const int SecondDelay = 1000;
        public event EventHandler<DateTime> OnTimeUpdated;

        public TimeService()
        {
            _= StartUpdatingAsync();
        }
        public async Task StartUpdatingAsync()
        {
            _isUpdating = true;
            while (_isUpdating)
            {
                DateTime currentTime = DateTime.Now;
                OnTimeUpdated?.Invoke(this, currentTime);
                await Task.Delay(SecondDelay);
            }
        }
    }
}
