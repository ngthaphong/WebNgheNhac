<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAside.ascx.cs" Inherits="UC_ucAside" %>
<style type="text/css">
    .aside {
        width: 350px;
    }
</style>
<table class="aside">
    <tr>
        <td> 
            <!-- plugin fanpagefacebook -->          
                <div id="fb-root"></div>
                    <script>
                        (function (d, s, id)
                            {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) return;
                                js = d.createElement(s);
                                js.id = id;
                                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
                                fjs.parentNode.insertBefore(js, fjs);
                        }
                                (document, 'script', 'facebook-jssdk'));
                    </script>

                    <div class="fb-page" data-href="https://www.facebook.com/ngthaphong/" 
                        data-tabs="timeline" 
                        data-height="230" 
                        data-small-header="false" 
                        data-adapt-container-width="true" 
                        data-hide-cover="false" 
                        data-show-facepile="true">
                        <blockquote cite="https://www.facebook.com/ngthaphong/" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/ngthaphong/">Hội yêu nhạc ost</a>   
                        </blockquote></div>       
                    
            <!-- plugin youtube-->
                   <script src="https://apis.google.com/js/platform.js"></script>        
                  <div class="g-ytsubscribe" data-channelid="UCp7L2wFYsUx7fOXjFbkUMsQ" data-layout="full" data-count="default"></div>

        </td>
    </tr>
</table>

