using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;

namespace SingletonGenerators.Singletons
{
    public class GenericSingleton<T> where T : class
    {
        protected GenericSingleton() { }

        //private readonly static T _instance = (T)typeof(T).GetConstructor(
        //        BindingFlags.Instance | BindingFlags.NonPublic,
        //        null,
        //        new Type[0],
        //        new ParameterModifier[0]).Invoke(null);

        private sealed class SingletonCreator<S> where S : class
        {
            private readonly static S _instance = (S)typeof(S).GetConstructor(
               BindingFlags.Instance | BindingFlags.NonPublic,
                null,
                new Type[0],
                new ParameterModifier[0]).Invoke(null);

            public static S CreatorInstance
            {
                get { return _instance; }
            }
        }
        public static T Instance
        {
            get { return SingletonCreator<T>.CreatorInstance; }
        }
    }
}
