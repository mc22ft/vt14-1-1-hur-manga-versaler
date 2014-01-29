using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace vt14_1_1_hur_manga_versaler.Model
{
    public static class TextAnalyzer
    {


        public static int GetNumberOfCapitals(string value)
        {
            int result = 0;
            foreach (char x in value)
            {
                if (char.IsUpper(x))
                {
                    result++;
                }
            }

            return result;
        }
    }
}