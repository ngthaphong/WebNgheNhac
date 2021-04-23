<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="UC_ucMenu" %>
<style type="text/css">
    nav{
        width: 100%;        
        height:40px;
        background: -webkit-linear-gradient(#D87093,#FF69B4,#FF1493);
        background: -o-linear-gradient(#D87093,#FF69B4,#FF1493);
        background: -moz-linear-gradient(#D87093,#FF69B4,#FF1493);
        background: linear-gradient(#D87093,#FF69B4,#FF1493);
        } 
    .hpldoimau{
        text-decoration:none;
        color:white; 
        padding:20px;
                 
    }
    .hpldoimau:hover{
        color:black;
    }
    li{
        list-style-type:none;
       float:left; 
    }
.dropa {
    color: white;
    padding: 16px;  
    border: none;
    cursor: pointer;
    font-size:20px;
    text-decoration: none;
    font-weight: bold;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content ul {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content ul:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropa {
    color:black;    
}
 .quocgia{
    text-decoration: none;
    color: black;
    padding-bottom:15px;
}
 quocgia:hover{
     color:#FF1493;
 }
</style>
<nav>   
     <ul style="height: 39px">
       <li>
            <asp:HyperLink ID="hplTrangchu" CssClass="hpldoimau" runat="server" Font-Bold="True" Font-Size="Larger"  NavigateUrl="~/TrangChu.aspx" >TRANG CHỦ</asp:HyperLink>
        </li>
         <li class ="dropdown">
             <a class="dropa" href="#">THỂ LOẠI</a>
                    <div class="dropdown-content">
                    <ul>
                        <asp:DataList ID="Dltheloai" CellPadding="3" CellSpacing="3" runat="server" Height="105px">
                            <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" CssClass="quocgia" Font-Bold="True" runat="server" NavigateUrl='<%# "~/NhacTheoTheLoai.aspx?MaTL=" + Eval("MaTL") %>' Text='<%# Eval("TenTL") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:DataList>
                   </ul>
                   </div>
               </li>
         <li>
             <asp:HyperLink ID="hplyeucau" CssClass="hpldoimau" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/YeuCauCuaThanhVien.aspx">YÊU CẦU</asp:HyperLink>

         </li>           
         <li>
             <asp:HyperLink ID="hplDangnhapadmin" CssClass="hpldoimau" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Dangnhap.aspx">ĐĂNG NHẬP</asp:HyperLink>

         </li>
        <li>
            <asp:HyperLink ID="hplDangxuatadmin"  CssClass="hpldoimau" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Dangxuat.aspx">ĐĂNG XUẤT</asp:HyperLink>           
        </li>
         
         <li>
             <asp:HyperLink ID="hplDangky" CssClass="hpldoimau" runat="server" Font-Bold="True" Font-Size="Larger" NavigateUrl="~/Dangky.aspx">ĐĂNG KÝ</asp:HyperLink>

         </li>
         <li>
             <asp:Label ID="lbAdmin" CssClass="hpldoimau" runat="server" Text="Admin" Font-Bold="True"  Font-Size="Larger" ForeColor="Black"></asp:Label>
         </li>
    </ul>                              
</nav>
    


