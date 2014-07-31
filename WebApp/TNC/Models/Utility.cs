using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TNC.Models
{
    public class Utility
    {
        public static string AlphanumericOnlyWithDashes(string GarbageIn)
        {
            //first replace spaces
            GarbageIn = GarbageIn.Replace(' ', '-');
            char[] GI = GarbageIn.ToCharArray();

            string NotGarbage = "-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            char[] NG = NotGarbage.ToCharArray();

            for (int i = 0; i < GI.Length; i++)
            {
                bool GoodBoy = false;
                for (int j = 0; j < NG.Length; j++)
                {
                    if (GI[i] == NG[j])
                    {
                        GoodBoy = true;
                        continue;

                    }

                }

                if (GoodBoy == false) //bad boy
                    GarbageIn = GarbageIn.Replace(GI[i].ToString(), "");

            }

            return GarbageIn;

        }
    }
}