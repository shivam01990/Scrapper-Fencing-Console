USE [ScraperFencing]
GO
/****** Object:  Table [dbo].[Comany]    Script Date: 08/17/2016 18:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comany](
	[ComanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ComanyURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comany] PRIMARY KEY CLUSTERED 
(
	[ComanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comany] ON
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (1, N'Centaur Horse Fence', N' info@centaurhtp.com', N'Alabama', N'http://www.manta.com/c/mx4x3ny/centaur-horse-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (2, N'Chambers StainWorks, LLC', N' Info@ChambersStainWorks.com', N'Alabama', N'http://www.manta.com/c/mxf09py/chambers-stainworks-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (3, N'Five star fencing', N' fivestarfence205@yahoo.com', N'Alabama', N'http://www.manta.com/c/mx4j8ff/five-star-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (4, N'Jenkins Fencing', N'info@jenkins-fencing.com', N'Alabama', N'http://www.manta.com/c/mx2kj4r/jenkins-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (5, N'Eagle Fence Company', N'info@wix.comeaglefenceEag-Fence', N'Alabama', N'http://www.manta.com/c/mm08t0w/eagle-fence-company')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (6, N'A Better Built Fence', NULL, N'Alabama', N'http://www.manta.com/c/mx84jq2/a-better-built-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (7, N'Aegis Fence', NULL, N'Alabama', N'http://www.manta.com/c/mrl76b9/aegis-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (8, N'Tennessee Valley Fence', NULL, N'Alabama', N'http://www.manta.com/c/mmjymwk/tennessee-valley-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (9, N'Cox &amp; Don Fence', N'info@coxanddon-fence.com', N'Alabama', N'http://www.manta.com/c/mx2nd58/cox-don-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (10, N'Chambliss Fence Co.', NULL, N'Alabama', N'http://www.manta.com/c/mmdhkgf/chambliss-fence-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (11, N'4 Corners Fencings', NULL, N'Alabama', N'http://www.manta.com/c/mm55h75/4-corners-fencings')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (12, N'A A Contracting Fencing Inc', NULL, N'Alabama', N'http://www.manta.com/c/mm55vns/a-a-contracting-fencing-inc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (13, N'Abc Ornametal Iron LLC', NULL, N'Alabama', N'http://www.manta.com/c/mtmn8h1/abc-ornametal-iron-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (14, N'A Better Built Fence', NULL, N'Alabama', N'http://www.manta.com/c/mx84jq2/a-better-built-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (15, N'Access Control', NULL, N'Alabama', N'http://www.manta.com/c/mm8sz5h/access-control')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (16, N'A &amp; E Fence Company', NULL, N'Alabama', N'http://www.manta.com/c/mm3hl8l/a-e-fence-company')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (17, N'Aegis Fence', NULL, N'Alabama', N'http://www.manta.com/c/mrl76b9/aegis-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (18, N'Affordable Fencing Of South Al', NULL, N'Alabama', N'http://www.manta.com/c/mttmp5x/affordable-fencing-of-south-al')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (19, N'Alabama Fence &amp; Deck', NULL, N'Alabama', N'http://www.manta.com/c/mryc8nf/alabama-fence-deck')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (20, N'Alabama Ornamental Inc', NULL, N'Alabama', N'http://www.manta.com/c/mm09hyl/alabama-ornamental-inc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (21, N'All A Round Fence &amp; Deck Co', NULL, N'Alabama', N'http://www.manta.com/c/mm0q583/all-a-round-fence-deck-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (22, N'Allied Fence CO', NULL, N'Alabama', N'http://www.manta.com/c/mm2fmnx/allied-fence-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (23, N'All Star Fence', NULL, N'Alabama', N'http://www.manta.com/c/mmc9jnh/all-star-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (24, N'Allstar Fence', NULL, N'Alabama', N'http://www.manta.com/c/mr0gr7m/allstar-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (25, N'Anthony Austin', NULL, N'Alabama', N'http://www.manta.com/c/mm06y8b/anthony-austin')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (26, N'Athens Fence CO Inc', NULL, N'Alabama', N'http://www.manta.com/c/mmlz7jg/athens-fence-co-inc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (27, N'Atm Fence LLC', NULL, N'Alabama', N'http://www.manta.com/c/mmbp8fg/atm-fence-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (28, N'Awc Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mm0hxs3/awc-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (29, N'Backyard Fencing CO', NULL, N'Alabama', N'http://www.manta.com/c/mtrm47n/backyard-fencing-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (30, N'Bennett Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mm8353j/bennett-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (31, N'Best Bilt Fence', NULL, N'Alabama', N'http://www.manta.com/c/mm0gnkw/best-bilt-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (32, N'Birmingham Fencing Club', NULL, N'Alabama', N'http://www.manta.com/c/mmdj4gs/birmingham-fencing-club')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (33, N'Borderline Fence CO', NULL, N'Alabama', N'http://www.manta.com/c/mtmjfhv/borderline-fence-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (34, N'Browns Ornamental Fencin', NULL, N'Alabama', N'http://www.manta.com/c/mtml7k7/browns-ornamental-fencin')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (35, N'Budget Fence Company', NULL, N'Alabama', N'http://www.manta.com/c/mt7k3pl/budget-fence-company')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (36, N'Cahaba Fence Company', NULL, N'Alabama', N'http://www.manta.com/c/mmcrxbj/cahaba-fence-company')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (37, N'C And C Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mrsndrc/c-and-c-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (38, N'C And F Fencing And Improvement', NULL, N'Alabama', N'http://www.manta.com/c/mrs5kf8/c-and-f-fencing-and-improvement')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (39, N'C And J Fencing And Ptg', NULL, N'Alabama', N'http://www.manta.com/c/mr56tnf/c-and-j-fencing-and-ptg')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (40, N'Cap Fencing And Deck LLC', NULL, N'Alabama', N'http://www.manta.com/c/mryc3sz/cap-fencing-and-deck-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (41, N'Cda LLC', NULL, N'Alabama', N'http://www.manta.com/c/mtmbn91/cda-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (42, N'Centaur Horse Fence', N' info@centaurhtp.com', N'Alabama', N'http://www.manta.com/c/mx4x3ny/centaur-horse-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (43, N'Chambers StainWorks, LLC', N' Info@ChambersStainWorks.com', N'Alabama', N'http://www.manta.com/c/mxf09py/chambers-stainworks-llc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (44, N'Chambliss Fence Co.', NULL, N'Alabama', N'http://www.manta.com/c/mmdhkgf/chambliss-fence-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (45, N'Chavez Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mtg8gfh/chavez-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (46, N'Circle S Fence', NULL, N'Alabama', N'http://www.manta.com/c/mm7rdfw/circle-s-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (47, N'Collins Fence', NULL, N'Alabama', N'http://www.manta.com/c/mrs0lyw/collins-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (48, N'Coosa Valley Fence', NULL, N'Alabama', N'http://www.manta.com/c/mtrv3dn/coosa-valley-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (49, N'Cox &amp; Don Fence', N'info@coxanddon-fence.com', N'Alabama', N'http://www.manta.com/c/mx2nd58/cox-don-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (50, N'Custom Fence And Deck', NULL, N'Alabama', N'http://www.manta.com/c/mtbrc08/custom-fence-and-deck')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (51, N'Cyberonic', NULL, N'Alabama', N'http://www.manta.com/c/mtm0rbg/cyberonic')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (52, N'Cyberonic', NULL, N'Alabama', N'http://www.manta.com/c/mmcrbr7/cyberonic')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (53, N'Cyberonic', NULL, N'Alabama', N'http://www.manta.com/c/mmc92m9/cyberonic')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (54, N'Darnells Fence Construction', NULL, N'Alabama', N'http://www.manta.com/c/mmczqqr/darnells-fence-construction')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (55, N'Davis Grady Livestock Service', NULL, N'Alabama', N'http://www.manta.com/c/mm4m7mg/davis-grady-livestock-service')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (56, N'Dewaynes Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mryqk3t/dewaynes-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (57, N'Dog Guard Out of Sight Fence', NULL, N'Alabama', N'http://www.manta.com/c/mmnjqjz/dog-guard-out-of-sight-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (58, N'Dog Guard Out of Sight Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mmcrbvn/dog-guard-out-of-sight-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (59, N'Dog Guard Out Of Sight Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mmdj5c3/dog-guard-out-of-sight-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (60, N'Eagle Fence Company', N' eaglefenceenterprise@yahoo.com', N'Alabama', N'http://www.manta.com/c/mm08t0w/eagle-fence-company')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (61, N'Eagle Fence Manufacturing', NULL, N'Alabama', N'http://www.manta.com/c/mtdm16h/eagle-fence-manufacturing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (62, N'Equine Fencing Inc', NULL, N'Alabama', N'http://www.manta.com/c/mr5spjr/equine-fencing-inc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (63, N'Fence Company C &amp; M', NULL, N'Alabama', N'http://www.manta.com/c/mm80vk9/fence-company-c-m')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (64, N'Fence Pro Inc', NULL, N'Alabama', N'http://www.manta.com/c/mtry04j/fence-pro-inc')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (65, N'Fence World', NULL, N'Alabama', N'http://www.manta.com/c/mmbz7nq/fence-world')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (66, N'Fencing Solutions', NULL, N'Alabama', N'http://www.manta.com/c/mm51sfw/fencing-solutions')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (67, N'Five star fencing', N' fivestarfence205@yahoo.com', N'Alabama', N'http://www.manta.com/c/mx4j8ff/five-star-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (68, N'Hagan Fence CO', NULL, N'Alabama', N'http://www.manta.com/c/mmf9gk1/hagan-fence-co')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (69, N'Holmes Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mmcvcpg/holmes-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (70, N'Inline Fence', NULL, N'Alabama', N'http://www.manta.com/c/mtr2qhq/inline-fence')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (71, N'Integrity Fence &amp; Decks', NULL, N'Alabama', N'http://www.manta.com/c/mmyzndz/integrity-fence-decks')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (72, N'Invisible Fencing Of South Alabama', NULL, N'Alabama', N'http://www.manta.com/c/mm06l1y/invisible-fencing-of-south-alabama')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (73, N'Jenkins Fencing', N'info@jenkins-fencing.com', N'Alabama', N'http://www.manta.com/c/mx2kj4r/jenkins-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (74, N'J H Blankenship', NULL, N'Alabama', N'http://www.manta.com/c/mm0gnh2/j-h-blankenship')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (75, N'J M Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mtwnk6j/j-m-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (76, N'J &amp; T Affordable Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mtqjdwp/j-t-affordable-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (77, N'K D Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mtqfxdj/k-d-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (78, N'Lawn &amp; Fence Services', NULL, N'Alabama', N'http://www.manta.com/c/mmdk8mm/lawn-fence-services')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (79, N'Micheal Rhodes Fencing', NULL, N'Alabama', N'http://www.manta.com/c/mtrvlph/micheal-rhodes-fencing')
INSERT [dbo].[Comany] ([ComanyID], [CompanyName], [Email], [State], [ComanyURL]) VALUES (80, N'Parks Fencing LLC', NULL, N'Alabama', N'http://www.manta.com/c/mm487sm/parks-fencing-llc')
SET IDENTITY_INSERT [dbo].[Comany] OFF
