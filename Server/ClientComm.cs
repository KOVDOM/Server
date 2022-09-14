using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Net.Sockets;
using Org.BouncyCastle.Crypto;
using Org.BouncyCastle.Security;

namespace Server
{
    internal class ClientComm
    {
        private StreamReader sr = null;
        private StreamWriter sw = null;

        public ClientComm(TcpClient client)
        {
            sr=new StreamReader(client.GetStream(),Encoding.UTF8);
            sw=new StreamWriter(client.GetStream(),Encoding.UTF8);
        }

        public void CommStart()
        {
            sw.WriteLine("Server neve: Tesztszerver 1");
            sw.Flush();
            bool vege = false;
            while (!vege)
            {
                string command=sr.ReadLine();
                string[] darabol=command.Split('|');

                switch (darabol[0])
                {
                    case "Ossz":
                        {
                            sw.WriteLine(Osszeadas(double.Parse(darabol[1]), double.Parse(darabol[2])));
                            break;
                        }
                    case "Kivon":
                        {
                            sw.WriteLine(Kivonas(double.Parse(darabol[1]), double.Parse(darabol[2])));
                            break;
                        }
                    case "Bye":
                        {
                            vege=true;
                            sw.WriteLine("Viszontlátásra!");
                            Disconnect();
                            break;
                        }
                    default:
                        {
                            sw.WriteLine("Hiba Próbálkozz újra!");
                            break;
                        }
                }

                sw.Flush();
            }
           
        }
        private double Osszeadas(double x, double y)
        {
            return x + y;
        }

        private double Kivonas(double x, double y)
        {
            return x - y;
        }

        private void Disconnect()
        {
            Console.WriteLine("A kliens lecsatlakozott.");
        }
    }
}
