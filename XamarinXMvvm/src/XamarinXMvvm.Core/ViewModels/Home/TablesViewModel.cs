using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using MvvmCross.ViewModels;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace XamarinXMvvm.Core.ViewModels.Home
{
    public class TablesViewModel : MvxViewModel
    {
        public override async Task Initialize()
        {
            await base.Initialize();
            await WriteJsonAsync().ConfigureAwait(false);
            subscribe();
        }

        #region Time
        private ITimeService _timeService;
        private DateTime _currentTime;    
        public DateTime CurrentTime
        {
            get => _currentTime;
            set => SetProperty(ref _currentTime, value);
        }
        private void subscribe()
        {
            _timeService = new TimeService();
            _timeService.OnTimeUpdated += OnTimeUpdated;
            System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: Subscribed to timeService");
        }
        private void OnTimeUpdated(object sender, DateTime currentTime)
        {
            CurrentTime = currentTime;
        }
        #endregion

        #region RawJson
        public string Rawjson { get; set; }
        public class JsonItem
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public string Description { get; set; }
            public string Price { get; set; }
            public string Manufacturer { get; set; }
            public string Age_range { get; set; }
            public string Material { get; set; }
            public string Weight { get; set; }
            public string Color { get; set; }
            public string Category { get; set; }
        }
        public ObservableCollection<JsonItem> ListJson { get; set; }
        private async Task WriteJsonAsync()
        {
            ListJson = new ObservableCollection<JsonItem>();
            var json = await ReadJsonFileAsync().ConfigureAwait(true);
            if (!json.Equals(""))
            {
                JsonConvert.DeserializeObject<List<JsonItem>>(json).ForEach(item => ListJson.Add(item));
                System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: {ListJson.Count()} items loaded");
            }
            writeRawLines(ListJson);
        }
        private async Task<string> ReadJsonFileAsync()
        {
            System.Reflection.Assembly assembly = typeof(TablesViewModel).Assembly;
            using Stream stream = assembly.GetManifestResourceStream("XamarinXMvvm.Core.Demo_toys_db.json");
            if (stream == null)
            {
                System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: Unable to find Demo_toys_db.json");
                return "";
            }
            System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: Demo_toys_db.json read successfully");
            using var reader = new StreamReader(stream);
            {
                return await reader.ReadToEndAsync().ConfigureAwait(false);
            }
        }
        private void writeRawLines(IEnumerable<JsonItem> list)
        {
            if (list.Count() != 0)
            {
                foreach (JsonItem item in list)
                {
                    foreach (System.Reflection.PropertyInfo property in item.GetType().GetProperties())
                    {
                        Rawjson += $"{property.Name}: {property.GetValue(item)}" + Environment.NewLine;
                    }
                    Rawjson += Environment.NewLine;
                }
                // Deleting unnecessary last lines
                Rawjson = Rawjson.Substring(0, Rawjson.LastIndexOf(Environment.NewLine));
                Rawjson = Rawjson.Substring(0, Rawjson.LastIndexOf(Environment.NewLine));
            }
            else
                Rawjson = "Unable to read Demo_toys_db.json";
        }
        #endregion
    }
}
