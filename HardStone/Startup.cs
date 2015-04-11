using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HardStone.Startup))]
namespace HardStone
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
