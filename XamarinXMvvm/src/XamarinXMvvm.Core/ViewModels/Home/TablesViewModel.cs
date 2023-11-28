using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        private ITimeService _timeService;
        public string Lorem_Ipsum { get; set; }
        public string Rawjson { get; set; }


        public ObservableCollection<JsonContent> ListJson
        {
            get;set;
        }

        private DateTime _currentTime;

        public class JsonContent
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

        // Property to store the current time
        public DateTime CurrentTime
        {
            get => _currentTime;
            set => SetProperty(ref _currentTime, value);
        }

        private void OnTimeUpdated(object sender, DateTime currentTime)
        {
            CurrentTime = currentTime;
        }

        public override async Task Initialize()
        {
            await base.Initialize();
            await RenderJsonAsync().ConfigureAwait(false);

            _timeService = new TimeService();
            _timeService.OnTimeUpdated += OnTimeUpdated;

            Console.WriteLine("ListJson items: " + ListJson.Count());
            Console.WriteLine("ModelView Initialize done");
        }

        private async Task RenderJsonAsync()
        {
            ListJson = new ObservableCollection<JsonContent>();
            var json = await ReadJsonFileAsync().ConfigureAwait(true);
            JsonConvert.DeserializeObject<List<JsonContent>>(json).ForEach(item => ListJson.Add(item));
            Console.WriteLine("LisJson items: " + ListJson.Count());
            renderRawLines(ListJson);
            Console.WriteLine("ModelView RenderJsonAsync done");
        }

        private async Task<string> ReadJsonFileAsync()
        {
            System.Reflection.Assembly assembly = typeof(TablesViewModel).Assembly;
            using Stream stream = assembly.GetManifestResourceStream("XamarinXMvvm.Core.Demo_toys_db.json");
            using var reader = new StreamReader(stream);
            {
                return await reader.ReadToEndAsync().ConfigureAwait(false);
            }
        }

        private void renderRawLines(IEnumerable<JsonContent> list)
        {
            foreach (JsonContent item in list)
            {
                foreach (System.Reflection.PropertyInfo property in item.GetType().GetProperties())
                {
                    Rawjson += $"{property.Name}: {property.GetValue(item)}" + Environment.NewLine;
                }
                Rawjson += Environment.NewLine;
            }
            // Deleting unnecessary last new lines.
            Rawjson = Rawjson.Substring(0, Rawjson.LastIndexOf(Environment.NewLine));
            Rawjson = Rawjson.Substring(0, Rawjson.LastIndexOf(Environment.NewLine));
        }
    }
}
