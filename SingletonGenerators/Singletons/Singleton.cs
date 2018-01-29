using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonGenerators.Singletons
{
    /// <summary>
    /// ordinary Singleton with Lazy
    /// </summary>
    public class Singleton
    {
        protected Singleton() { }
        private static Singleton _instance;

        public static Singleton Instance
        {
            get
            {
                return _instance ?? (_instance = new Singleton());
            }
        }
    }
}
