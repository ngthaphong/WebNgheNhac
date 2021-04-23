USE [QLNHAC]
GO
/****** Object:  Table [dbo].[BAIHAT]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIHAT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URLBaiHat] [varchar](max) NULL,
	[TenBH] [nvarchar](max) NULL,
	[CaSi] [nvarchar](50) NULL,
	[MaTL] [int] NULL,
	[TacGia] [nvarchar](100) NULL,
	[NgayCapNhat] [date] NULL,
	[LoiBaiHat] [nvarchar](max) NULL,
	[LuotXemBaiHat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANGCAO]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANGCAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCongTy] [nvarchar](200) NOT NULL,
	[HinhMinhHoa] [varchar](20) NULL,
	[Href] [varchar](max) NULL,
	[NgayBatDau] [date] NULL,
	[NgayHetHan] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[HoTen] [nvarchar](50) NULL,
	[TenDN] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[DienThoai] [varchar](20) NULL,
	[Tuoi] [int] NULL,
	[NgayDangKy] [date] NULL,
	[Email] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[CauHoiBaoMat] [nvarchar](50) NULL,
	[CauTraLoi] [nvarchar](50) NULL,
	[QuyenAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEO]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEO](
	[MaVD] [int] IDENTITY(1,1) NOT NULL,
	[URLVideoL] [varchar](max) NULL,
	[URLVideoN] [varchar](max) NULL,
	[TenVD] [nvarchar](max) NULL,
	[MaTL] [int] NULL,
	[TacGia] [nvarchar](100) NULL,
	[CaSi] [nvarchar](50) NULL,
	[NgayCapNhat] [date] NULL,
	[LuotXemVideo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEUCAU]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUCAU](
	[STTYC] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [varchar](50) NOT NULL,
	[MaTL] [int] NULL,
	[Loai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[STTYC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAIHAT] ON 

INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (1, N'mp3file/NhuPhutBanDau.mp3', N'Như Phút Ban Đầu', N'Noo Phước Thịnh', 2, N'Đỗ Hiếu', CAST(N'2016-10-25' AS Date), N'Vì em anh như người điên mất trí
Vì em anh như chẳng còn biết nghĩ suy
Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào
Dù mai sau kia gập gềnh sóng gió
Dù mai sau kia dòng đời có cuốn xoay
Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu

Nhìn vào sâu đôi mắt
Em có biết trong anh muốn nói điều gì
Rằng từ lâu đôi ta đã thuộc về nhau
Người làm anh gục ngã
Từ ánh mắt đôi môi cử chỉ mỉm cười
Rằng từ đây anh muốn bên em suốt đời

Vì em anh như người điên mất trí
Vì em anh như chẳng còn biết nghĩ suy
Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào
Dù mai sau kia gập gềnh sóng gió
Dù mai sau kia dòng đời có cuốn xoay
Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu

Dẫu ngày mưa hay ngày nắng chói chang
Em vẫn cứ dịu dàng, vẫn muốn bên em thật lâu
Phút đầu tiên em đã lấy mất đi linh hồn
Người làm anh xót xa con tim ngỡ ngàng
Vì em anh như người điên mất trí
Vì em anh như chẳng còn biết nghĩ suy
Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào
Dù mai sau kia gập gềnh sóng gió
Dù mai sau kia dòng đời có cuốn xoay
Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu

Vì em anh như người điên mất trí
Vì em anh như chẳng còn biết nghĩ suy
Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào
Dù mai sau kia gập gềnh sóng gió
Dù mai sau kia dòng đời có cuốn xoay
Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu

Vì em anh như người điên mất trí
Vì em anh như chẳng còn biết nghĩ suy
Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào
Dù mai sau kia gập gềnh sóng gió
Dù mai sau kia dòng đời có cuốn xoay
Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu', 26)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (2, N'mp3file/DuyenPhan.mp3', N'Duyên Phận', N'Hiền Thục', 3, N'Hiền Thục', CAST(N'2016-10-24' AS Date), N'Phận là con gái, chưa một lần yêu ai 
Nhìn về tương lai mà thấy như sông rộng đường dài 
Cảnh nhà neo đơn, bầy em chưa lớn trĩu đôi vai gánh nhọc nhằn 
Thầy mẹ thương em nhờ tìm người se duyên 
Lòng cầu mong em đậu bến cho yên một bóng thuyền 
Lứa đôi tình duyên còn chưa lưu luyến 
Sợ người ta đến em khóc sau bao lời khuyên. 

[ĐK:] 

Chưa yêu lần nào biết ra làm sao 
Biết trong tình yêu như thế nào 
Sông sâu là bao nào đo được đâu 
Lòng người ta ai biết có dài lâu 
Qua bao thời gian sống trong bình an 
Lỡ yêu người ta gieo trái ngang 
Nông sâu tùy sông làm sao mà trông 
Chưa đỗ bến biết nơi nào đục trong 

Rồi người ta đến theo họ hàng đôi bên 
Một ngày nên duyên một bước em nên người vợ hiền 
Bỏ lại sau lưng bầy em ngơ ngác đứng trông theo mắt đượm buồn 
Thầy mẹ vui hơn mà lệ tràn rưng rưng 
Dặn dò con yêu phải sống theo gia đạo bên chồng 
Bước qua dòng sông hỏi từng con sóng 
Đời người con gái không muốn yêu ai được không?', 8)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (3, N'mp3file/ChuVoiConOBanDon.mp3', N'Chú Voi Con Ở Bản Đôn ', N' Bé Ngọc Ngân', 4, N'Phạm Tuyên', CAST(N'2016-10-23' AS Date), N'chú voi con bản đôn 
chưa có ngà nên còn trẻ con 
từ rừng già chú đến với người 
vẫn ham ăn với lại ham chơi. 

voi con ơi,voi con ơi 
mau lớn nhanh 
có đôi ngà to 
có sức đi khắp miền rừng xa 
kéo gỗ cho buôn làng của ta. 

chú voi con thật là khôn 
quen thiếu nhi khắp vùng bản đôn 
đầu gật gù lúc lắc cái vòi 
kéo đung đưa theo nhịp chiêng vui. 

voi con ơi,voi con ơi 
mau lớn nhanh có thân mình to 
khắp chốn tây nguyên gần nhiều voi 
góp sức xây buôn làng đẹp tươi', 1)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (4, N'mp3file/DoWhatYouWant.mp3', N'Do What You Want (QMX Mix)', N'Châu Đăng Khoa, Karik', 5, N'Châu Đăng Khoa', CAST(N'2016-10-22' AS Date), N'Hãy cứ khát khao hãy cứ dại khờ 
Hãy cứ ước mơ mặc ai kệ ai hững hờ 
Hãy cứ đam mê hãy cứ vụng về 
Vì cuộc sống này là thế 
Hãy cứ bước đi không hối hận gì 
Hãy cứ hát lên để cho mọi người lắng nghe 
Hãy xóa tan đi khoảng cách ngại ngần 
Vì mình chỉ một lần sống thế nên 
Vô tư quên đi đắn đo gì 
Đam mê quên đi lắng lo gì 
Say mê quên đi chẳng ngại ngần 
Ai ai cũng chỉ sống một lần 

Cho ta chút ánh sáng 
(vươn xa hết con đường dài) 
Gửi ta chút lạc quan 
(che chở niềm tin ngày mai) 
Nếu như ta là bạn 
(đôi chân sẽ không dừng lại) 
Tiến tới phía trước… 
Cứ cứ thế ta bước để 1 ngày thế giới họ sẽ biết ta là ai 
Tuổi trẻ khắc ghi bao chuyện động trời 
Ngông cuồng vẫn để đam mê rong chơi 
Mặc bao nhiêu đúng sai ngay trong đời 
Ta luôn đổi mới khi cả giông tới 
Bước đi ý chí…mượt mà… 
Ngăn cản cách mấy…vượt qua 
Ta làm điều ta thích để đời thích điều ta làm , biển người không ai lung lay được ta… 
Hôm qua hôm nay ra sao , suy nghĩ tiếp diễn và ta vẫn sáng tạo 
Càng nhiều lời nói ra vào , càng nhiều khó khăn ta sẽ vươn càng cao 
Sống chỉ 1 lần mà ước mơ cả 1 trời nên hãy làm khi vẫn còn đang thở 
Buông bỏ đam mê 1 phần như khao khát xa 1 đời kiếp người khác gì cảnh dang dở 
Ế ếh ếh ềh oh… vươn xa hết con đường dài 
Ế ếh êh êh oh… che chở niềm tin ngày mai 
Ế ếh ếh ềh oh…đôi chân sẽ không dừng lại 
Tiến tới phía trước…cứ cứ thế ta bước để 1 ngày thế giới họ biết đến ta là ai', 0)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (5, N'mp3file/ThoiGian.mp3', N'Thời Gian', N'MicroWave', 6, N' - MicroWave', CAST(N'2016-11-22' AS Date), N'[V1] Đón nắng sớm khi ta còn mơ mặt trời luôn soi bước đến những nơi còn
 u buồn và cất tiếng hát khi ta còn yêu một ngày luôn khao khát một ngày một ngày không đêm đi trong hư vô bàn tay giá lạnh và trái tim khơi nguồn để gió cuốn đi 

Chorus:Thời gian vụt qua những yêu thương trong đời vẫn còn đây và luôn đắm say ngày ta còn yêu những bước chân em mang ngày buồn cùng gió vụt bay và lời ca vang mãi 

[V2] Lòng mãi nhớ đến khi ta còn thơ chuyện thần tiên nuôi sống những tâm 
hồn còn ngây dại và lúc cất bước xa con đường xưa một mình em thao thức chờ đợi một ngày không xa và trong cơn mơ này nhiều lúc nước mắt em tuôn dài chờ đón nắng mai 

Chorus: Thời gian vụt qua những yêu thương trong đời vẫn còn đây và luôn đắm say ngày ta còn yêu những bước chân em mang ngày buồn cùng gió vụt bay và lời ca vang mãi (3x)', 1)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (6, N'mp3file/WeHearU.mp3', N'We Hear U (Single)', N'Karik', 7, N'Karik', CAST(N'2016-09-10' AS Date), N'Mở mắt ra ! lại 1 ngày nữa hoàng hôn ghé qua 
Hàng trăm câu hỏi mâu thuẫn vẫn níu thân này chưa muốn né ra 
Đường thành công còn lại bao xa ? 
Còn bao lâu thân này gục ngã ? 
Vô chừng với mọi đáp án , trái tim ngày càng trở nên nhẹ dạ ! 
Không lẽ đây ! chính là 1 kết cục bất ngờ ? 
Không lẽ đây ! chính là ngày kết thúc giấc mơ ? 
Không ! Ta phải đi tiếp vì con đường đó giờ đã không còn thể nào quay lại 
Lối thoát duy nhất lúc này…là khẳng định ta là ai ! 
Ta vẫn sẽ dẫn lối cho nỗi buồn đến trái tim mình 1 cách chân thật 
Xem thất bại và thành công từ nay về sau mãi là đôi bạn thân nhất 
Dù có ra sao , có ra sao , có ra sao với ta vẫn vậy 
Vác mọi cảm xúc trên vai ta quyết mãi chạy đến những đỉnh cao ta chưa được thấy 
Thôi nghi ngờ bản thân , thôi sợ khó khăn cản chân 
Ghi nhớ rằng mình cứng cáp…hơn những gì mình biết hàng vạn lần 
Gạt bỏ nỗi lo sợ bấy lâu vẫn treo trên ngàn cân 
Ngẩng cao đầu tìm lại chính mình cho đến khi “tàn trận”… 

CHORUS: 
We hear U 
We see U 
We learn from U 
It’s all about U 
To the brilliant U (2x) 
Ta từng khóc , cười , trăn trở nhiều đêm vì con đường của ngày mai 
Từng mệt mỏi vì hành trình đi tìm câu trả lời rằng "Ta là ai" 
Nhưng đó là chuyện ngày hôm qua , những điều không còn tồn tại 
Hôm nay đã khác...ta vẫn độc bước trên đường dài 
Tự mình xây lên tượng đài ! không còn như những ngày đầu tiên 
Sợ thất bại...hay ngại khó khăn làm phiền 
Dặn lòng nếu như không phải lúc này thì sẽ mãi mãi chẳng còn cơ hội 
Chẳng thể để bản thân mình chìm đắm quá lâu trong những đêm dài lạc lối 
Và ta phải vững tin tuyệt đối , ta chính là điều tuyệt vời nhất 
Không điều gì có thể can ngăn nghị lực vô hình của ta giữa trời đất 
Dám thất bại , dám đứng lên , dám thay đổi bản thân vì mơ ước 
Dám đương đầu với tất cả rào cản chỉ để đổi lấy hào quang ở phía trước 
Sẽ luôn luôn vững bước như thể...đó là ngày cuối cùng 
Niềm tin sẽ mãi đồng hành , sẽ không bao giờ dễ dàng bị thao túng 
Ta...không cho phép bản thân mình gượng lại 
Ta...chính là câu trả lời cho tương lai 

bridge: 
U laugh, U cry 
U love, U lose 
U play, U fight 
U work, U hear 
U question why, Why Whyyy', 0)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (7, N'mp3file/WeDontTalkAnymore.mp3', N'We Dont Talk Anymore', N'Charlie Puth, Selena Gomez', 8, N'Charlie Puth', CAST(N'2016-10-25' AS Date), N'Đang cập nhật', 1)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (8, N'mp3file/RiengMotGocTroi.mp3', N'Riêng Một Góc Trời', N'Hòa Tấu', 9, N'Ngô Thụy Miên', CAST(N'2014-02-22' AS Date), N'', 5)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (9, N'mp3file/ConAiVoiAi.mp3', N'Còn Ai Với Ai', N'Trịnh Vĩnh Trinh', 10, N'Trịnh Công Sơn', CAST(N'2016-10-25' AS Date), N'Không có em còn tôi với ai 
Không có em lạnh giá đường vui 
Không có em ngồi đứng nơi này 
Không có em còn ai với ai 

Em đã đi chìm khuất đã theo 
Em đã như ngọn gió quạnh hiu 
Không có em đường cũ tiêu điều 
Em đã xa lìa trong nỗi đau 

Em đi biền biệt muôn trùng quá, 
Từng cơn gió và từng cơn gió 
Em đi gió lạnh bến xa bờ 
Từng nỗi nhớ trùng trùng nỗi nhớ 
à ... à ... ơi ... à 

Không có em đường xa quá xa 
Em đã thôi cười giữa chiều mưa 
Em đã đi đời có đâu ngờ 
Mang trái tim mùa xuân héo khô 

Không có em buồn vui với ai 
Không có em lụa gấm nhạt phai 
Ai đã chia người mãi xa người 
Ai giết đi tình đang lứa đôi', 10)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (10, N'mp3file/AuditoryHallucination.mp3', N'Auditory Hallucination (Kill Me Heal Me OST Part.1)', N'Jang Jae In, NaShow', 1, N'Chưa rõ', CAST(N'2014-03-03' AS Date), N'[Rap1]
nae ane sumeun geotdeuri mariya
nal cham manhi byeonhage haetjanha
nal jamjaeugo du son mukkgoseon
eoduun bange gadwo nwatjanha
irheobeorin siganui jogakdeul
naega beorin sarangui gieokdeul
sakjedoego beoryeojin che
kkeopdegiman namatjanha
amugeotdo moreun che
nan geujeo sorichyeotgo
geujeo geu gieokppuniji
eoreumcheoreom chagawotdeon nae maeumdo
jago namyeon ichyeo jigetji
beoseonago sipeo
nal ok joeneun gotongeseo
nuga nareul kkeonae jwo
i sangcheoro gadeukhan nae yeonghon sogeseo

[Chorus]
gipge muldeurin bamhaneureun
tteonaji motan neoui moseubi
jamdeun nareul kkaeugo naseo
dasi ibeul matchugo

saranghae soksagideon
ne moksoriga neoui hyanggiga
maeil gwitgae deullyeoonda
neon eodi inneunde

[Rap2]
neon bol su eomneun gose gamchwotgo
nal daesinhaeseo batneun gotong
nae bunnoga hana doemyeon
gipge jamdeureo irheobeorin gieogeul jjotgo
neo anin jinjja nal chatgo sipeodo
nae gaseume deun meongi neomudo keo
gamchwobwado nae ane sumeoitdeon
nomdeuri natana jameul kkaewo
kkeumjjikhaetdeon nae gieok jeopyeoneseo
neol majuhaesseotgo
nae irheobeorin gamjeongkkaji gamssajumyeo
neolbeureojin nal ireukyeo jwosseo
kkok jabeun son nochi anheuryeo
angmongui sigan kkaekkeusi jiuryeo
anganhim sseugo isseo
naega nal gadwodun igoseseo

[Bridge]
eodumeul geodeo
neoreul chatgo sipeunde
neol manjil sudo
angil sudo eomneunde

[Rap3]
nal jibaehaneun geon
nae ane salgo inneun geureon nomdeuri anya
nal chiyuhaneun geon dokhan yagi anya
danji sarang du geulja
gwitgae deullineun moksorin
irheobeorin nareul kkaeugo
momeul gamssago ibeul matchugo nan dwi
sarajigo deoneun bol su eobtjanha

[Chorus]
gipge muldeurin bamhaneureun
tteonaji motan neoui moseubi
jamdeun nareul kkaeugo naseo
dasi ibeul matchugo

saranghae soksagideon
ne moksoriga neoui hyanggiga
maeil gwitgae deullyeoonda
neon eodi inneunde

[Chorus3]
daheul su eomneun bamhaneuren
dwidoraseoneun neoui moseubi
jichin nal ireoke beoseona
geurimcheoreom mandeunda

mianhae neol butjapgo
meoreojiji ma aetage bulleo
dasi boiji annneun seulpeume
tto nunmulman heulleo', 2)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (11, N'mp3file/LanhLeo.mp3', N'Lạnh Lẽo/ 涼涼(Tam Sinh Tam Thế: Thập Lý Đào Hoa OST)', N'Dương Tông Vỹ, Trương Bích Thần', 1, N'Chưa rõ', CAST(N'2010-03-03' AS Date), N'入夜漸微涼 繁花落地成霜 
Ruỳè jiàn wēi liáng fánhuā luòdì chéng shuāng 
Đêm lạnh, phồn hoa rơi xuống đất thành sương 

你在遠方眺望 耗盡所有暮光 
nǐ zài yuǎnfāng tiàowàng hào jìn suǒyǒu mù guāng 
Người trông về phương xa, ánh hoàng hôn kiệt quệ 

不思量 自難相忘 
bù sīliang zì nàn xiāng wàng 
Không tưởng niệm, tự thấy chẳng thể quên 

夭夭桃花涼 前世你怎捨下 
yāo yāo táohuā liáng qiánshì nǐ zěn shě xià 
Mơn mởn hoa đào lạnh, chuyện kiếp trước người làm sao buông xuống? 

這一海心茫茫 還故作不痛不癢不牽強 
zhè yī hǎi xīn mángmáng hái gù zuò bù tòng bù yǎng bù qiānqiǎng 
Trái tim mịt mờ này còn giả vờ không đau đớn, không gượng ép 

都是假象 
dōu shì jiǎxiàng 
Đều là sự giả dối 

[Chorus]: 
涼涼夜色 為你思念成河 
liáng liáng yèsè wèi nǐ sīniàn chénghé 
Bóng đêm lạnh vì nỗi tưởng niệm của người thành sông 

化作春泥 呵護著我 
huà zuò chūnní hēhùzhe wǒ 
Hoá thành bùn xuân che chở ta 

淺淺歲月 拂滿愛人袖 
qiǎn qiǎn suìyuè fú mǎn àirén xiù 
Năm tháng nhàn nhạt, phất mãn tay áo vợ chồng 

片片芳菲 入水流 
piàn piàn fāngfēi rù shuǐliú 
Từng chút mùi hương hoa cỏ hoà vào nước 

涼涼天意 瀲灩一身花色 
liáng liáng tiānyì liàn yàn yīshēn huāsè 
Thiên ý lạnh lẽo, người một thân sắc hoa 

落入凡塵 傷情著我 
luò rù fánchén shāng qíngzhe wǒ 
Rơi vào phàm trần, mưu kế thụ thương 

生劫易渡 情劫難了 
shēng jié yì dù qíng jiénànle 
Sinh kiếp dễ dàng, tình kiếp gian nan 

折舊的心 還有幾分前生的恨 
zhéjiù de xīn hái yǒu jǐ fēn qián shēng de hèn 
Tâm đã hao mòn, còn mấy phần hận của kiếp trước? 

2. 也曾鬢微霜 也曾因你迴光 
yě céng bìn wēi shuāng yě céng yīn nǐ huí guāng 
Cũng từng tóc mai như sương, cũng từng có ánh sáng người trở về 

悠悠歲月漫長 怎能浪費時光 
yōuyōu suìyuè màncháng zěn néng làngfèi shíguāng 
Năm tháng dài đằng đẵng, sao có thể lãng phí thời gian? 

去流浪 去換成長 
qù liúlàng qù huàn chéngzhǎng 
Gạt đi lưu lạc, không còn thay đổi để trưởng thành 

灼灼桃花涼 今生愈漸滾燙 
zhuózhuó táohuā liáng jīnshēng yù jiàn gǔn tàng 
Rực rỡ hoa đào lạnh, kiếp này càng thêm sôi sục 

一朵已放心上 足夠三生三世背影成雙 
yī duo yǐ fàngxīn shàng zúgòu sān shēng sānshì bèiyǐng chéng shuāng 
Một đoá cũng đủ cho hai bóng lưng kết thành vợ chồng 

在水一方 
zài shuǐ yīfāng 
Ơ nơi biển nước 

3. 涼涼三生三世 恍然如夢 
liáng liáng sān shēng sānshì huǎngrán rú mèng 
Ba đời ba kiếp lạnh lẽo, chợt bừng tỉnh như mộng 

須臾的年 風幹淚痕 
xūyú de nián fēng gàn lèihén 
Năm tháng qua đi, hong khô nước mắt 

若是回憶不能再相認 
ruòshì huíyì bùnéng zài xiāng rèn 
Nếu như trong hồi ức lần nữa không thể quen biết nhau 

就讓情分 落九塵 
jiù ràng qíng fèn luò jiǔ chén 
Hãy để cho tình cảm rơi xuống cửu trần 

涼涼十里 何時還會春盛 
liáng liáng shílǐ héshí hái huì chūn shèng 
Mười dặm lạnh lẽo, bao giờ xuân thịnh 

又見樹下 一盞風存 
yòu jiàn shùxià yī zhǎn fēng cún 
Lại thấy dưới tàng cây một ngọn gió 

落花有意 流水無情 
luòhuā yǒuyì liúshuǐ wúqíng 
Hoa rơi hữu ý, nước chảy vô tình 

別讓恩怨愛恨 涼透那花的純 
bié ràng ēnyuàn ài hèn liáng tòu nà huā de chún 
Đừng để cho ân oán, yêu hận làm lạnh lẽo sự thuần khiết của hoa', 1)
INSERT [dbo].[BAIHAT] ([Id], [URLBaiHat], [TenBH], [CaSi], [MaTL], [TacGia], [NgayCapNhat], [LoiBaiHat], [LuotXemBaiHat]) VALUES (12, N'mp3file/LoveOverflowing.mp3', N'Love Overflowing From My Heart (OST Nụ Hôn Định Mệnh', N'Putthipong Sriwat (Leo Putt)', 1, N'Chưa rõ', CAST(N'2015-10-21' AS Date), N'เคยมองแค่เพียงไกลๆ
Koey maung kae piang glai glai
I only watched you from afar
Em chỉ có thể đứng nhìn anh từ xa

ทำได้แค่เพียงเท่านั้น
Tum dai kae piang tao nun
That was all I could do
Đó là những gì em có thể làm

นี่ฉันฝันไปรึเปล่า
Nee chun fun bpa reu bplao
Am I dreaming?
Em đang mơ sao ?

ที่ได้มายืนข้างๆ เธอ
Tee dai mah yeun kahng kahng tur
To be able to stand next to you?
Mình có thể đi cạnh anh à ?
.
ไม่เคยจะคิดเลยว่าเธอจะอยู่ตรงนี้
Mai koey ja kit loey wah tur ja yoo dtrong nee
I never imagined that you’d be here
Em chưa bao giờ nghĩ rằng anh sẽ ở cạnh đây

รู้ไหมทั้งใจที่มีอยากบอกว่ารักเพียงใด
Roo mai tung jai tee mee yahk bauk wah ruk piang dai
Do you know my entire heart wants to tell you how much I love you?
Anh có biết rằng em muốn nói em yêu anh nhiều như thế nào không ?
.
ได้ยินบ้างไหมได้ยินหรือเปล่า
Dai yin bahng mai dai yin reu bplao
Can you hear it ? Can you hear it?
Anh có nghe nó không ? Có nghe được không ?

หนึ่งคำที่มันล้นใจ
Neung kum tee mun lon jai
The one word that’s overflowing from my heart
Câu nói chan chứa từ trái tim em
.
ใกล้กันแค่นี้ได้ยินบ้างไหม
Glai gun kae nee dai yin bahn gmai
Just being this close, can you hear it?
Gần lại đây hơn đi , giờ anh có nghe được không ?

คือเสียงหัวใจของฉันเอง
Keu siang hua jai kaung chun eng
It’s the voice of my heart
Giọng nói từ trái tim của em
.
ได้ยินบ้างไหมได้ยินหรือเปล่า
Dai yin bahng mai dai yin reu bplao
Can you hear? Can you hear?
Anh có nghe nó không ? Có nghe được không ?

ใจฉันแอบบอกว่ารัก
Jai chun aep bauk wah ruk
My heart is secretly telling you it loves you
Trái tim em âm thầm nói rằng nó yêu anh đó

รักเธอเหลือเกินมาเนิ่นนาน
Ruk tur leua gern mah nern nahn
I’ve loved you so much for so long
Em đã yêu anh rất nhiều rất lâu

หวังว่าเธอจะได้ยินฉันรักเธอ
Wung wah tur ja dai yin chun ruk tur
I hope that you can hear that I love you
Em mong anh có thể hiểu
.
คนเดียวที่ฉันรอคอย
Kon diao tee chun ror koy
The one person I’ve been waiting for
Người mà em mong chờ

คนเดียวที่อยู่ในฝัน
Kon diao tee yoo nai fun
The one person of my dreams
Người luôn xuất hiện trong giấc mơ

แอบมองทุกๆ วัน
Aep maung took took wun
Secretly looking at you every day
Âm thầm dõi theo anh mỗi ngày

เป็นคนเดียวที่ฉันฝังใจ
Bpen kon diao tee chun fung jai
You’re the only person who I have imprinted in my heart
Trái tim em đã khắc khắc sâu hình ảnh của anh mất rồi', 0)
SET IDENTITY_INSERT [dbo].[BAIHAT] OFF
GO
SET IDENTITY_INSERT [dbo].[QUANGCAO] ON 

INSERT [dbo].[QUANGCAO] ([STT], [TenCongTy], [HinhMinhHoa], [Href], [NgayBatDau], [NgayHetHan]) VALUES (1, N'mobile-phones', N'QC1.PNG', N'http://consumer.huawei.com/vn/mobile-phones/features/y6ii-vn.htm?utm_source=zingmp3&utm_campaign=huaweigr5mini2016&utm_medium=desktopbanner', CAST(N'2016-10-31' AS Date), CAST(N'2016-12-12' AS Date))
INSERT [dbo].[QUANGCAO] ([STT], [TenCongTy], [HinhMinhHoa], [Href], [NgayBatDau], [NgayHetHan]) VALUES (2, N'lazada', N'QC2.PNG', N'http://www.lazada.vn/rohto-mentholatum-vietnam-acnes-combo/?utm_source=Rohto&utm_medium=MicroAd', CAST(N'2016-11-20' AS Date), CAST(N'2016-12-12' AS Date))
INSERT [dbo].[QUANGCAO] ([STT], [TenCongTy], [HinhMinhHoa], [Href], [NgayBatDau], [NgayHetHan]) VALUES (3, N'Thế giới di động', N'QC3.jpg', N'https://www.thegioididong.com/dtdd-oppo', CAST(N'2017-09-01' AS Date), CAST(N'2016-12-12' AS Date))
INSERT [dbo].[QUANGCAO] ([STT], [TenCongTy], [HinhMinhHoa], [Href], [NgayBatDau], [NgayHetHan]) VALUES (4, N'Thế giới di động', N'QC4.PNG', N'https://www.facebook.com/8899jobbank/?ref=bookmarks', CAST(N'2016-10-31' AS Date), CAST(N'2016-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[QUANGCAO] OFF
GO
INSERT [dbo].[THANHVIEN] ([HoTen], [TenDN], [MatKhau], [DienThoai], [Tuoi], [NgayDangKy], [Email], [DiaChi], [GioiTinh], [NgaySinh], [CauHoiBaoMat], [CauTraLoi], [QuyenAdmin]) VALUES (N'Nguyễn Thị Hoàng Hà', N'admin', N'12345', N'01664608444', 20, CAST(N'2016-10-10' AS Date), N'hanth25596@gmail.com', N'Bình Dương', N'Nữ', CAST(N'1996-05-25' AS Date), N'', N'', 0)
INSERT [dbo].[THANHVIEN] ([HoTen], [TenDN], [MatKhau], [DienThoai], [Tuoi], [NgayDangKy], [Email], [DiaChi], [GioiTinh], [NgaySinh], [CauHoiBaoMat], [CauTraLoi], [QuyenAdmin]) VALUES (N'Nguyễn Hoàng Giang', N'hoanggiang', N'12345', N'01664608333', 23, CAST(N'2016-10-10' AS Date), N'aaa@gmail.com', N'Bình Dương', N'Nam', CAST(N'1993-03-26' AS Date), N'', N'', 1)
INSERT [dbo].[THANHVIEN] ([HoTen], [TenDN], [MatKhau], [DienThoai], [Tuoi], [NgayDangKy], [Email], [DiaChi], [GioiTinh], [NgaySinh], [CauHoiBaoMat], [CauTraLoi], [QuyenAdmin]) VALUES (N'Phan Hoàng An', N'phanhoangan21', N'0907360860', N'01664608333', 23, CAST(N'2016-10-10' AS Date), N'aa@gmail.com', N'Bình Dương', N'Nữ', CAST(N'1993-03-26' AS Date), N'', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (1, N'Nhạc Phim')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (2, N'Nhạc Trẻ')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (3, N'Trữ Tình')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (4, N'Thiếu nhi')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (5, N'Dance Việt')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (6, N'Rock Việt')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (7, N'Rap/Hip Hop Việt')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (8, N'Pop')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (9, N'Không lời')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (10, N'Nhạc Trịnh')
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[VIDEO] ON 

INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (1, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/K8dNPVVBvX8" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/K8dNPVVBvX8" frameborder="0"></iframe>', N'Tổng hợp nhạc phim Mây Họa Ánh Trăng(Moonlight Drawn by Clouds OST part 1,2,3,4,5)', 1, N'Nhiều tác giả', N'Nhiều ca sĩ', CAST(N'2016-10-25' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (2, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/EOWXlT8MStM" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/EOWXlT8MStM" frameborder="0"></iframe>', N'Tổng hợp nhạc phim Người Tình Ánh Trăng( Moon lovers OST part 1,2,3,4)', 1, N'Nhiều tác giả', N'Nhiều ca sĩ', CAST(N'2016-10-25' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (3, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/DiAPHAWgUqA" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/DiAPHAWgUqA" frameborder="0"></iframe>', N'Như Phút Ban Đầu | Noo Phước Thịnh ', 2, N'Đỗ Hiếu', N'Noo Phước Thịnh', CAST(N'2016-10-25' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (4, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/AQm9GDjVdgs" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/AQm9GDjVdgs" frameborder="0"></iframe>', N'Cause I Love You | Noo Phước Thịnh ', 2, N'Đỗ Hiếu', N'Noo Phước Thịnh', CAST(N'2015-10-10' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (5, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/tFlrJaxnPX0" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/tFlrJaxnPX0" frameborder="0"></iframe>', N'Em Là Bà Nội Của Anh | Trọng Hiếu ft. Tăng Nhật Tuệ ', 2, N'Tăng Nhật Tuệ ', N'Trọng Hiếu ft. Tăng Nhật Tuệ', CAST(N'2015-02-22' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (6, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/7llvXSOg-rU" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/7llvXSOg-rU" frameborder="0"></iframe>', N'[Vietsub+ kara] Dẫu biết là sai- Nhạc phim Oan Gia Vườn Trường- Koo Prab Chabab Hua Jai', 1, N'Chưa rõ', N'Chưa rõ', CAST(N'2016-05-05' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (7, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/50Qa3-X23SE" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/50Qa3-X23SE" frameborder="0"></iframe>', N'[MV] Nhạc phim cổ tích một chuyện tình(Karn La Krang Neung Nai Hua Jai ost)', 1, N'Chưa rõ', N'Chưa rõ', CAST(N'2016-09-25' AS Date), 0)
INSERT [dbo].[VIDEO] ([MaVD], [URLVideoL], [URLVideoN], [TenVD], [MaTL], [TacGia], [CaSi], [NgayCapNhat], [LuotXemVideo]) VALUES (8, N'<iframe width="690" height="321" src="https://www.youtube.com/embed/BRaEY7UN5Wk" frameborder="0" allowfullscreen></iframe>', N'<iframe width="200" src="https://www.youtube.com/embed/BRaEY7UN5Wk" frameborder="0"></iframe>', N'[Vietsub+Kara] Anh muốn- Trương Kiệt ', 1, N'Trương Kiệt', N'Trương Kiệt', CAST(N'2013-02-24' AS Date), 0)
SET IDENTITY_INSERT [dbo].[VIDEO] OFF
GO
ALTER TABLE [dbo].[BAIHAT] ADD  DEFAULT ((0)) FOR [LuotXemBaiHat]
GO
ALTER TABLE [dbo].[THANHVIEN] ADD  DEFAULT ((1)) FOR [QuyenAdmin]
GO
ALTER TABLE [dbo].[VIDEO] ADD  DEFAULT ((0)) FOR [LuotXemVideo]
GO
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BaiHat_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[THELOAI] ([MaTL])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BaiHat_TheLoai]
GO
ALTER TABLE [dbo].[VIDEO]  WITH CHECK ADD  CONSTRAINT [FK_Video_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[THELOAI] ([MaTL])
GO
ALTER TABLE [dbo].[VIDEO] CHECK CONSTRAINT [FK_Video_TheLoai]
GO
ALTER TABLE [dbo].[YEUCAU]  WITH CHECK ADD  CONSTRAINT [FK_YeuCau_Thanhvien] FOREIGN KEY([TenDN])
REFERENCES [dbo].[THANHVIEN] ([TenDN])
GO
ALTER TABLE [dbo].[YEUCAU] CHECK CONSTRAINT [FK_YeuCau_Thanhvien]
GO
/****** Object:  StoredProcedure [dbo].[kiemtraquyen]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- thủ tục kiểm tra phân quyền trang web khi đăng nhập
 create proc [dbo].[kiemtraquyen]
@username varchar(50)
as
select QuyenAdmin from THANHVIEN where TenDN = @username
GO
/****** Object:  StoredProcedure [dbo].[login_form]    Script Date: 18/04/21 21:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--thủ tục kiểm tra phân quyền trang web khi đăng nhập
create proc [dbo].[login_form]
@user varchar(50),
@pass varchar(50)
as 
select *from THANHVIEN where TenDN=@user and MatKhau = @pass
GO
