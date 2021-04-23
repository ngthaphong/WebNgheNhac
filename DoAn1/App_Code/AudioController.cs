using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;


public class AudioController : ApiController
{
    public string path;
    
    public HttpResponseMessage GetFileContent(string id)
    {
        
        XLDL x = new XLDL();
        string sql = "select URLBaiHat from BAIHAT where Id=" + id;
        path = x.GetDaTaID(sql);

        var httpResponce = Request.CreateResponse();
        httpResponce.Content = new PushStreamContent((Action<Stream, HttpContent, TransportContext>)WriteContentToStream);
        return httpResponce;
    }

    public async void WriteContentToStream(Stream outputStream, HttpContent content, TransportContext transportContext) // 
    {
            var filePath = HttpContext.Current.Server.MapPath("/" + path);
            int bufferSize = 1000;
            byte[] buffer = new byte[bufferSize];
            using (var fileStream = new FileStream(filePath, FileMode.Open, FileAccess.Read, FileShare.Read))
            {
                int totalSize = (int)fileStream.Length;
                while (totalSize > 0)
                {
                    int count = totalSize > bufferSize ? bufferSize : totalSize;
                    int sizeOfReadedBuffer = fileStream.Read(buffer, 0, count);
                try
                {
                    await outputStream.WriteAsync(buffer, 0, sizeOfReadedBuffer);
                }
                catch (Exception e) { }
                    totalSize -= sizeOfReadedBuffer;
                }
            }
    }
}
