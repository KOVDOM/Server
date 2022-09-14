using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;


namespace Server
{
    internal class Program
    {
        static string ipadd="127.0.0.1";
        static int port = 5000;
        static IPAddress ip=null;
        static TcpListener list = null;
        
        static void comm()
        {
            TcpClient client=list.AcceptTcpClient();
            ClientComm cl1= new ClientComm(client);
            Thread t1 = new Thread(cl1.CommStart);
            Console.WriteLine("Kliens csatlakozott!");
            t1.Start();
        }
        static void Main(string[] args)
        {
            ip = IPAddress.Parse(ipadd);
            list = new TcpListener(ip, port);
            list.Start();
            Console.WriteLine("A szerver ip címe: {0} a port: {1}",ipadd,port);
            comm();
        }
    }
}
