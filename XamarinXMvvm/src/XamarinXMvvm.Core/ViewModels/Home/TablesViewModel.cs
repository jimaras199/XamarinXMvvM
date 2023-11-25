using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using MvvmCross.Binding.BindingContext;
using MvvmCross.ViewModels;
using Newtonsoft.Json;

namespace XamarinXMvvm.Core.ViewModels.Home
{
    public class TablesViewModel : MvxViewModel
    {
        private ITimeService _timeService;
        public string Lorem_Ipsum { get; set; }
        public string Rawjson { get; set; }
        public List<JsonContent> ListJson { set; get; }

        public class JsonContent
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Description { get; set; }
            public decimal Price { get; set; }
            public string Manufacturer { get; set; }
            public string Age_range { get; set; }
            public string Material { get; set; }
            public decimal Weight { get; set; }
            public string Color { get; set; }
            public string Category { get; set; }
        }


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

        public override async Task Initialize()
        {
            await RenderJsonAsync().ConfigureAwait(true);
            _timeService = new TimeService();
            _timeService.OnTimeUpdated += OnTimeUpdated;
            await base.Initialize();
        }

        private async Task RenderJsonAsync()
        {
            var json = await ReadJsonFileAsync();
            ListJson = JsonConvert.DeserializeObject<List<JsonContent>>(json);
            renderRawLines(ListJson);
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

        private void renderRawLines(List<JsonContent> list)
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

        private string _id;

        public string Id { get => _id; set => SetProperty(ref _id, value); }

        private string _name;

        public string Name { get => _name; set => SetProperty(ref _name, value); }

        private string _description;

        public string Description { get => _description; set => SetProperty(ref _description, value); }

        private string _price;

        public string Price { get => _price; set => SetProperty(ref _price, value); }

        private string _manufacturer;

        public string Manufacturer { get => _manufacturer; set => SetProperty(ref _manufacturer, value); }

        private string _material;

        public string Material { get => _material; set => SetProperty(ref _material, value); }

        private string _weight;

        public string Weight { get => _weight; set => SetProperty(ref _weight, value); }

        private string _color;

        public string Color { get => _color; set => SetProperty(ref _color, value); }

        private string _category;

        public string Category { get => _category; set => SetProperty(ref _category, value); }

        private string _age_range;

        public string Age_range { get => _age_range; set => SetProperty(ref _age_range, value); }
    }
}
