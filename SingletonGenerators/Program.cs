using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SingletonGenerators.Singletons;

namespace SingletonGenerators
{
    class Program
    {
        static void Main(string[] args)
        {
            Singleton instance = Singleton.Instance;

            GeneratorsManager gm = GeneratorsManager.Instance;

        }
    }
}
