using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Crossfitbook.Startup))]
namespace Crossfitbook
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
