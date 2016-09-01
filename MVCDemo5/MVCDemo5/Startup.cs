using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCDemo5.Startup))]
namespace MVCDemo5
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
