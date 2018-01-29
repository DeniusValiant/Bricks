using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonGenerators.Singletons
{
    public class GeneratorsManager : GenericSingleton<GeneratorsManager>
    {
        private GeneratorsManager() { }
    }
}
