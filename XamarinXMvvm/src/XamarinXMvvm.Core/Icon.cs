using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.IO;
using System.Text;
using SkiaSharp;
using SkiaSharp.Views.Forms;
using Xamarin.Forms;
using SKSvg = SkiaSharp.Extended.Svg.SKSvg;

namespace XamarinXMvvm.Core
{
    namespace SvgXF
    {
        public class Icon : Frame
        {
            #region Private Members

            private readonly SKCanvasView _canvasView = new SKCanvasView();

            #endregion

            #region Bindable Properties

            #region ResourceId

            public static readonly BindableProperty ResourceIdProperty = BindableProperty.Create(
                nameof(ResourceId), typeof(string), typeof(Icon), default(string), propertyChanged: RedrawCanvas);

            public string ResourceId
            {
                get => (string)GetValue(ResourceIdProperty);
                set => SetValue(ResourceIdProperty, value);
            }

            #endregion

            #endregion

            #region Constructor

            public Icon()
            {
                Padding = new Thickness(0);
                BackgroundColor = Color.Transparent;
                HasShadow = false;
                Content = _canvasView;
                _canvasView.PaintSurface += CanvasViewOnPaintSurface;
            }

            #endregion

            #region Private Methods

            private static void RedrawCanvas(BindableObject bindable, object oldvalue, object newvalue)
            {
                var svgIcon = bindable as Icon;
                svgIcon?._canvasView.InvalidateSurface();
            }

            private void CanvasViewOnPaintSurface(object sender, SKPaintSurfaceEventArgs args)
            {
                SKCanvas canvas = args.Surface.Canvas;
                canvas.Clear();

                if (string.IsNullOrEmpty(ResourceId))
                {
                    System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: Unable to find {ResourceId}");
                    return;
                }
                using Stream stream = GetType().Assembly.GetManifestResourceStream(ResourceId);
                var svg = new SKSvg();
                try
                {
                    svg.Load(stream);

                    SKImageInfo info = args.Info;
                    canvas.Translate(info.Width / 2f, info.Height / 2f);

                    SKRect bounds = svg.ViewBox;
                    var xRatio = info.Width / bounds.Width;
                    var yRatio = info.Height / bounds.Height;

                    var ratio = Math.Min(xRatio, yRatio);

                    canvas.Scale(ratio);
                    canvas.Translate(-bounds.MidX, -bounds.MidY);

                    canvas.DrawPicture(svg.Picture);
                    System.Diagnostics.Debug.WriteLine($"[App Log] {DateTime.Now:yyyy-MM-dd HH:mm:ss}: {ResourceId} rendered successfully");
                }
                catch (Exception ex) { Console.WriteLine("An exception occurred: " + ex.Message); }
            }
            #endregion
        }
    }
}
