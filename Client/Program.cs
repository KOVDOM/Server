using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace Client
{
    internal class Program
    {
        static void Main(string[] args)
        {
            TcpClient client = new TcpClient("localhost",5000);
            StreamReader sr = new StreamReader(client.GetStream(), Encoding.UTF8);
            StreamWriter sw=new StreamWriter(client.GetStream(), Encoding.UTF8);

            bool vege=false;
            string message= sr.ReadLine();
            Console.WriteLine(message);
            while (!vege)
            {
                string command = Console.ReadLine();
                sw.WriteLine(command);
                sw.Flush();

                message= sr.ReadLine();
                Console.WriteLine(message);

                if (message=="Bye")
                {
                    vege = true;
                }
            }
        }
    }
}
