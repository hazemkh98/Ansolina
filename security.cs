using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace Gradute_Ansolina
{
    public class security
    {
        public static string EncryptString(string plaintext)
        {
            byte[] IV = new byte[16];
            byte[] array;
            string Key = "b14ca5898a4e4133bbce2ea2315a1916";


            using (Aes aes=Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(Key);
                aes.IV = IV;
                ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

                using (MemoryStream memoryStream =new MemoryStream())
                {
                    using (CryptoStream cryptoStream=new CryptoStream(memoryStream,encryptor,CryptoStreamMode.Write))
                    {
                        using (StreamWriter streamWriter = new StreamWriter((Stream)cryptoStream))
                        {
                            //Write all data to the stream.
                            streamWriter.Write(plaintext);
                        }
                        array = memoryStream.ToArray();
                    }
                }

            }
                return Convert.ToBase64String(array);
        }
    }
}