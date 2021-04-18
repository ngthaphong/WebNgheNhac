<%@ Page Title="" Language="C#" MasterPageFile="~/Chitiet.master" AutoEventWireup="true" CodeFile="Chitietnhac.aspx.cs" Inherits="Chitietnhac" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .tblChitietnhac{
            width:100%;
            margin-left:15px;
        }
     .nenLoibh{
         background-color:#e5e2e2;
     }
     #bttop{ padding:5px; 
             text-align:center;                      
             position:fixed;
             cursor:pointer;
             display:none;
             color:black;
             font-size:15px;           
             bottom:35px;
             right:5px;
             font-weight:900
 
 }
     audio { width: 500px; }
 #bttop:hover{
             color:pink;
 }
    </style>
    <!--nút button-->
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js' type='text/javascript'></script>
<script type='text/javascript'>
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() != 0) {
                $('#bttop').fadeIn();
            } else {
                $('#bttop').fadeOut();
            }
        });
        $('#bttop').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
        });
    });
</script>
    <script src="Script/comment.js"></script>
    <script src="Script/Like_share.js"></script>
    <script src="Script/main.js"></script>
    <asp:DataList ID="dlChiTietNhac" runat="server">
        <ItemTemplate>
            <table class="tblChitietnhac">
                <tr>
                    <td colspan="2"></td>                                         
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/notnhac.jpg" />
                        <asp:Label ID="lbTenBH" runat="server" Text='<%# Eval("TenBH") %>' Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr><td colspan="2"></td></tr>
                <tr>
                    <td colspan="2" class="bar-wrapper">
                        <asp:Literal ID="plPlay" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbsangtac" runat="server" Text="Sáng tác:"></asp:Label>                  
                        <asp:Label ID="lbTacgia" runat="server" Text='<%# Eval("TacGia") %>' ForeColor="#333333"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbCaSi" runat="server" Text="Ca Sĩ:"></asp:Label>                  
                       <asp:Label ID="lbTenCaSi" runat="server" Text='<%# Eval("CaSi") %>' ForeColor="#333333"></asp:Label>
                        
                    </td>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/tai_nghe.PNG" />
                        <asp:Label ID="lblxbh" runat="server" Text='<%# Eval("LuotXemBaiHat") %>'></asp:Label> 

                    </td>
                </tr>
                <tr>
                    <td><!-- plugin nút like, share facebook-->
                                 <!-- data-href='<%#"~/Chitietnhac.aspx?Id="+Eval("Id")%>'-->       
                        <div class="fb-like" 
                            data-layout="standard" 
                            data-action="like" 
                            data-size="small" 
                            data-show-faces="true" 
                            data-share="true"></div>
                    </td>
                </tr>
                 <tr>
                    <td>                 
                    </td>
                </tr>
                <tr><td colspan="2">
                 
                          <asp:Label ID="lbloibh" runat="server" Text="Lời bài hát:"></asp:Label>
                          <asp:Label ID="lbTBH" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("TenBH") %>'></asp:Label>
                    </td>
                </tr>
                <tr>                      
                   <td colspan="2" class="nenLoibh">
                     <asp:Label ID="lbLoiBaiHat" CssClass="lblbh" runat="server" Text='<%# Eval("LoiBaiHat").ToString().Replace("\n","<br>") %>'></asp:Label>
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div id='bttop'>>>Đầu trang<<</div>
    <!--plugin comment facebook-->      
    <div id="fb-root"></div>                       
    <div class="fb-comments" data-href='<%#"~/Chitietnhac.aspx?Id="+Eval("Id")%>' data-width="680px" data-numposts="5"></div>
</asp:Content>

