//Maya ASCII 2024 scene
//Name: map_art.ma
//Last modified: Tue, Jan 28, 2025 08:08:17 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "type" -nodeType "shellDeformer" -nodeType "vectorAdjust" -nodeType "typeExtrude"
		 -nodeType "displayPoints" "Type" "2.0a";
requires "stereoCamera" "10.0";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "474088F3-4AC1-753A-82C8-B9B8127CE348";
createNode transform -s -n "persp";
	rename -uid "E10842A9-48CD-9231-DA3E-B9AA5EB59854";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.0698012968547896 18.847917924110373 34.315897813849425 ;
	setAttr ".r" -type "double3" -29.7383527300622 -1428.5999999997803 -4.0557077008478353e-16 ;
	setAttr ".rp" -type "double3" -4.2632564145606011e-14 1.2434497875801753e-14 2.8421709430404007e-14 ;
	setAttr ".rpt" -type "double3" 3.7291590714076654e-14 1.0931058047158947e-14 1.8630876641683207e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3B968698-415A-80C8-B7DF-3FB008A3CA17";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 42.433532347242867;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.25 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "815C9381-4BC4-CF01-6ED8-F689AAFB4239";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.21687106218051344 1002.2196347201514 0.10958747723137718 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "193F5F24-4EAF-8C05-F60E-00A730488E22";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.7196347201514;
	setAttr ".ow" 21.301649001947261;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 0.5 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "129A03D4-402E-17B6-60FA-59ACB433E2C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.384023318395247 2.050509771929923 1000.6784587161985 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D8BA775C-4C5D-E7D5-751C-B4BFC0C47B14";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 994.17845871619852;
	setAttr ".ow" 7.8035419246865239;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -18 3.3833374977111816 6.5 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0BEDF440-47D1-D8CC-C5BC-40AF5D312102";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.7899877706644 -1.5518091470942992 2.9531741806593779 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "556DBF14-4E9F-7A54-C866-3FA9E5019E52";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.7899877706644;
	setAttr ".ow" 15.819369117704307;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 5.0102159312967247 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "persp1";
	rename -uid "01939707-4B50-67FC-0C10-F49A4B474CE9";
	setAttr ".t" -type "double3" 0 127.53740400611215 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -n "perspShape1" -p "persp1";
	rename -uid "D9E0BD3A-4F17-44D3-AE9D-71B0E61D5DDF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 90;
	setAttr ".coi" 68.154892345587228;
	setAttr ".ow" 57.549115811111257;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgo" 0.94999998807907104;
	setAttr ".dr" yes;
	setAttr ".dgc" -type "float3" 0 0 0 ;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "group1";
	rename -uid "611E27F9-4625-BD8B-6049-79AF156CBFE4";
	setAttr ".v" no;
createNode transform -n "pCube2" -p "group1";
	rename -uid "2C1F5D31-4702-F1BD-925E-56B652EF19C4";
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "00C28FCA-4236-D1C5-B5FB-269608EAF2EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 5 "f[1]" "f[5:27]" "f[32:67]" "f[72:88]" "f[92:115]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "f[2]" "f[28]" "f[31]" "f[68:71]" "f[89:91]" "f[108:111]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[3]" "f[30]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[0]" "f[29]" "f[31]" "f[68:71]" "f[89:91]" "f[108:111]";
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.75
		 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75
		 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75
		 0.375 0.5 0.375 0.5 0.375 0.75 0 0 1 0 0.5 1 0 1 0 0 1 0 1 1 0.5 1 0 0 1 0 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375
		 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0 1 0.5 1 0.5 1 1 1 0.375 0.75 0.375 0.75 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375
		 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0 1
		 0.5 1 0.5 1 1 1 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.75 0.375
		 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.75 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375
		 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1 0 ;
	setAttr ".pt[3]" -type "float3" 0 1 0 ;
	setAttr ".pt[4]" -type "float3" 0 1 0 ;
	setAttr ".pt[5]" -type "float3" 0 1 0 ;
	setAttr ".pt[8]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[9]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[10]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[11]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[12]" -type "float3" 0 1 0 ;
	setAttr ".pt[14]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[15]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[16]" -type "float3" 0 1 0 ;
	setAttr ".pt[18]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[19]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[20]" -type "float3" 0 1 0 ;
	setAttr ".pt[22]" -type "float3" 0 1 0 ;
	setAttr ".pt[24]" -type "float3" 0 1 2 ;
	setAttr ".pt[25]" -type "float3" 0 0 2 ;
	setAttr ".pt[26]" -type "float3" 0 1 2 ;
	setAttr ".pt[27]" -type "float3" 0 0 2 ;
	setAttr ".pt[28]" -type "float3" 0 1 2 ;
	setAttr ".pt[29]" -type "float3" 0 0 2 ;
	setAttr ".pt[30]" -type "float3" 0 0 2 ;
	setAttr ".pt[31]" -type "float3" 0 1 2 ;
	setAttr ".pt[32]" -type "float3" 0 1 0 ;
	setAttr ".pt[34]" -type "float3" 0 0 2 ;
	setAttr ".pt[35]" -type "float3" 0 1 2 ;
	setAttr ".pt[36]" -type "float3" 0 1 0 ;
	setAttr ".pt[38]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[39]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[40]" -type "float3" 0 1 0 ;
	setAttr ".pt[42]" -type "float3" 0 0 2 ;
	setAttr ".pt[43]" -type "float3" 0 1 2 ;
	setAttr ".pt[44]" -type "float3" 0 1 0 ;
	setAttr ".pt[46]" -type "float3" 0 0 2 ;
	setAttr ".pt[47]" -type "float3" 0 1 2 ;
	setAttr ".pt[48]" -type "float3" 0 1 0 ;
	setAttr ".pt[50]" -type "float3" 0 0 2 ;
	setAttr ".pt[51]" -type "float3" 0 1 2 ;
	setAttr ".pt[52]" -type "float3" 0 1 0 ;
	setAttr ".pt[54]" -type "float3" 0 0 2 ;
	setAttr ".pt[55]" -type "float3" 0 1 2 ;
	setAttr ".pt[56]" -type "float3" 0 1 0 ;
	setAttr ".pt[58]" -type "float3" 0 0 2 ;
	setAttr ".pt[59]" -type "float3" 0 1 2 ;
	setAttr ".pt[60]" -type "float3" 0 1 0 ;
	setAttr ".pt[62]" -type "float3" 0 0 2 ;
	setAttr ".pt[63]" -type "float3" 0 1 2 ;
	setAttr ".pt[64]" -type "float3" 0 1 2 ;
	setAttr ".pt[65]" -type "float3" 0 0 2 ;
	setAttr ".pt[66]" -type "float3" 0 1 2 ;
	setAttr ".pt[67]" -type "float3" 0 0 2 ;
	setAttr ".pt[68]" -type "float3" 0 0 2 ;
	setAttr ".pt[69]" -type "float3" 0 0 2 ;
	setAttr ".pt[70]" -type "float3" 0 1 2 ;
	setAttr ".pt[71]" -type "float3" 0 1 2 ;
	setAttr ".pt[72]" -type "float3" 0 0 2 ;
	setAttr ".pt[73]" -type "float3" 0 1 2 ;
	setAttr ".pt[74]" -type "float3" 0 0 2 ;
	setAttr ".pt[75]" -type "float3" 0 1 2 ;
	setAttr ".pt[76]" -type "float3" 0 0 2 ;
	setAttr ".pt[77]" -type "float3" 0 1 2 ;
	setAttr ".pt[78]" -type "float3" 0 0 2 ;
	setAttr ".pt[79]" -type "float3" 0 1 2 ;
	setAttr ".pt[80]" -type "float3" 0 0 2 ;
	setAttr ".pt[81]" -type "float3" 0 1 2 ;
	setAttr ".pt[82]" -type "float3" 0 0 2 ;
	setAttr ".pt[83]" -type "float3" 0 1 2 ;
	setAttr ".pt[84]" -type "float3" 0 0 2 ;
	setAttr ".pt[85]" -type "float3" 0 1 2 ;
	setAttr ".pt[86]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[87]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[88]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[90]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[91]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[92]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[93]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[94]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[95]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[96]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[97]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[98]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[99]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[100]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[101]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[102]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[103]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[104]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[105]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[106]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[107]" -type "float3" 0 1 -0.42301178 ;
	setAttr -s 108 ".vt[0:107]"  11.5 -1 11.5 14.5 -1 11.5 11.5 1 11.5 14.5 1 11.5
		 11.5 1 -11.5 14.5 1 -11.5 11.5 -1 -11.5 14.5 -1 -11.5 11.5 1 -21 14.5 1 -21 14.5 -1 -21
		 11.5 -1 -21 -11.5 1 -11.5 -11.5 -1 -11.5 -11.5 1 -21 -11.5 -1 -21 -14.5 1 -11.5 -14.5 -1 -11.5
		 -14.5 1 -21 -14.5 -1 -21 -11.5 1 11.5 -11.5 -1 11.5 -14.5 1 11.5 -14.5 -1 11.5 -11.5 1 13.5
		 -11.5 -1 13.5 -14.5 1 13.5 -14.5 -1 13.5 11.5 1 13.5 11.5 -1 13.5 14.5 -1 13.5 14.5 1 13.5
		 0 1 11.5 0 -1 11.5 0 -1 13.5 0 1 13.5 0 1 -11.5 0 -1 -11.5 0 -1 -21 0 1 -21 -6.5 1 11.5
		 -6.5 -1 11.5 -6.5 -1 13.5 -6.5 1 13.5 6.5 1 11.5 6.5 -1 11.5 6.5 -1 13.5 6.5 1 13.5
		 -5.5 1 11.5 -5.5 -1 11.5 -5.5 -1 13.5 -5.5 1 13.5 5.5 1 11.5 5.5 -1 11.5 5.5 -1 13.5
		 5.5 1 13.5 -0.5 1 11.5 -0.5 -1 11.5 -0.5 -1 13.5 -0.5 1 13.5 0.49999994 1 11.5 0.49999994 -1 11.5
		 0.49999994 -1 13.5 0.49999994 1 13.5 -11.5 1 18.5 -11.5 -1 18.5 -14.5 1 18.5 -14.5 -1 18.5
		 11.5 -1 18.5 14.5 -1 18.5 14.5 1 18.5 11.5 1 18.5 0 -1 18.5 0 1 18.5 0.49999994 -1 18.5
		 0.49999994 1 18.5 -0.5 -1 18.5 -0.5 1 18.5 -6.5 -1 18.5 -6.5 1 18.5 -5.5 -1 18.5
		 -5.5 1 18.5 5.5 -1 18.5 5.5 1 18.5 6.5 -1 18.5 6.5 1 18.5 -11.5 1 25.92301178 -11.5 -1 25.92301178
		 -14.5 1 25.92301178 -14.5 -1 25.92301178 11.5 -1 25.92301178 14.5 -1 25.92301178
		 14.5 1 25.92301178 11.5 1 25.92301178 0 -1 25.92301178 0 1 25.92301178 0.49999994 -1 25.92301178
		 0.49999994 1 25.92301178 -0.5 -1 25.92301178 -0.5 1 25.92301178 -6.5 -1 25.92301178
		 -6.5 1 25.92301178 -5.5 -1 25.92301178 -5.5 1 25.92301178 5.5 -1 25.92301178 5.5 1 25.92301178
		 6.5 -1 25.92301178 6.5 1 25.92301178;
	setAttr -s 232 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0 4 36 0 6 37 0
		 12 13 0 8 39 0 12 14 0 11 38 0 14 15 0 13 15 0 12 16 0 13 17 0 16 17 0 14 18 0 16 18 0
		 15 19 0 18 19 0 17 19 0 12 20 0 13 21 0 20 21 0 16 22 0 20 22 0 17 23 0 22 23 0 21 23 0
		 20 24 0 21 25 0 24 25 0 22 26 0 24 26 0 23 27 0 26 27 0 25 27 0 20 40 0 21 41 0 24 43 0
		 2 28 0 25 42 0 28 29 0 0 29 0 1 30 0 29 30 0 3 31 0 28 31 0 30 31 0 32 60 0 33 61 0
		 34 62 0 35 63 0 32 33 1 33 34 1 35 32 1 36 12 0 37 13 0 38 15 0 39 14 0 36 37 1 37 38 1
		 38 39 1 39 36 1 40 48 0 41 49 0 42 50 0 43 51 0 40 41 1 41 42 1 42 43 0 43 40 1 44 2 0
		 45 0 0 46 29 0 47 28 0 44 45 1 45 46 1 46 47 0 47 44 1 48 56 0 49 57 0 50 58 0 51 59 0
		 48 49 1 49 50 1 50 51 0 51 48 1 52 44 0 53 45 0 54 46 0 55 47 0 52 53 1 53 54 1 54 55 0
		 55 52 1 56 32 0 57 33 0 58 34 0 59 35 0 56 57 1 57 58 1 58 59 0 59 56 1 60 52 0 61 53 0
		 62 54 0 63 55 0 60 61 1 61 62 1 62 63 0 63 60 1 24 64 0 25 65 0 64 65 0 26 66 0 64 66 0
		 27 67 0 66 67 0 65 67 0 29 68 0 30 69 0 68 69 0 31 70 0 69 70 0 28 71 0 71 70 0 71 68 0
		 34 72 0 35 73 0 62 74 0 72 74 0 63 75 0 74 75 0 73 75 0 58 76 0 59 77 0 76 77 0 76 72 0
		 77 73 0 42 78 0 43 79 0 78 79 0 50 80 0 78 80 0 51 81 0 80 81 0 79 81 0 54 82 0 55 83 0
		 82 83 0;
	setAttr ".ed[166:231]" 46 84 0 82 84 0 47 85 0 84 85 0 83 85 0 64 86 0 65 87 0
		 86 87 0 66 88 0 86 88 0 67 89 0 88 89 0 87 89 0 68 90 0 69 91 0 90 91 0 70 92 0 91 92 0
		 71 93 0 93 92 0 93 90 0 72 94 0 73 95 0 94 95 1 74 96 0 94 96 0 75 97 0 96 97 0 95 97 0
		 76 98 0 77 99 0 98 99 0 98 94 0 99 95 0 78 100 0 79 101 0 100 101 0 80 102 0 100 102 0
		 81 103 0 102 103 0 101 103 0 82 104 0 83 105 0 104 105 0 84 106 0 104 106 0 85 107 0
		 106 107 0 105 107 0 75 83 0 97 105 0 96 104 0 74 82 0 77 81 0 76 80 0 98 102 0 99 103 0
		 68 84 0 90 106 0 93 107 0 71 85 0 65 78 0 64 79 0 86 101 0 87 100 0;
	setAttr -s 116 -ch 464 ".fc[0:115]" -type "polyFaces" 
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -31 32 34 -36
		mu 0 4 22 23 24 25
		f 4 -9 20 75 -22
		mu 0 4 6 4 52 53
		f 4 12 23 78 -21
		mu 0 4 4 14 55 52
		f 4 19 25 77 -24
		mu 0 4 14 17 54 55
		f 4 -18 21 76 -26
		mu 0 4 17 6 53 54
		f 4 -174 175 177 -179
		mu 0 4 102 103 104 105
		f 4 24 31 -33 -29
		mu 0 4 19 20 24 23
		f 4 26 33 -35 -32
		mu 0 4 20 21 25 24
		f 4 -28 29 35 -34
		mu 0 4 21 18 22 25
		f 4 -23 36 38 -38
		mu 0 4 18 19 27 26
		f 4 28 39 -41 -37
		mu 0 4 19 23 28 27
		f 4 30 41 -43 -40
		mu 0 4 23 22 29 28
		f 4 -30 37 43 -42
		mu 0 4 22 18 26 29
		f 4 40 47 -49 -45
		mu 0 4 27 28 32 31
		f 4 42 49 -51 -48
		mu 0 4 28 29 33 32
		f 4 -44 45 51 -50
		mu 0 4 29 26 30 33
		f 4 -39 52 83 -54
		mu 0 4 26 27 56 57
		f 4 44 54 86 -53
		mu 0 4 27 31 59 56
		f 4 46 56 85 -55
		mu 0 4 31 30 58 59
		f 4 -46 53 84 -57
		mu 0 4 30 26 57 58
		f 4 0 59 -61 -59
		mu 0 4 38 39 40 41
		f 4 -2 55 62 -62
		mu 0 4 42 43 44 45
		f 4 5 61 -64 -60
		mu 0 4 46 47 45 40
		f 4 181 183 -186 186
		mu 0 4 106 107 108 109
		f 4 -69 64 123 -66
		mu 0 4 49 48 76 77
		f 4 -70 65 124 -67
		mu 0 4 50 49 77 78
		f 4 -190 191 193 -195
		mu 0 4 113 110 111 112
		f 4 -71 67 126 -65
		mu 0 4 48 51 79 76
		f 4 -76 71 22 -73
		mu 0 4 53 52 19 18
		f 4 -77 72 27 -74
		mu 0 4 54 53 18 21
		f 4 -78 73 -27 -75
		mu 0 4 55 54 21 20
		f 4 -79 74 -25 -72
		mu 0 4 52 55 20 19
		f 4 -84 79 99 -81
		mu 0 4 57 56 64 65
		f 4 -85 80 100 -82
		mu 0 4 58 57 65 66
		f 4 -203 204 206 -208
		mu 0 4 114 115 116 117
		f 4 -87 82 102 -80
		mu 0 4 56 59 67 64
		f 4 -92 87 -5 -89
		mu 0 4 61 60 35 34
		f 4 -93 88 58 -90
		mu 0 4 62 61 34 37
		f 4 -94 89 -58 -91
		mu 0 4 63 62 37 36
		f 4 -95 90 -56 -88
		mu 0 4 60 63 36 35
		f 4 -100 95 115 -97
		mu 0 4 65 64 72 73
		f 4 -101 96 116 -98
		mu 0 4 66 65 73 74
		f 4 -102 97 117 -99
		mu 0 4 67 66 74 75
		f 4 -103 98 118 -96
		mu 0 4 64 67 75 72
		f 4 -108 103 91 -105
		mu 0 4 69 68 60 61
		f 4 -109 104 92 -106
		mu 0 4 70 69 61 62
		f 4 -211 212 214 -216
		mu 0 4 118 119 120 121
		f 4 -111 106 94 -104
		mu 0 4 68 71 63 60
		f 4 -116 111 68 -113
		mu 0 4 73 72 48 49
		f 4 -117 112 69 -114
		mu 0 4 74 73 49 50
		f 4 -198 198 189 -200
		mu 0 4 122 123 110 113
		f 4 -119 114 70 -112
		mu 0 4 72 75 51 48
		f 4 -124 119 107 -121
		mu 0 4 77 76 68 69
		f 4 -125 120 108 -122
		mu 0 4 78 77 69 70
		f 4 -126 121 109 -123
		mu 0 4 79 78 70 71
		f 4 -127 122 110 -120
		mu 0 4 76 79 71 68
		f 4 -47 127 129 -129
		mu 0 4 30 31 81 80
		f 4 48 130 -132 -128
		mu 0 4 31 32 82 81
		f 4 50 132 -134 -131
		mu 0 4 32 33 83 82
		f 4 -52 128 134 -133
		mu 0 4 33 30 80 83
		f 4 60 136 -138 -136
		mu 0 4 41 40 85 84
		f 4 63 138 -140 -137
		mu 0 4 40 45 86 85
		f 4 -63 140 141 -139
		mu 0 4 45 44 87 86
		f 4 57 135 -143 -141
		mu 0 4 44 41 84 87
		f 4 66 145 -147 -144
		mu 0 4 50 78 89 88
		f 4 125 147 -149 -146
		mu 0 4 78 79 90 89
		f 4 -68 144 149 -148
		mu 0 4 79 51 91 90
		f 4 -118 150 152 -152
		mu 0 4 124 125 93 92
		f 4 113 143 -154 -151
		mu 0 4 125 126 94 93
		f 4 -115 151 154 -145
		mu 0 4 127 128 95 129
		f 4 -86 155 157 -157
		mu 0 4 130 131 132 133
		f 4 81 158 -160 -156
		mu 0 4 134 135 97 96
		f 4 101 160 -162 -159
		mu 0 4 135 136 98 97
		f 4 -83 156 162 -161
		mu 0 4 136 137 99 98
		f 4 -110 163 165 -165
		mu 0 4 138 139 140 141
		f 4 105 166 -168 -164
		mu 0 4 142 143 101 100
		f 4 93 168 -170 -167
		mu 0 4 143 144 145 101
		f 4 -107 164 170 -169
		mu 0 4 146 147 148 149
		f 4 131 174 -176 -172
		mu 0 4 81 82 104 103
		f 4 133 176 -178 -175
		mu 0 4 82 83 105 104
		f 4 -135 172 178 -177
		mu 0 4 83 80 102 105
		f 4 137 180 -182 -180
		mu 0 4 84 85 107 106
		f 4 139 182 -184 -181
		mu 0 4 85 86 108 107
		f 4 -142 184 185 -183
		mu 0 4 86 87 109 108
		f 4 146 190 -192 -188
		mu 0 4 88 89 111 110
		f 4 -150 188 194 -193
		mu 0 4 90 91 113 112
		f 4 153 187 -199 -196
		mu 0 4 93 94 150 151
		f 4 -155 196 199 -189
		mu 0 4 129 95 152 153
		f 4 159 203 -205 -201
		mu 0 4 96 97 154 155
		f 4 -163 201 207 -206
		mu 0 4 98 99 156 157
		f 4 167 211 -213 -209
		mu 0 4 100 101 158 159
		f 4 -171 209 215 -214
		mu 0 4 149 148 160 161
		f 4 192 217 -210 -217
		mu 0 4 90 112 160 148
		f 4 -194 218 210 -218
		mu 0 4 112 111 119 118
		f 4 -191 219 208 -219
		mu 0 4 111 89 100 159
		f 4 148 216 -166 -220
		mu 0 4 89 90 141 140
		f 4 -153 221 161 -221
		mu 0 4 92 93 97 98
		f 4 195 222 -204 -222
		mu 0 4 93 151 154 97
		f 4 197 223 -207 -223
		mu 0 4 123 122 117 116
		f 4 -197 220 205 -224
		mu 0 4 152 95 98 157
		f 4 179 225 -212 -225
		mu 0 4 84 106 158 101
		f 4 -187 226 -215 -226
		mu 0 4 106 109 121 120
		f 4 -185 227 213 -227
		mu 0 4 109 87 149 161
		f 4 142 224 169 -228
		mu 0 4 87 84 101 145
		f 4 -130 229 -158 -229
		mu 0 4 80 81 133 132
		f 4 171 230 -202 -230
		mu 0 4 81 103 156 99
		f 4 173 231 202 -231
		mu 0 4 103 102 115 114
		f 4 -173 228 200 -232
		mu 0 4 102 80 96 155;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		40 0 
		45 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "group1";
	rename -uid "C91FD3EF-4273-3A25-5769-B197C758E4CF";
	setAttr ".t" -type "double3" -9 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "8BFBF267-468C-B140-FE89-5CBA31DA3C15";
	setAttr -k off ".v";
	setAttr -s 8 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.16727087646722794 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group1";
	rename -uid "F3479058-442A-109B-3BB8-4294A1940518";
	setAttr ".t" -type "double3" -3 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube10" -p "group1";
	rename -uid "1D911571-46D0-981E-6272-01B0CB876B9B";
	setAttr ".t" -type "double3" 3 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube11" -p "group1";
	rename -uid "77681AAB-492D-6821-7C31-54B399DD0500";
	setAttr ".t" -type "double3" 9 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube12" -p "group1";
	rename -uid "37CB29BC-49C3-B5A7-5C97-1E83DA473665";
	setAttr ".t" -type "double3" -9 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube13" -p "group1";
	rename -uid "899FF4D5-4BF9-214A-B3AD-A2A8D5644845";
	setAttr ".t" -type "double3" -3 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube14" -p "group1";
	rename -uid "4439440B-446E-7F21-82FD-6EA017ED0335";
	setAttr ".t" -type "double3" 3 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube15" -p "group1";
	rename -uid "D90B8578-4907-FBD0-02CC-16BADB405C1A";
	setAttr ".t" -type "double3" 9 1.5 18 ;
	setAttr ".s" -type "double3" 5 1 5 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "SM_Snake_Body_01";
	rename -uid "2C05E3A6-4124-A4ED-24E9-9393146D85D0";
createNode mesh -n "SM_Snake_Body_Shape1" -p "SM_Snake_Body_01";
	rename -uid "1BE05DAF-4DB9-1FF3-6AC3-6E8A0723576D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.38749874 0.98750126
		 0.375 0.98750126 0.375 0.76249874 0.38749874 0 0.38749874 0.012498751 0.625 0.98750126
		 0.61250126 0.98750126 0.625 0.76249874 0.63749874 0.012498751 0.375 0.26249874 0.375
		 0.48750126 0.38749874 0.23750125 0.61250126 0.23750125 0.625 0.26249874 0.375 0.51249874
		 0.375 0.73750126 0.38749874 0.48750126 0.61250126 0.48750126 0.625 0.51249874 0.625
		 0.73750126 0.38749874 0.73750126 0.61250126 0.7375012 0.61250126 0.76249874 0.61250126
		 0.012498751 0.38749874 0.26249874 0.61250126 0.26249874 0.38749874 0.51249874 0.61250126
		 0.51249874 0.38749874 0.76249874 0.86250126 0.012498751 0.86250126 0.23750125 0.13749875
		 0.012498751 0.36250126 0.012498751 0.36250123 0.23750125 0.13749875 0.23750125 0.61250126
		 0 0.63749874 0.23750125 0.625 0.48750126;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 24 ".vt[0:23]"  -0.45000499 -0.5 0.45000499 -0.45000499 -0.45000499 0.5
		 -0.5 -0.45000499 0.45000499 0.5 -0.45000499 0.45000499 0.45000499 -0.45000499 0.5
		 0.45000499 -0.5 0.45000499 -0.5 0.45000499 0.45000499 -0.45000499 0.45000499 0.5
		 -0.45000499 0.5 0.45000499 0.45000499 0.5 0.45000499 0.45000499 0.45000499 0.5 0.5 0.45000499 0.45000499
		 -0.5 0.45000499 -0.45000499 -0.45000499 0.5 -0.45000499 -0.45000499 0.45000499 -0.5
		 0.45000499 0.45000499 -0.5 0.45000499 0.5 -0.45000499 0.5 0.45000499 -0.45000499
		 -0.5 -0.45000499 -0.45000499 -0.45000499 -0.45000499 -0.5 -0.45000499 -0.5 -0.45000499
		 0.45000499 -0.5 -0.45000499 0.45000499 -0.45000499 -0.5 0.5 -0.45000499 -0.45000499;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform1";
	rename -uid "A7A2B577-4CD7-F082-167F-D3B3698E3704";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints1" -p "transform1";
	rename -uid "735288B9-47A5-4CE8-E4A5-A485EBDBB056";
	setAttr -k off ".v";
	setAttr -s 2 ".inPointPositionsPP";
	setAttr ".hio" yes;
createNode transform -n "SM_Button_Ability_01";
	rename -uid "8295CE73-4570-F8D5-DAA1-4986F1B6A955";
	setAttr ".t" -type "double3" 15.5 0 9.5 ;
createNode mesh -n "SM_Button_Ability_01Shape" -p "SM_Button_Ability_01";
	rename -uid "9255E733-4DB4-2244-E1E4-9980B960E874";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Pause";
	rename -uid "10E2F902-4E85-A95A-17EC-CF84D1FA3F04";
	setAttr ".t" -type "double3" 21 0 -10.5 ;
createNode mesh -n "SM_Button_PauseShape" -p "SM_Button_Pause";
	rename -uid "B4A448E3-4AD7-174E-25AE-B098C46D5544";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[8]" "f[10:11]" "f[14]" "f[24:25]" "f[31:32]" "f[39:40]" "f[44:45]" "f[66]" "f[72]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "f[0]" "f[3]" "f[15]" "f[33]" "f[41]" "f[43]" "f[50:55]" "f[67]" "f[73]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 11 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]" "f[26:28]" "f[34:36]" "f[42]" "f[48:49]" "f[64]" "f[70]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[17]" "f[63]" "f[69]" "f[75]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[16]" "f[56]" "f[68]" "f[74]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 11 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]" "f[29:30]" "f[37:38]" "f[46:47]" "f[57:62]" "f[65]" "f[71]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 111 ".uvst[0].uvsp[0:110]" -type "float2" 0.38343668 0.99156332
		 0.375 0.99156332 0.375 0.75843668 0.38343668 0 0.38343668 0.011248872 0.625 0.99156332
		 0.61656332 0.99156332 0.625 0.75843668 0.63343668 0.011248872 0.375 0.25843668 0.375
		 0.49156332 0.38343668 0.23875113 0.61656332 0.23875113 0.625 0.25843668 0.375 0.51124889
		 0.375 0.73875117 0.38343668 0.49156332 0.61656332 0.49156332 0.625 0.51124889 0.625
		 0.73875117 0.38343668 0.73875117 0.61656332 0.73875117 0.61656332 0.75843668 0.61656332
		 0.011248872 0.38343668 0.25843668 0.61656332 0.25843668 0.38343668 0.51124889 0.61656332
		 0.51124889 0.38343668 0.75843668 0.86656332 0.011248872 0.86656332 0.23875113 0.13343668
		 0.011248872 0.36656332 0.011248872 0.36656332 0.23875113 0.13343668 0.23875113 0.61656332
		 0 0.63343668 0.23875113 0.625 0.49156332 0.5 0 0.5 0.99156332 0.5 0.011248872 0.5
		 0.23875113 0.5 0.25843668 0.5 0.49156332 0.5 0.51124889 0.5 0.73875117 0.5 0.75843668
		 0.44171834 0 0.44171834 0.99156332 0.44171834 0.011248872 0.44171834 0.23875113 0.44171834
		 0.25843668 0.44171834 0.49156332 0.44171834 0.51124889 0.44171834 0.73875117 0.44171834
		 0.75843668 0.55828166 0.011248872 0.55828166 0 0.55828166 0.99156332 0.55828166 0.75843668
		 0.55828166 0.73875117 0.55828166 0.51124889 0.55828166 0.49156332 0.55828166 0.25843668
		 0.55828166 0.23875113 0.375 0.875 0.25 0.011248872 0.38343668 0.875 0.44171834 0.875
		 0.5 0.875 0.55828166 0.875 0.61656332 0.875 0.625 0.875 0.75 0.011248872 0.625 0.375
		 0.75 0.23875113 0.61656332 0.375 0.55828166 0.375 0.5 0.375 0.44171834 0.375 0.38343668
		 0.375 0.375 0.375 0.25 0.23875113 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 78 ".pt[0:77]" -type "float3"  -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 
		-15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 
		0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5 -15.5 0 10.5;
	setAttr -s 78 ".vt[0:77]"  13.63498688 0 -8.63498688 13.63498688 0.1349864 -8.5
		 13.5 0.1349864 -8.63498688 17.5 0.1349864 -8.63498688 17.36501312 0.1349864 -8.5
		 17.36501312 0 -8.63498688 13.5 2.8650136 -8.63498688 13.63498688 2.8650136 -8.5 13.63498688 3.000000238419 -8.63498688
		 17.36501312 3.000000238419 -8.63498688 17.36501312 2.8650136 -8.5 17.5 2.8650136 -8.63498688
		 13.5 2.8650136 -12.36501312 13.63498688 3.000000238419 -12.36501312 13.63498688 2.8650136 -12.5
		 17.36501312 2.8650136 -12.5 17.36501312 3.000000238419 -12.36501312 17.5 2.8650136 -12.36501312
		 13.5 0.1349864 -12.36501312 13.63498688 0.1349864 -12.5 13.63498688 0 -12.36501312
		 17.36501312 0 -12.36501312 17.36501312 0.1349864 -12.5 17.5 0.1349864 -12.36501312
		 15.5 0 -8.63498688 15.5 0.1349864 -8.5 15.5 2.8650136 -8.5 15.5 3.000000238419 -8.63498688
		 15.5 3.000000238419 -12.36501312 15.5 2.8650136 -12.5 15.5 0.1349864 -12.5 15.5 0 -12.36501312
		 14.69064713 0 -8.63498688 14.69064713 0.1349864 -8.5 14.69064713 2.8650136 -8.5 14.69064713 3.000000238419 -8.63498688
		 14.69064713 3.000000238419 -12.36501312 14.69064713 2.8650136 -12.5 14.69064713 0.1349864 -12.5
		 14.69064713 0 -12.36501312 16.30935287 0.1349864 -8.5 16.30935287 0 -8.63498688 16.30935287 0 -12.36501312
		 16.30935287 0.1349864 -12.5 16.30935287 2.8650136 -12.5 16.30935287 3.000000238419 -12.36501312
		 16.30935287 3.000000238419 -8.63498688 16.30935287 2.8650136 -8.5 13.5 0.1349864 -10.5
		 13.63498688 0 -10.5 14.69064713 0 -10.5 15.5 0 -10.5 16.30935287 0 -10.5 17.36501312 0 -10.5
		 17.5 0.1349864 -10.5 17.5 2.8650136 -10.5 17.36501312 3.000000238419 -10.5 16.30935287 3.000000238419 -10.5
		 15.5 3.000000238419 -10.5 14.69064713 3.000000238419 -10.5 13.63498688 3.000000238419 -10.5
		 13.5 2.8650136 -10.5 14.32207584 2.8650136 -9.23333359 15.059218407 2.8650136 -9.23333359
		 14.32207584 3.24588346 -9.23333359 15.059218407 3.24588346 -9.23333359 14.32207584 3.24588346 -11.76666641
		 15.059218407 3.24588346 -11.76666641 14.32207584 2.8650136 -11.76666641 15.059218407 2.8650136 -11.76666641
		 15.94078064 2.8650136 -9.23333359 16.67792511 2.8650136 -9.23333359 15.94078064 3.24588346 -9.23333359
		 16.67792511 3.24588346 -9.23333359 15.94078064 3.24588346 -11.76666641 16.67792511 3.24588346 -11.76666641
		 15.94078064 2.8650136 -11.76666641 16.67792511 2.8650136 -11.76666641;
	setAttr -s 148 ".ed[0:147]"  0 2 0 2 48 0 18 20 0 20 49 0 1 0 0 0 32 0
		 5 4 0 4 40 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 53 0 21 23 0 23 54 0 4 3 0 3 11 0 11 10 0
		 10 4 0 6 8 0 8 60 0 13 12 0 12 61 0 8 7 0 7 34 0 10 9 0 9 46 0 9 11 0 11 55 0 17 16 0
		 16 56 0 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 36 0 16 15 0 15 44 0 15 17 0 17 23 0
		 23 22 0 22 15 0 20 19 0 19 38 0 22 21 0 21 42 0 24 41 0 25 33 0 26 47 0 27 35 0 28 45 0
		 29 37 0 30 43 0 31 39 0 24 25 1 25 26 1 26 27 1 27 58 1 28 29 1 29 30 1 30 31 1 31 51 1
		 32 24 0 33 1 0 34 26 0 35 8 0 36 28 0 37 14 0 38 30 0 39 20 0 32 33 1 33 34 1 34 35 1
		 35 59 1 36 37 1 37 38 1 38 39 1 39 50 1 40 25 0 41 5 0 42 31 0 43 22 0 44 29 0 45 16 0
		 46 27 0 47 10 0 40 41 1 41 52 1 42 43 1 43 44 1 44 45 1 45 57 1 46 47 1 47 40 1 48 18 0
		 49 0 0 50 32 1 51 24 1 52 42 1 53 21 0 54 3 0 55 17 0 56 9 0 57 46 1 58 28 1 59 36 1
		 60 13 0 61 6 0 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1
		 57 58 1 58 59 1 59 60 1 60 61 1 61 48 1 62 63 0 64 65 0 66 67 0 68 69 0 62 64 0 63 65 0
		 64 66 0 65 67 0 66 68 0 67 69 0 68 62 0 69 63 0 70 71 0 72 73 0 74 75 0 76 77 0 70 72 0
		 71 73 0 72 74 0 73 75 0 74 76 0 75 77 0 76 70 0 77 71 0;
	setAttr -s 76 -ch 296 ".fc[0:75]" -type "polyFaces" 
		f 4 0 1 110 97
		mu 0 4 0 1 65 67
		f 4 4 5 72 65
		mu 0 4 4 3 47 49
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 115 102
		mu 0 4 5 6 71 72
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 122 109
		mu 0 4 9 24 80 81
		f 4 24 25 74 67
		mu 0 4 24 11 50 51
		f 4 28 29 117 104
		mu 0 4 25 13 74 76
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 76 69
		mu 0 4 26 16 52 53
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 78 71
		mu 0 4 28 20 54 55
		f 4 -66 73 -26 -10
		mu 0 4 4 49 50 11
		f 4 -68 75 121 -22
		mu 0 4 24 51 79 80
		f 4 -70 77 -46 -34
		mu 0 4 26 53 54 20
		f 4 111 98 -6 -98
		mu 0 4 67 68 48 0
		f 4 -103 116 -30 -18
		mu 0 4 8 73 75 36
		f 4 123 -2 -12 -110
		mu 0 4 82 66 32 33
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19
		f 4 88 81 6 7
		mu 0 4 56 57 35 23
		f 4 95 -8 -20 -88
		mu 0 4 64 56 23 12
		f 4 94 87 26 27
		mu 0 4 63 64 12 25
		f 4 118 105 -28 -105
		mu 0 4 76 77 63 25
		f 4 92 85 38 39
		mu 0 4 61 62 17 27
		f 4 91 -40 -44 -84
		mu 0 4 60 61 27 21
		f 4 90 83 46 47
		mu 0 4 59 60 21 22
		f 4 89 114 -14 -82
		mu 0 4 58 70 71 6
		f 4 -73 64 56 49
		mu 0 4 49 47 38 40
		f 4 -74 -50 57 -67
		mu 0 4 50 49 40 41
		f 4 -75 66 58 51
		mu 0 4 51 50 41 42
		f 4 120 -76 -52 59
		mu 0 4 78 79 51 42
		f 4 -77 68 60 53
		mu 0 4 53 52 43 44
		f 4 -78 -54 61 -71
		mu 0 4 54 53 44 45
		f 4 -79 70 62 55
		mu 0 4 55 54 45 46
		f 4 -99 112 99 -65
		mu 0 4 48 68 69 39
		f 4 -57 48 -89 80
		mu 0 4 40 38 57 56
		f 4 -100 113 -90 -49
		mu 0 4 39 69 70 58
		f 4 -63 54 -91 82
		mu 0 4 46 45 60 59
		f 4 -62 -85 -92 -55
		mu 0 4 45 44 61 60
		f 4 -61 52 -93 84
		mu 0 4 44 43 62 61
		f 4 119 -60 -87 -106
		mu 0 4 77 78 42 63
		f 4 -59 50 -95 86
		mu 0 4 42 41 64 63
		f 4 -58 -81 -96 -51
		mu 0 4 41 40 56 64
		f 4 -111 96 2 3
		mu 0 4 67 65 2 28
		f 4 -72 79 -112 -4
		mu 0 4 28 55 68 67
		f 4 -113 -80 -56 63
		mu 0 4 69 68 55 46
		f 4 -114 -64 -83 -101
		mu 0 4 70 69 46 59
		f 4 -115 100 -48 -102
		mu 0 4 71 70 59 22
		f 4 -116 101 14 15
		mu 0 4 72 71 22 7
		f 4 -117 -16 -42 -104
		mu 0 4 75 73 29 30
		f 4 -118 103 30 31
		mu 0 4 76 74 37 17
		f 4 93 -119 -32 -86
		mu 0 4 62 77 76 17
		f 4 -107 -120 -94 -53
		mu 0 4 43 78 77 62
		f 4 -108 -121 106 -69
		mu 0 4 52 79 78 43
		f 4 -122 107 -38 -109
		mu 0 4 80 79 52 16
		f 4 -123 108 22 23
		mu 0 4 81 80 16 10
		f 4 -97 -124 -24 -36
		mu 0 4 31 66 82 34
		f 4 124 129 -126 -129
		mu 0 4 83 84 85 86
		f 4 125 131 -127 -131
		mu 0 4 86 85 87 88
		f 4 126 133 -128 -133
		mu 0 4 88 87 89 90
		f 4 127 135 -125 -135
		mu 0 4 90 89 91 92
		f 4 -136 -134 -132 -130
		mu 0 4 84 93 94 85
		f 4 134 128 130 132
		mu 0 4 95 83 86 96
		f 4 136 141 -138 -141
		mu 0 4 97 98 99 100
		f 4 137 143 -139 -143
		mu 0 4 100 99 101 102
		f 4 138 145 -140 -145
		mu 0 4 102 101 103 104
		f 4 139 147 -137 -147
		mu 0 4 104 103 105 106
		f 4 -148 -146 -144 -142
		mu 0 4 98 107 108 99
		f 4 146 140 142 144
		mu 0 4 109 97 100 110;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PlaceHolder_grp";
	rename -uid "326906AA-4D11-5FA3-4168-7EB28AA0132C";
createNode transform -n "typeMesh1" -p "PlaceHolder_grp";
	rename -uid "8CFCDA8F-420B-E586-7A3D-7CA97FB2E52E";
	setAttr ".t" -type "double3" -23.656715673983239 2 -9.8371296099685566 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
createNode mesh -n "typeMeshShape1" -p "typeMesh1";
	rename -uid "82311A88-48D1-FCCE-CCC6-638A8EA59AFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Board_gridded" -p "PlaceHolder_grp";
	rename -uid "0E05B6F9-4A42-DF76-F103-15B165F0EB66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".s" -type "double3" 23 1 23 ;
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "Board_griddedShape" -p "Board_gridded";
	rename -uid "BC4E3155-479A-6960-4842-00A0B596B774";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.49456518888473511 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SM_Board1";
	rename -uid "5FD9F470-4EE7-5A52-493B-7483FAE10760";
	setAttr ".v" no;
createNode mesh -n "SM_Board1Shape" -p "SM_Board1";
	rename -uid "E7BD1E59-4157-8781-0DAD-53AF07B95CF0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.63203051686286926 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt";
	setAttr ".pt[130]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[131]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[132]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[133]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[134]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[135]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[138]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[142]" -type "float3" 0.19828033 0 0 ;
	setAttr ".pt[160]" -type "float3" 0 0 0.32009709 ;
	setAttr ".pt[161]" -type "float3" 0 0 0.32009709 ;
	setAttr ".pt[162]" -type "float3" 0 0 0.32009709 ;
	setAttr ".pt[163]" -type "float3" 0.19828033 0 0.32009709 ;
	setAttr ".pt[164]" -type "float3" 0 0 0.32009709 ;
	setAttr ".pt[165]" -type "float3" 0 0 0.32009709 ;
createNode mesh -n "polySurfaceShape1" -p "SM_Board1";
	rename -uid "1056842D-4E63-D79D-6840-D3B6D251034A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 2 "f[0:72]" "f[74:111]";
	setAttr ".iog[0].og[8].gcl" -type "componentList" 1 "f[73]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[2:17]" "f[19:36]" "f[38:41]" "f[43:55]" "f[57:58]" "f[65]" "f[68]" "f[72]" "f[76:102]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 8 "f[18]" "f[37]" "f[42]" "f[50:52]" "f[56]" "f[59:64]" "f[69:71]" "f[104:105]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 10 "f[0]" "f[18]" "f[37]" "f[42]" "f[50:52]" "f[60:64]" "f[66:67]" "f[69:71]" "f[75]" "f[103:106]";
	setAttr ".pv" -type "double2" 0.35642978549003601 0.63628774881362915 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 142 ".uvst[0].uvsp[0:141]" -type "float2" 0.375 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5
		 0.625 0.5 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.5
		 0.375 0.5 0.375 0.75 0.375 0.5 0.47775272 0.65262723 1 0 0.375 0.75 0.375 0.75 0.375
		 0.75 0.375 0.75 0.375 0.75 0.375 0.75 0.375 0.7725755 0.375 0.5 0.083157197 0.97204566
		 0.5 1 0.375 0.72886896 0.375 0.5 0.28844965 0.82426643 0.375 0.77444339 0.375 0.71518552
		 0.28777975 0.74129236 0.55550075 0.76155752 0.47643086 0.88688767 0.54941386 0.7493872
		 0.36738169 0.76589119 0.37429971 0.75146043 0.33785957 0.76915836 0.35721233 0.76188684
		 0.44682539 0.71940982 0.36595362 0.74251974 0.39934728 0.89234591 0.40857208 1.000055193901
		 0.7736035 1 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.55624425 0.375 0.75 0.375 0.5 0.375 0.5 0.5 1 0 0 1 0 0.375 0.5
		 0.94778663 1 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 1 1 0.375 0.5 0.375
		 0.5 0.375 0.69375563 0.375 0.55624437 0.375 0.5 0.375 0.5 0.5 1 0.375 0.5 0.7313295
		 0.94697237 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.98825318 1 0.375 0.75 0.375
		 0.73125196 0.375 0.51874804 0.375 0.75 0.375 0.73125196 0.375 0.75 0.375 0.6937561
		 0.375 0.5 0.375 0.51874804 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 1 1
		 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.74531299 0.375 0.53280914 0.375 0.51874804
		 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.75 0.77360344 1 0.74282616 1 0.8833546 0.94375563
		 0.95953351 1 0.375 0.75 0.375 0.7312519 0.375 0.73125196 0.375 0.75 0.375 0.5 0.375
		 0.5 0.92969459 0.94375563 0.375 0.5 0.375 0.73125196 0.375 0.51874804 0.375 0.5 0.375
		 0.51874804 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.98825318 1 0.375 0.5 0.375 0.5
		 0.375 0.75 0.375 0.5 0.74282616 1 0.79761392 0.89394462 0.95953351 1 0.94778663 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 -2 ;
	setAttr ".pt[4]" -type "float3" 0 0 -2 ;
	setAttr ".pt[6]" -type "float3" -3 0 0 ;
	setAttr ".pt[7]" -type "float3" -3 0 -2 ;
	setAttr ".pt[10]" -type "float3" -3 0 0 ;
	setAttr ".pt[11]" -type "float3" 0 0 2 ;
	setAttr ".pt[12]" -type "float3" -3 0 2 ;
	setAttr ".pt[15]" -type "float3" 0 0 2 ;
	setAttr ".pt[16]" -type "float3" 0 0 2 ;
	setAttr ".pt[17]" -type "float3" 0 0 -2 ;
	setAttr ".pt[30]" -type "float3" 0 0 2 ;
	setAttr ".pt[31]" -type "float3" 0 0 -2 ;
	setAttr ".pt[32]" -type "float3" 3 0 0 ;
	setAttr ".pt[33]" -type "float3" 3 0 2 ;
	setAttr ".pt[34]" -type "float3" 3 0 2 ;
	setAttr ".pt[35]" -type "float3" 3 0 0 ;
	setAttr ".pt[36]" -type "float3" 3 0 -2 ;
	setAttr ".pt[37]" -type "float3" 3 0 0 ;
	setAttr ".pt[38]" -type "float3" 3 0 0 ;
	setAttr ".pt[39]" -type "float3" 3 0 0 ;
	setAttr ".pt[40]" -type "float3" 3 0 0 ;
	setAttr ".pt[41]" -type "float3" 3 0 0 ;
	setAttr ".pt[42]" -type "float3" 3 0 0 ;
	setAttr ".pt[43]" -type "float3" 3 0 0 ;
	setAttr ".pt[44]" -type "float3" 3 0 0 ;
	setAttr ".pt[45]" -type "float3" 3 0 0 ;
	setAttr ".pt[46]" -type "float3" 3 0 0 ;
	setAttr ".pt[47]" -type "float3" 0 0 -2 ;
	setAttr ".pt[48]" -type "float3" 0 0 -2 ;
	setAttr ".pt[49]" -type "float3" -3 0 -2 ;
	setAttr ".pt[50]" -type "float3" 0 0 2 ;
	setAttr ".pt[51]" -type "float3" -3 0 2 ;
	setAttr ".pt[52]" -type "float3" 0 0 2 ;
	setAttr ".pt[53]" -type "float3" 0 0 2 ;
	setAttr ".pt[54]" -type "float3" 0 0 -2 ;
	setAttr ".pt[55]" -type "float3" 0 0 2 ;
	setAttr ".pt[56]" -type "float3" 0 0 -2 ;
	setAttr ".pt[57]" -type "float3" 3 0 -2 ;
	setAttr ".pt[58]" -type "float3" 3 0 0 ;
	setAttr ".pt[63]" -type "float3" 3 0 0 ;
	setAttr -s 124 ".vt[0:123]"  11.5 0 -11.5 11.5 2 -11.5 11.5 2 -14.5 -11.5 2 -11.5
		 -11.5 2 -14.5 -11.5 0 -11.5 -25.5 2 -11.5 -25.5 2 -14.5 -11.5 2 11.5 -11.5 0 11.5
		 -25.5 2 11.5 -11.5 2 14.5 -25.5 2 14.5 11.5 2 11.5 11.5 0 11.5 11.5 2 14.5 13.5 2 14.5
		 13.5 2 -14.5 11.5 2 7.5 11.5 0 7.5 11.5 2 -3.5 11.5 0 -3.5 11.5 2 6.5 11.5 0 6.5
		 11.5 2 -2.5 11.5 0 -2.5 11.5 2 2.5 11.5 0 2.5 11.5 2 1.5 11.5 0 1.5 17.5 2 14.5 17.5 2 -14.5
		 25.5 2 11.5 25.5 -1.5 14.5 25.5 2 14.5 25.5 -1.5 -8 25.5 2 -14.5 25.5 2 -7.5 25.5 2 1.5
		 25.5 -1.5 2 25.5 2 2.5 25.5 -1.5 7 25.5 2 7.5 25.5 2 6.5 25.5 -1.5 -3 25.5 2 -2.5
		 25.5 2 -3.5 -11.5 -1.5 -14.5 11.5 -1.5 -14.5 -25.5 -1.5 -14.5 -11.5 -1.5 14.5 -25.5 -1.5 14.5
		 11.5 -1.5 14.5 13.5 -1.5 14.5 13.5 -1.5 -14.5 17.5 -1.5 14.5 17.5 -1.5 -14.5 25.5 -1.5 -14.5
		 25.5 2 -11.50001144 11.5 2 -7.5 11.5 0 -7.5 11.5 2 -8.5 11.5 0 -8.5 25.5 2 -8.5 13.27502251 2 11.5
		 13.5 2 11.72497749 13.5 2 7.27502298 13.27502251 2 7.5 13.27502251 2 -7.5 13.5 2 -7.72497749
		 13.27502251 2 -3.5 13.5 2 -3.27502251 13.72497749 -1 6.27502298 13.5 -0.99999994 6.27502298
		 13.72497749 -0.99999994 6.5 13.72497749 -0.99999994 2.50000095 13.5 -0.99999994 2.72497654
		 13.72497749 -1 2.72497749 13.72497749 1.77502298 6.5 13.5 1.77502298 6.27502298 13.27502251 2 6.5
		 13.5 2 6.72497702 13.72497749 1.77502298 2.50000095 13.5 2 2.27502346 13.27502346 2 2.49999905
		 13.5 1.77502298 2.72497654 13.5 2 -2.72497749 13.27502346 2 -2.50000095 13.27502346 2 1.49999905
		 13.5 2 1.72497654 17.5 2 11.72497749 17.72497749 2 11.5 17.72497559 2 -7.5 17.5 2 -7.72497749
		 17.5 2 1.72497654 17.72497749 2 1.5 17.5 -0.99999994 2.72497654 17.27502251 -0.99999994 2.49999905
		 17.27502251 -1 2.72497749 17.5 1.77502298 2.72497654 17.72497749 2 2.50000095 17.5 2 2.27502346
		 17.27502251 1.77502298 2.49999905 17.72497749 2 7.50000095 17.5 2 7.27502346 17.27502251 -1 6.27502346
		 17.27502251 -0.99999994 6.49999905 17.5 -0.99999994 6.27502346 17.5 1.77502298 6.27502346
		 17.27502251 1.77502298 6.49999905 17.5 2 6.72497654 17.72497749 2 6.50000095 17.72497559 2 -2.5
		 17.5 2 -2.72497749 17.5 2 -3.27502251 17.72497559 2 -3.5 17.72410393 2 -12.47198677
		 17.5 2 -12.72497749 13.5 2 -12.72497749 13.28788948 2 -12.39394379 13.27502251 2 -8.49999809
		 13.5 2 -8.2750206 17.5 2 -8.2750206 17.72497749 2 -8.49999809;
	setAttr -s 234 ".ed";
	setAttr ".ed[0:165]"  1 2 0 0 1 0 1 3 0 2 4 0 3 5 0 5 0 0 3 6 0 4 7 0 6 49 0
		 3 8 0 8 9 0 8 10 0 8 11 0 10 12 0 11 12 0 8 13 0 9 14 0 13 14 0 11 15 0 13 15 0 13 64 0
		 15 16 0 13 18 0 14 19 0 2 17 0 5 9 0 6 10 0 18 22 0 19 23 0 18 19 1 20 59 0 21 60 0
		 20 21 1 22 26 0 23 27 0 22 23 1 24 20 0 25 21 0 24 25 1 26 28 0 27 29 0 26 27 1 28 29 1
		 16 30 0 17 31 0 32 33 0 30 34 0 32 34 0 34 33 0 31 36 0 57 36 0 37 63 0 37 35 0 39 38 0
		 39 40 0 40 38 0 41 42 0 41 43 0 42 43 0 44 45 0 44 46 0 45 46 0 39 41 0 40 43 0 35 44 0
		 37 46 0 32 42 0 4 47 0 2 48 0 47 48 0 47 49 0 7 49 0 10 51 0 50 51 0 11 50 0 12 51 0
		 50 52 0 15 52 0 52 53 0 16 53 0 17 54 0 48 54 0 47 50 0 49 51 0 53 55 0 30 55 0 31 56 0
		 54 56 0 55 33 0 56 57 0 55 39 0 55 41 0 56 44 0 33 41 0 3 4 0 6 7 0 58 36 0 57 58 1
		 58 116 1 59 61 0 60 62 0 59 60 1 61 1 0 62 0 0 35 57 0 63 58 0 61 62 1 56 35 1 35 63 1
		 63 123 1 52 48 0 53 54 0 55 56 0 39 44 0 38 45 0 28 24 0 29 25 0 65 16 0 65 64 0
		 66 81 0 67 18 1 67 66 0 68 59 1 69 121 0 69 68 0 70 20 1 71 70 0 80 22 1 81 80 0
		 83 89 0 84 26 1 84 83 0 86 71 0 87 24 1 87 86 0 88 28 1 89 88 0 90 30 0 91 32 0 90 91 0
		 92 37 0 93 122 0 93 92 0 95 38 0 95 94 0 100 40 0 101 94 0 101 100 0 103 42 0 104 110 0
		 104 103 0 111 43 0 110 111 0 112 45 0 113 114 0 113 112 0 115 46 0 114 115 0 117 31 0
		 117 116 0 118 17 0 119 1 1 119 118 0 120 61 1 121 120 0 123 122 0;
	setAttr ".ed[166:233]" 64 67 0 66 104 0 69 93 0 70 68 0 78 109 0 85 79 0 80 84 0
		 83 101 0 102 82 0 86 113 0 88 87 0 90 65 0 92 115 0 94 89 0 100 111 0 108 99 0 103 91 0
		 110 81 0 112 95 0 114 71 0 116 123 0 118 117 0 120 119 0 122 121 0 72 74 0 74 106 0
		 106 105 0 105 72 0 73 72 0 72 77 0 77 76 0 76 73 0 74 73 0 73 79 0 79 78 0 78 74 0
		 75 77 0 77 98 0 98 97 0 97 75 0 76 75 0 75 82 0 82 85 0 85 76 0 96 98 0 98 105 0
		 105 107 0 107 96 0 97 96 0 96 99 0 99 102 0 102 97 0 107 106 0 106 109 0 109 108 0
		 108 107 0 91 30 1 16 64 1 67 80 1 103 111 1 84 88 1 95 100 1 112 115 1 87 70 1 68 120 1
		 92 123 1 116 31 1 119 17 1;
	setAttr -s 112 -ch 456 ".fc[0:111]" -type "polyFaces" 
		f 4 -3 0 3 -95
		mu 0 4 3 1 2 4
		f 4 5 1 2 4
		mu 0 4 7 0 1 8
		f 4 -7 94 7 -96
		mu 0 4 9 3 4 10
		f 4 -8 67 70 -72
		mu 0 4 10 4 39 41
		f 4 -5 9 10 -26
		mu 0 4 5 3 12 11
		f 4 -10 6 26 -12
		mu 0 4 12 3 9 13
		f 4 -27 8 83 -73
		mu 0 4 13 9 41 43
		f 4 -71 82 73 -84
		mu 0 4 41 39 42 43
		f 3 -46 47 48
		mu 0 3 29 57 30
		f 4 11 13 -15 -13
		mu 0 4 12 13 15 14
		f 3 -14 72 -76
		mu 0 3 15 13 43
		f 4 -11 15 17 -17
		mu 0 4 11 12 17 16
		f 4 12 18 -20 -16
		mu 0 4 12 14 18 17
		f 4 -19 74 76 -78
		mu 0 4 18 14 42 44
		f 4 19 21 223 -21
		mu 0 4 17 18 53 84
		f 4 -22 77 78 -80
		mu 0 4 53 18 44 45
		f 4 -18 22 29 -24
		mu 0 4 16 17 54 23
		f 4 20 166 120 -23
		mu 0 4 17 84 122 54
		f 3 108 -52 52
		mu 0 3 31 67 73
		f 4 -30 27 35 -29
		mu 0 4 23 54 70 25
		f 3 -57 57 -59
		mu 0 3 75 33 34
		f 4 -121 224 127 -28
		mu 0 4 54 122 95 70
		f 4 -33 30 101 -32
		mu 0 4 24 68 66 51
		f 4 -126 169 122 -31
		mu 0 4 68 86 69 66
		f 4 -36 33 41 -35
		mu 0 4 25 70 56 27
		f 4 -128 172 130 -34
		mu 0 4 70 95 129 56
		f 4 -39 36 32 -38
		mu 0 4 26 55 68 24
		f 3 -60 60 -62
		mu 0 3 78 35 62
		f 4 -134 229 125 -37
		mu 0 4 55 130 86 68
		f 4 -41 -42 39 42
		mu 0 4 28 27 56 71
		f 3 -56 -55 53
		mu 0 3 58 74 37
		f 4 -40 -131 226 135
		mu 0 4 71 56 129 98
		f 4 -43 115 38 -117
		mu 0 4 28 71 55 26
		f 4 -79 110 81 -112
		mu 0 4 45 44 21 46
		f 4 -136 176 133 -116
		mu 0 4 71 98 130 55
		f 4 177 117 43 -138
		mu 0 4 83 121 53 72
		f 4 -44 79 84 -86
		mu 0 4 72 53 45 47
		f 4 189 -124 168 141
		mu 0 4 116 140 87 133
		f 4 179 -130 173 146
		mu 0 4 100 131 97 135
		f 4 183 -120 167 149
		mu 0 4 94 76 77 59
		f 4 185 -133 175 154
		mu 0 4 79 124 99 137
		f 4 -49 -47 85 88
		mu 0 4 29 30 72 47
		f 4 231 165 -142 142
		mu 0 4 102 141 116 133
		f 4 -144 227 145 55
		mu 0 4 58 134 109 74
		f 4 184 143 114 -154
		mu 0 4 103 134 58 78
		f 4 -54 113 59 -115
		mu 0 4 58 37 35 78
		f 4 -91 112 92 -114
		mu 0 4 37 47 48 38
		f 3 90 62 -92
		mu 0 3 47 37 33
		f 4 54 63 -58 -63
		mu 0 4 36 74 34 33
		f 4 -146 180 151 -64
		mu 0 4 74 109 136 60
		f 3 107 64 -93
		mu 0 3 48 31 38
		f 4 -53 65 -61 -65
		mu 0 4 31 73 62 35
		f 4 -141 178 156 -66
		mu 0 4 73 102 61 62
		f 4 182 138 66 -149
		mu 0 4 101 132 57 75
		f 4 56 -67 45 93
		mu 0 4 33 75 57 29
		f 3 -89 91 -94
		mu 0 3 29 47 33
		f 4 68 -70 -68 -4
		mu 0 4 2 40 39 6
		f 3 71 -9 95
		mu 0 3 10 41 9
		f 4 75 -74 -75 14
		mu 0 4 15 43 42 14
		f 4 80 -82 -69 24
		mu 0 4 80 46 21 22
		f 4 86 -88 -81 44
		mu 0 4 63 48 46 80
		f 4 -90 -87 49 -51
		mu 0 4 49 48 63 32
		f 3 50 -97 -98
		mu 0 3 49 32 50
		f 3 -159 159 232
		mu 0 3 63 138 113
		f 4 -161 187 158 -45
		mu 0 4 80 114 138 63
		f 4 -102 99 106 -101
		mu 0 4 51 66 81 52
		f 4 -1 -162 233 -25
		mu 0 4 64 65 139 80
		f 4 -164 188 161 -103
		mu 0 4 81 115 82 20
		f 4 -107 102 -2 -104
		mu 0 4 52 81 20 19
		f 3 -108 89 -105
		mu 0 3 31 48 49
		f 4 97 -106 -109 104
		mu 0 4 49 50 67 31
		f 4 98 186 -110 105
		mu 0 4 50 113 141 67
		f 4 -85 111 87 -113
		mu 0 4 47 45 46 48
		f 12 25 16 23 28 34 40 116 37 31 100 103 -6
		mu 0 12 5 11 16 23 25 27 28 26 24 51 52 0
		f 4 -111 -77 -83 69
		mu 0 4 21 44 42 39
		f 4 230 163 -100 -123
		mu 0 4 123 115 81 66
		f 4 222 46 -48 -139
		mu 0 4 132 72 30 57
		f 4 -153 -150 150 225
		mu 0 4 136 94 59 101
		f 4 -158 -155 155 228
		mu 0 4 61 79 137 103
		f 4 190 191 192 193
		mu 0 4 88 117 110 105
		f 4 194 195 196 197
		mu 0 4 89 88 91 118
		f 4 198 199 200 201
		mu 0 4 125 89 126 90
		f 4 202 203 204 205
		mu 0 4 92 91 104 119
		f 4 206 207 208 209
		mu 0 4 118 92 128 96
		f 4 210 211 212 213
		mu 0 4 106 104 105 120
		f 4 214 215 216 217
		mu 0 4 119 106 107 108
		f 4 218 219 220 221
		mu 0 4 120 110 111 112
		f 4 -202 170 -220 -192
		mu 0 4 117 93 111 110
		f 4 -210 171 -200 -198
		mu 0 4 118 96 126 89
		f 4 -218 174 -208 -206
		mu 0 4 119 108 128 92
		f 4 -222 181 -216 -214
		mu 0 4 120 112 107 106
		f 3 -195 -199 -191
		mu 0 3 88 89 125
		f 3 -207 -197 -203
		mu 0 3 92 118 91
		f 3 -215 -205 -211
		mu 0 3 106 119 104
		f 3 -193 -219 -213
		mu 0 3 105 110 120
		f 3 -140 137 -223
		mu 0 3 132 83 72
		f 3 -224 -118 118
		mu 0 3 84 53 121
		f 4 -225 121 119 128
		mu 0 4 95 122 85 127
		f 4 -226 148 58 -152
		mu 0 4 136 101 75 60
		f 4 -227 131 129 136
		mu 0 4 98 129 97 131
		f 4 -228 144 -147 147
		mu 0 4 109 134 100 135
		f 4 -229 153 61 -157
		mu 0 4 61 103 78 62
		f 4 -230 134 132 126
		mu 0 4 86 130 99 124
		f 4 -125 123 164 -231
		mu 0 4 123 87 140 115
		f 4 109 -232 140 51
		mu 0 4 67 141 102 73
		f 4 -233 -99 96 -50
		mu 0 4 63 113 50 32
		f 3 -234 162 160
		mu 0 3 80 139 114
		f 8 -160 -188 -163 -189 -165 -190 -166 -187
		mu 0 8 113 138 114 82 115 140 116 141
		f 8 -170 -127 -186 157 -179 -143 -169 124
		mu 0 8 69 86 124 79 61 102 133 87
		f 8 -135 -177 -137 -180 -145 -185 -156 -176
		mu 0 8 99 130 98 131 100 134 103 137
		f 8 -129 -184 152 -181 -148 -174 -132 -173
		mu 0 8 95 76 94 136 109 135 97 129
		f 8 -119 -178 139 -183 -151 -168 -122 -167
		mu 0 8 84 121 83 132 101 59 85 122;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_02";
	rename -uid "0E5B69B0-465E-096B-C7FD-FE801C41CF33";
	setAttr ".t" -type "double3" 15.5 0 4.5 ;
createNode mesh -n "SM_Button_Ability_02Shape" -p "SM_Button_Ability_02";
	rename -uid "318409C4-48E4-B941-3565-09AA612A73D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_03";
	rename -uid "8008B1FD-418D-4D32-C0CC-C3A268F765D3";
	setAttr ".t" -type "double3" 15.5 0 -0.5 ;
createNode mesh -n "SM_Button_Ability_03Shape" -p "SM_Button_Ability_03";
	rename -uid "6E5D3573-4301-66FD-D72B-399DF606D65E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_04";
	rename -uid "EAB3AD7B-44E6-9693-8B8F-1597D07ACFE4";
	setAttr ".t" -type "double3" 15.5 0 -5.5 ;
createNode mesh -n "SM_Button_Ability_04Shape" -p "SM_Button_Ability_04";
	rename -uid "1DEE4E76-4AE0-7842-AA2A-8FB0A125B963";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "typeMesh2";
	rename -uid "B22F279B-4253-E509-E736-FDAA9AEF0C90";
	setAttr ".t" -type "double3" -23.8441344125971 2 -7.1886555965462637 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode mesh -n "typeMeshShape2" -p "typeMesh2";
	rename -uid "23D9C23E-456B-A752-C818-CAAA91182683";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2";
	rename -uid "420B20DA-4F96-30C7-F732-37B8C3F40B0B";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints2" -p "transform2";
	rename -uid "0E1F61E5-4822-5E74-34D2-E3A18FE3AD89";
	setAttr -k off ".v";
	setAttr -s 2 ".inPointPositionsPP";
	setAttr ".hio" yes;
createNode transform -n "transform3";
	rename -uid "833A9762-4469-CB72-B1AF-FF8A51BD44B5";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints3" -p "transform3";
	rename -uid "4163659B-4ED8-5A4C-A5C6-E4AFA5E11DA2";
	setAttr -k off ".v";
	setAttr ".hio" yes;
createNode transform -n "SM_Board";
	rename -uid "2DF09BAF-4A70-4CFB-6DE3-DDAF0B8E6A9D";
createNode mesh -n "SM_BoardShape" -p "SM_Board";
	rename -uid "C58DBA50-4A68-9375-A29F-C1862E4154DA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:66]" "f[68:455]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[67]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 20 "f[2:14]" "f[16:33]" "f[35:38]" "f[40:52]" "f[54]" "f[60]" "f[63]" "f[66]" "f[70:82]" "f[85:108]" "f[110:128]" "f[130:144]" "f[146:158]" "f[161:180]" "f[185:193]" "f[198:325]" "f[337:354]" "f[356:366]" "f[370:372]" "f[398:455]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 20 "f[15]" "f[34]" "f[39]" "f[47:49]" "f[53]" "f[55:59]" "f[64:65]" "f[83:84]" "f[108:110]" "f[121]" "f[129]" "f[138]" "f[159:160]" "f[182:183]" "f[193:197]" "f[326:336]" "f[355]" "f[363:364]" "f[367:369]" "f[373:397]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "top";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 23 "f[0]" "f[15]" "f[34]" "f[39]" "f[47:49]" "f[56:59]" "f[61:62]" "f[64:65]" "f[69]" "f[83:84]" "f[108:110]" "f[121]" "f[129]" "f[138]" "f[145]" "f[159:160]" "f[181:183]" "f[193:197]" "f[330:336]" "f[355]" "f[363:364]" "f[367:369]" "f[373:397]";
	setAttr ".pv" -type "double2" 0.375 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 488 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 0.25 0.625 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.875 0.25 0.125 0 0.125 0.25 0.52358079 0.49996877
		 0.375 0.75 0.375 0.5 0.34638333 0.50017244 0.375 0.5 0.375 0.75 0.375 0.5 0.375 0.5
		 0.375 0.75 0.375 0.5 0.47775272 0.65262723 1 0 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.75 0.375 0.75 0.375 0.75 0.375 0.7725755 0.375 0.5 0.083157197 0.97204566 0.5 1
		 0.375 0.72886896 0.375 0.5 0.28844965 0.82426643 0.375 0.77444339 0.375 0.71518552
		 0.28777975 0.74129236 0.55550075 0.76155752 0.47643086 0.88688767 0.54941386 0.7493872
		 0.36738169 0.76589119 0.37429971 0.75146043 0.33785957 0.76915836 0.35721233 0.76188684
		 0.44682539 0.71940982 0.36595362 0.74251974 0.39934728 0.89234591 0.40857208 1.000055193901
		 0.7736035 1 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.55624425 0.375 0.75 0.375 0.5 0.375 0.5 0.57498771 1 0 0 1 0 0.375
		 0.5 0.94778663 1 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 1 1 0.375 0.5
		 0.375 0.5 0.375 0.69375563 0.375 0.55624437 0.375 0.5 0.375 0.5 0.5 1 0.375 0.5 0.74682778
		 0.90991539 0.375 0.5 0.375 0.51874804 0.375 0.5 0.375 0.7312519 0.375 0.73593891
		 0.375 0.5 0.375 0.51640457 0.375 0.62265646 0.375 0.625 0.375 0.5 0.36093894 0.52812213
		 0.37148476 0.52109158 0.20156106 0.84687781 0.98825318 1 0.21210685 0.83984733 0.375
		 0.73125196 0.375 0.51874804 0.375 0.51874804 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.75 0.375 0.73125196 0.375 0.51874804 0.375 0.75 0.375 0.73125196 0.375 0.75 0.375
		 0.6937561 0.375 0.5 0.375 0.51874804 0.375 0.5 0.375 0.5 0.375 0.63203049 0.375 0.61562598
		 0.375 0.50937402 0.375 0.51640457 0.375 0.5 0.375 0.5 0.375 0.73125196 0.375 0.51874804
		 0.375 0.7312519 0.375 0.51874804 0.375 0.5 0.375 0.5 0.375 0.50468701 0.375 0.73125196
		 0.375 0.7171908 0.375 0.51406109 0.021091618 0.98593891 0.35390842 0.76406109 0.039839588
		 0.98593891 0.93555355 0.99296945 0.9274931 0.95647573 0.96484733 0.97187787 0.41015267
		 0.52812213 0.375 0.52109158 0.375 0.73125196 0.375 0.51874804 0.375 0.5 0.375 0.5
		 0.375 0.75 0.375 0.75 0.375 0.74531299 0.375 0.53280914 0.375 0.51874804 0.375 0.5
		 0.375 0.5 0.37499997 0.5 0.375 0.50703055 0.375 0.75 0.375 0.75 0.375 0.75 0.375
		 0.5 0.37499997 0.5 0.375 0.50703055 0.375 0.75 0.375 0.75 0.35390842 0.76406109 0.84915298
		 0.90648365 0.94726157 0.99811655 0.18749997 0.875 0.35390842 0.76406109 0.375 0.74296945
		 0.375 0.74296945 0.375 0.73593891 0.375 0.51874804 0.375 0.73125196 0.375 0.50703055
		 0.375 0.50937402 0.375 0.61562598 0.085538179 0.99296945 0.24843125 0.88437402 0.375
		 0.75 0.375 0.75 0.375 0.7312519 0.375 0.73125196 0.375 0.62265646 0.375 0.50703055
		 0.35390839 0.76406103 0.375 0.7171908 0.375 0.50468701 0.375 0.75 0.375 0.51874804
		 0.375 0.5 0.375 0.5 0.375 0.5 0.92969459 0.94375563 1 1 0.93906879 0.99062598 0.375
		 0.73125196 0.375 0.5 0.375 0.73125196 0.375 0.5 0.375 0.51874804 0.375 0.5 0.375
		 0.51874804 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.88985503
		 0.98593891 0.98825318 1 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.75
		 0.375 0.5 0.375 0.75 0.7552197 0.99995029 0.37245601 0.76412338 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 1 1 0.40597793 0.96976578
		 0.375 0.5 0.375 0.5 0.37224069 0.75575542 0.55122548 0.75300944 0.625 0.5 0.375 0.5
		 0.375 0.5 0.36822402 0.76413417 0.55475962 0.76007569 0.625 0.5 0.375 0.5 0.375 0.5
		 0.37100026 0.75834298 0.5523169 0.75519168 0.625 0.5 0.375 0.5 0.375 0.5 0.36948639
		 0.7615009 0.55364889 0.75785494 0.625 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5;
	setAttr ".uvst[0].uvsp[250:487]" 0.375 0.5 0.37499997 0.5 0.375 0.5 0.375 0.5
		 0.37499997 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.36738169 0.76589119 0.33785957
		 0.76915836 0.375 0.5 0.35721233 0.76188684 0.375 0.5 0.36595362 0.74251974 0.375
		 0.5 0.37245601 0.76412338 0.36822402 0.76413417 0.375 0.5 0.375 0.7725755 0.375 0.5
		 0.375 0.5 0.37429971 0.75146043 0.37224069 0.75575542 0.375 0.5 0.36948639 0.7615009
		 0.375 0.5 0.37100026 0.75834298 0.375 0.5 0.625 0.5 0.625 0.5 0.55550075 0.76155752
		 0.55475962 0.76007569 0.47643086 0.88688767 0.875 0.25 0.625 0.25 0.44682539 0.71940982
		 0.47775272 0.65262723 1 0 0.5 1 0.39934728 0.89234591 0.5 1 0.40597793 0.96976578
		 0.5 1 0.40857208 1.000055193901 0.5 1 0.625 0.5 0.625 0.5 0.55122548 0.75300944 0.54941386
		 0.7493872 0.625 0.5 0.55364889 0.75785494 0.625 0.5 0.5523169 0.75519168 0.33706933
		 0.50044942 0.52311271 0.49990934 0.54941386 0.7493872 0.37429971 0.75146043 0.37429971
		 0.75146043 0.375 0.5 0.625 0.5 0.54941386 0.7493872 0.375 0.5 0.375 0.5 0.94778663
		 1 1 1 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.71518552
		 0.28844965 0.82426643 0.375 0.72886896 0.375 0.77444339 0.083157197 0.97204566 0.375
		 0.7725755 0.5 1 0.7736035 1 0.40857208 1.000055193901 0.375 0.5 0.375 0.7725755 0.40857208
		 1.000055193901 0.5 1 0.5 1 0.94778663 1 0.94256169 1 0.77882838 1 0.7736035 1 0.94778663
		 1 0.95405155 1 0.94256169 1 0.7736035 1 0.94256163 1 0.94778663 1 0.77882844 1 0.77882844
		 1 0.7736035 1 0.76266044 1 0.77360344 1 0.77360344 1 0.94778663 1 0.94778663 1 0.94778663
		 1 0.94256169 1 0.95405161 1 0.7626605 1 0.77882838 1 0.77360344 1 0.375 0.5 0.375
		 0.5 0.375 0.5 0.37499997 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375
		 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 442 ".pt";
	setAttr ".pt[1:166]" -type "float3"  0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 0 0 0 -0.5 0 0 -0.5 0 0 0 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 0 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 0 0 0 -0.5 0 0 0 0 0 -0.5 0 0 0 0 0 -0.5 0 0 0 0 0 -0.5 0 0 0 
		0 0 -0.5 0 0 0 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 
		-0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 
		-0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 
		-0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 0 0 0 -0.5 0 0 0 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 
		0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0;
	setAttr ".pt[167:332]" 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0;
	setAttr ".pt[333:441]" 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 
		0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0;
	setAttr -s 442 ".vt";
	setAttr ".vt[0:165]"  11.5 0 -11.5 11.5 2 -11.5 11.5 2 -15.5 -11.5 2 -11.5
		 -11.5 2 -15.5 -11.5 0 -11.5 -26.5 2 -15.5 -11.5 2 11.5 -11.5 0 11.5 -26.5 2 15.5
		 -11.5 2 15.5 11.5 2 11.5 11.5 0 11.5 11.5 2 15.5 13.5 2 15.5 13.5 2 -15.5 11.5 2 7.5
		 11.5 0 7.5 11.5 2 -3.5 11.5 0 -3.5 11.5 2 6.5 11.5 0 6.5 11.5 2 -2.5 11.5 0 -2.5
		 11.5 2 2.5 11.5 0 2.5 11.5 2 1.5 11.5 0 1.5 17.5 2 15.5 17.5 2 -15.5 26.5 2 11.5
		 26.5 -1.5 15.5 26.5 2 15.5 26.5 -1.5 -8 26.5 2 -15.5 26.5 2 -7.5 26.5 2 1.5 26.5 -1.5 2
		 26.5 2 2.5 26.5 -1.5 7 26.5 2 7.5 26.5 2 6.5 26.5 -1.5 -3 26.5 2 -2.5 26.5 2 -3.5
		 -11.5 -1.5 -15.5 11.5 -1.5 -15.5 -26.5 -1.5 -15.5 -11.5 -1.5 15.5 -26.5 -1.5 15.5
		 11.5 -1.5 15.5 13.5 -1.5 15.5 13.5 -1.5 -15.5 17.5 -1.5 15.5 17.5 -1.5 -15.5 26.5 -1.5 -15.5
		 26.5 2 -11.50001144 11.5 2 -7.5 11.5 0 -7.5 11.5 2 -8.5 11.5 0 -8.5 26.5 2 -8.5 13.72497749 1.77502298 11.5
		 13.5 1.77502298 11.27502251 13.27502251 2 11.5 13.5 2 11.72497749 13.72497749 -1 11.27502251
		 13.5 -0.99999994 11.27502251 13.72497749 -0.99999994 11.5 13.72497749 1.77502298 7.5
		 13.5 2 7.27502298 13.27502251 2 7.5 13.5 1.77502298 7.72497702 13.72497749 -0.99999994 7.5
		 13.5 -0.99999994 7.72497702 13.72497749 -1 7.72497702 13.27502251 2 -7.5 13.5 1.77502298 -7.27502251
		 13.72497749 1.77502298 -7.5 13.5 2 -7.72497749 13.72497749 -0.99999994 -7.5 13.5 -0.99999994 -7.27502251
		 13.72497749 -1 -7.27502251 13.72497749 -1 -3.72497749 13.5 -0.99999994 -3.72497749
		 13.72497654 -0.99999994 -3.5 13.72497654 1.77502298 -3.5 13.5 1.77502298 -3.72497749
		 13.27502251 2 -3.5 13.5 2 -3.27502251 13.72497749 -1 6.27502298 13.5 -0.99999994 6.27502298
		 13.72497749 -0.99999994 6.5 13.72497749 -0.99999994 2.50000095 13.5 -0.99999994 2.72497654
		 13.72497749 -1 2.72497749 13.72497749 1.77502298 6.5 13.5 1.77502298 6.27502298 13.27502251 2 6.5
		 13.5 2 6.72497702 13.72497749 1.77502298 2.50000095 13.5 2 2.27502346 13.27502346 2 2.49999905
		 13.5 1.77502298 2.72497654 13.72497749 -1 -2.27502251 13.72497654 -0.99999994 -2.5
		 13.5 -0.99999994 -2.27502346 13.5 1.77502298 -2.27502346 13.72497654 1.77502298 -2.5
		 13.5 2 -2.72497749 13.27502346 2 -2.50000095 13.5 -0.99999994 1.27502346 13.72497654 -0.99999994 1.50000095
		 13.72497749 -1 1.27502346 13.5 1.77502298 1.27502346 13.27502346 2 1.49999905 13.5 2 1.72497654
		 13.72497654 1.77502298 1.50000095 17.5 1.77502298 11.27502251 17.27502251 1.77502298 11.5
		 17.5 2 11.72497749 17.72497749 2 11.5 17.27502251 -1 11.27502251 17.27502251 -0.99999994 11.5
		 17.5 -0.99999994 11.27502251 17.5 -0.99999994 -7.27502251 17.27502251 -0.99999994 -7.5
		 17.27502251 -1 -7.27502251 17.5 1.77502298 -7.27502251 17.72497559 2 -7.5 17.5 2 -7.72497749
		 17.27502251 1.77502298 -7.5 17.27502251 -1 1.27502346 17.27502251 -0.99999994 1.49999905
		 17.5 -0.99999994 1.27502251 17.5 1.77502298 1.27502251 17.27502251 1.77502298 1.49999905
		 17.5 2 1.72497654 17.72497749 2 1.5 17.5 -0.99999994 2.72497654 17.27502251 -0.99999994 2.49999905
		 17.27502251 -1 2.72497749 17.5 1.77502298 2.72497654 17.72497749 2 2.50000095 17.5 2 2.27502346
		 17.27502251 1.77502298 2.49999905 17.5 -0.99999994 7.72497749 17.27502251 -0.99999994 7.5
		 17.27502251 -1 7.72497749 17.5 1.77502298 7.72497749 17.72497749 2 7.50000095 17.5 2 7.27502346
		 17.27502251 1.77502298 7.5 17.27502251 -1 6.27502346 17.27502251 -0.99999994 6.49999905
		 17.5 -0.99999994 6.27502346 17.5 1.77502298 6.27502346 17.27502251 1.77502298 6.49999905
		 17.5 2 6.72497654 17.72497749 2 6.50000095 17.5 -0.99999994 -2.27502251 17.27502441 -0.99999994 -2.5
		 17.27502251 -1 -2.27502251 17.5 1.77502298 -2.27502251 17.72497559 2 -2.5 17.5 2 -2.72497749;
	setAttr ".vt[166:331]" 17.27502441 1.77502298 -2.5 17.27502251 -1 -3.72497749
		 17.27502441 -0.99999994 -3.5 17.5 -0.99999994 -3.72497749 17.5 1.77502298 -3.72497749
		 17.27502441 1.77502298 -3.5 17.5 2 -3.27502251 17.72497559 2 -3.5 17.72410393 2 -12.47198677
		 13.28788948 2 -12.39394379 13.27502251 2 -8.49999809 17.72497749 2 -8.49999809 23 -1.5 15.5
		 23 2 15.5 23 2 11.5 23 2 7.5 23 2 6.5 23 2 2.50000024 23 2 1.5 23 2 -2.5 23 2 -3.5
		 23 2 -7.5 23 2 -15.5 23 -1.5 -15.5 -21.5 2 -11.5 -21.5 2 15.5 -21.5 -1.5 15.5 -21.5 -1.5 -15.5
		 -21.5 2 -15.5 -13.5 2 -11.50000095 -13.5 2 15.5 -13.5 -1.5 15.5 -13.5 -1.5 -15.5
		 -13.5 2 -15.5 -19 2 -11.5 -19 2 15.5 -19 -1.5 15.5 -19 -1.5 -15.5 -19 2 -15.5 -16 2 -11.5
		 -16 2 15.5 -16 -1.5 15.5 -16 -1.5 -15.5 -16 2 -15.5 -11.5 2 9 -11.5 2 6 -11.5 2 3.50000048
		 -13.5 2 3.50000048 -21.5 2 3.49999952 -13.5 2 11.5 -21.5 2 11.5 -13.5 1.87624872 8.87624931
		 -13.62375164 1.87624872 9 -13.5 2 9.12375164 -13.37624836 2 9 -15.55636978 1.87328959 8.91544533
		 -15.39864731 2 9.11946201 -15.39837742 1.87328959 9 -16 1.87328959 9.60162258 -15.88053799 2 9.60135269
		 -16.084554672 1.87328959 9.44363022 -17.58830643 1.87511504 8.55887127 -17.41089058 1.87398148 8.55940628
		 -17.34420586 2 8.45950603 -13.62375164 1.87624872 6 -13.5 1.87624872 6.12375116 -13.37624836 2 6
		 -13.5 2 5.87624884 -15.39837742 1.87328959 6 -15.39864731 2 5.88053751 -15.55636978 1.87328959 6.084554672
		 -16.44112778 1.87511504 7.5883069 -16.44059372 1.87398148 7.41089153 -16.54102898 2 7.65499163
		 -19.44363022 1.87328959 6.084554672 -19.3445015 2 6.018384933 -19.60162163 1.87328959 6
		 -18.55887222 1.87511504 7.4116931 -18.55940628 1.87398148 7.58910847 -18.45897102 2 7.34500837
		 -21.5 1.87624872 6.12375116 -21.37624931 1.87624872 6 -21.5 2 5.87624884 -21.62375069 2 6
		 -15.87624836 2 3.49999952 -16 2 3.37624836 -15.88053799 2 5.39864731 -19 2 3.37624836
		 -19.12375069 2 3.49999952 -18.98161507 2 5.65550041 -16 1.87624872 11.37624836 -16.12375069 1.87624872 11.5
		 -16 2 11.62375164 -15.87624836 2 11.5 -19.60162163 1.87328959 9 -19.3445015 2 8.98161507
		 -19.44363022 1.87328959 8.91544533 -21.37624931 1.87624872 9 -21.5 1.87624872 8.87624836
		 -21.62375069 2 9 -21.5 2 9.12375069 -18.87624931 1.87624872 11.5 -19 1.87624872 11.37624836
		 -19.12375069 2 11.5 -19 2 11.62375164 -18.91544533 1.87328959 9.44363022 -18.98161507 2 9.34450054
		 -19 1.87328959 9.60162258 -17.65579224 2 6.54049492 -19 -1 11.37624836 -18.87624931 -1 11.5
		 -17.41249466 -1 8.55833721 -17.58750534 -1 8.55833721 -17.5 -1 8.58750534 -19 -1 9.59924889
		 -18.91741943 -1 9.44494629 -16 -1 11.37624836 -16.12375069 -1 11.5 -16.082580566 -1 9.44494629
		 -16 -1 9.59924889 -15.40075111 -1 9 -15.55505371 -1 8.91741943 -16.44166374 -1 7.41249466
		 -16.44166374 -1 7.58750534 -13.5 -1 8.87624931 -13.62375164 -1 9 -13.62375164 -1 6
		 -13.5 -1 6.12375116 -15.55505371 -1 6.08258009 -15.40075111 -1 6 -18.55833626 -1 7.58750534
		 -18.55833626 -1 7.41249466 -19.59924889 -1 6 -19.44494629 -1 6.08258009 -21.5 -1 6.12375116
		 -21.37624931 -1 6 -19.44494629 -1 8.91741943 -19.59924889 -1 9 -21.5 -1 8.87624836
		 -21.37624931 -1 9 -15.65550041 2 8.98161507 -16.018384933 2 9.34450054 -17.65499115 2 8.45897007
		 -15.65550041 2 6.018384457 -16.54049492 2 7.34420729 -19.60135269 2 5.88053751 -18.45950508 2 7.65579271
		 -19.60135269 2 9.11946201 -19.11946297 2 9.60135269 -11.5 2 19.5 11.5 2 19.5 -11.5 -1.5 19.5
		 11.5 -1.5 19.5 13.5 2 19.5 13.5 -1.5 19.5 17.5 2 19.5 17.5 -1.5 19.5 23 -1.5 19.5
		 23 2 19.5 -13.5 2 19.5 -13.5 -1.5 19.5 26.5 2 19.5 26.5 -1.5 19.5 -26.5 2 19.5 -26.5 -1.5 19.5
		 -21.5 -1.5 19.5;
	setAttr ".vt[332:441]" -21.5 2 19.5 -16 2 19.5 -16 -1.5 19.5 -19 -1.5 19.5
		 -19 2 19.5 -13.5 -1.5 -19.5 -13.5 2 -19.5 -11.5 2 -19.5 -11.5 -1.5 -19.5 11.5 2 -19.5
		 11.5 -1.5 -19.5 13.5 2 -19.5 13.5 -1.5 -19.5 17.5 2 -19.5 17.5 -1.5 -19.5 23 2 -19.5
		 23 -1.5 -19.5 26.5 -1.5 -19.5 26.5 2 -19.5 -21.5 2 -19.5 -26.5 2 -19.5 -21.5 -1.5 -19.5
		 -26.5 -1.5 -19.5 -16 -1.5 -19.5 -16 2 -19.5 -19 2 -19.5 -19 -1.5 -19.5 -32.5 2 15.5
		 -32.5 2 -15.5 -32.5 -1.5 -15.5 -32.5 -1.5 15.5 -32.5 -1.5 19.5 -32.5 2 19.5 -32.5 2 -19.5
		 -32.5 -1.5 -19.5 32.5 2 11.5 32.5 -1.5 15.5 32.5 2 15.5 32.5 -1.5 -8 32.5 2 -8.5
		 32.5 2 -7.5 32.5 -1.5 7 32.5 2 7.5 32.5 2 6.5 32.5 -1.5 -3 32.5 2 -2.5 32.5 2 -3.5
		 32.5 2 2.5 32.5 2 1.5 32.5 -1.5 2 32.5 -1.5 -15.5 32.5 2 -15.5 32.5 2 -11.50001144
		 32.5 2 19.5 32.5 -1.5 19.5 32.5 -1.5 -19.5 32.5 2 -19.5 23 1.88001227 -8.61998749
		 22.88001251 1.88001227 -8.5 23 2 -8.38001251 23.11998749 2 -8.5 19.11998749 1.88001215 -8.49999809
		 19 1.88001215 -8.61998558 18.88001251 2 -8.49999809 19 2 -8.3800106 22.88001251 1.88001227 -12.49999809
		 23 1.88001227 -12.3800106 23.11761093 2 -12.46639538 23 2 -12.61998558 19 1.88001215 -12.38001442
		 19.11998749 1.88001215 -12.50000191 19 2 -12.6199894 18.88002586 2 -12.49736786 22.88001251 -1 -8.5
		 23 -1 -8.61998749 22.88001251 -1 -12.49999809 23 -1 -12.3800106 19 -1 -12.38001442
		 19.11998749 -1 -12.50000191 19.11998749 -1 -8.49999809 19 -1 -8.61998558 -16.12375069 1.87624872 3.5
		 -16 1.87624872 3.62375164 -15.87624836 2 3.5 -16 2 3.37624836 -16.084554672 1.87328959 5.55636978
		 -16 1.87328959 5.39837742 -19 1.87624872 3.62375164 -18.87624931 1.87624872 3.5 -19 2 3.37624836
		 -19.12375069 2 3.5 -19 1.87328959 5.39837742 -18.91544533 1.87328959 5.55636978 -17.41169357 1.87511504 6.44112778
		 -17.58910751 1.87398148 6.44059372 -16 -1 5.40075111 -16.082580566 -1 5.55505371
		 -17.58750534 -1 6.44166374 -17.41249466 -1 6.44166374 -16.12375069 -1 3.5 -16 -1 3.62375164
		 -19 -1 3.62375164 -18.87624931 -1 3.5 -18.91741943 -1 5.55505371 -19 -1 5.40075111
		 -16.018384933 2 5.65550041 -19.11946297 2 5.39864731 -17.34500885 2 6.54102898 -19.50914192 2 5.79683256
		 -19.19084167 2 5.50789165;
	setAttr -s 897 ".ed";
	setAttr ".ed[0:165]"  1 2 0 0 1 0 1 3 0 2 4 0 3 5 0 5 0 0 3 195 0 4 199 0
		 3 212 0 7 8 0 7 10 0 10 196 0 7 11 0 8 12 0 11 12 0 10 13 0 11 13 0 11 64 0 13 14 0
		 11 16 0 12 17 0 2 15 0 5 8 0 6 9 0 16 20 0 17 21 0 16 17 1 18 57 0 19 58 0 18 19 1
		 20 24 0 21 25 0 20 21 1 22 18 0 23 19 0 22 23 1 24 26 0 25 27 0 24 25 1 26 27 1 14 28 0
		 15 29 0 28 179 0 30 32 0 35 61 0 38 36 0 40 41 0 43 44 0 37 39 0 38 41 0 33 42 0
		 35 44 0 30 40 0 45 46 0 45 198 0 48 197 0 48 50 0 50 51 0 46 52 0 45 48 0 47 49 0
		 51 53 0 52 54 0 53 178 0 54 189 0 53 37 0 53 39 0 54 42 0 31 39 0 3 4 0 56 34 0 56 399 1
		 57 59 0 58 60 0 57 58 1 59 1 0 60 0 0 33 55 0 61 56 0 59 60 1 54 33 1 61 392 1 50 46 0
		 51 52 0 53 54 0 37 42 0 36 43 0 26 22 0 27 23 0 65 14 0 65 64 0 70 99 0 71 16 1 71 70 0
		 76 57 1 79 176 0 79 76 0 88 18 1 89 88 0 98 20 1 99 98 0 101 116 0 102 24 1 102 101 0
		 109 89 0 110 22 1 110 109 0 115 26 1 116 115 0 120 28 0 121 180 0 120 121 0 130 177 0
		 130 129 0 138 184 0 138 137 0 143 183 0 144 137 0 144 143 0 150 181 0 151 158 0 151 150 0
		 159 182 0 158 159 0 164 185 0 165 172 0 165 164 0 173 186 0 172 173 0 175 15 0 175 1 1
		 176 59 1 62 119 0 72 63 0 64 71 0 70 151 0 152 69 0 77 87 0 131 78 0 79 130 0 86 171 0
		 88 76 0 96 157 0 103 97 0 98 102 0 101 144 0 145 100 0 107 114 0 166 108 0 109 165 0
		 117 136 0 115 110 0 118 149 0 120 65 0 129 173 0 170 128 0 135 163 0 137 116 0 143 159 0
		 156 142 0 150 121 0 158 99 0 164 138 0 172 89 0 174 177 0 175 174 0;
	setAttr ".ed[166:331]" 176 175 0 177 176 0 62 65 0 120 119 0 63 62 0 62 68 0
		 68 67 0 67 63 0 64 63 0 72 71 0 66 68 0 68 123 0 123 122 0 122 66 0 67 66 0 66 75 0
		 75 74 0 74 67 0 70 69 0 152 151 0 69 72 0 72 74 0 74 73 0 73 69 0 73 75 0 75 148 0
		 148 147 0 147 73 0 77 76 0 88 87 0 78 77 0 77 81 0 81 80 0 80 78 0 79 78 0 131 130 0
		 80 82 0 82 127 0 127 126 0 126 80 0 82 81 0 81 84 0 84 83 0 83 82 0 83 85 0 85 168 0
		 168 167 0 167 83 0 85 84 0 84 87 0 87 86 0 86 85 0 86 89 0 172 171 0 90 92 0 92 154 0
		 154 153 0 153 90 0 91 90 0 90 95 0 95 94 0 94 91 0 92 91 0 91 97 0 97 96 0 96 92 0
		 93 95 0 95 141 0 141 140 0 140 93 0 94 93 0 93 100 0 100 103 0 103 94 0 96 99 0 158 157 0
		 98 97 0 103 102 0 101 100 0 145 144 0 104 106 0 106 111 0 111 113 0 113 104 0 105 104 0
		 104 162 0 162 161 0 161 105 0 106 105 0 105 108 0 108 107 0 107 106 0 107 110 0 115 114 0
		 109 108 0 166 165 0 112 111 0 111 114 0 114 117 0 117 112 0 113 112 0 112 133 0 133 132 0
		 132 113 0 117 116 0 137 136 0 118 121 0 150 149 0 119 118 0 118 124 0 124 123 0 123 119 0
		 122 124 0 124 146 0 146 148 0 148 122 0 125 127 0 127 167 0 167 169 0 169 125 0 126 125 0
		 125 128 0 128 131 0 131 126 0 129 128 0 170 173 0 132 134 0 134 160 0 160 162 0 162 132 0
		 134 133 0 133 136 0 136 135 0 135 134 0 135 138 0 164 163 0 139 141 0 141 153 0 153 155 0
		 155 139 0 140 139 0 139 142 0 142 145 0 145 140 0 143 142 0 156 159 0 147 146 0 146 149 0
		 149 152 0 152 147 0 155 154 0 154 157 0 157 156 0 156 155 0 161 160 0 160 163 0 163 166 0
		 166 161 0 169 168 0 168 171 0 171 170 0 170 169 0 121 28 1 14 64 1 71 98 1 150 159 1;
	setAttr ".ed[332:497]" 102 115 1 138 143 1 164 173 1 110 88 1 76 176 1 129 177 1
		 174 29 1 178 31 0 179 32 0 180 30 0 181 40 0 182 41 0 183 38 0 184 36 0 185 43 0
		 186 44 0 187 35 0 188 34 0 189 55 0 179 180 1 180 181 1 181 182 1 182 183 1 183 184 1
		 184 185 1 185 186 1 186 187 1 187 391 1 190 6 0 191 9 0 192 49 0 193 47 0 194 6 0
		 190 214 1 192 193 1 194 190 1 195 205 0 196 206 0 197 207 0 198 208 0 199 209 0 195 213 1
		 197 198 1 199 195 1 200 190 0 201 191 0 202 192 0 203 193 0 204 194 0 200 253 1 202 203 1
		 204 200 1 207 202 0 209 204 0 205 251 1 207 208 1 209 205 1 210 7 0 210 220 1 211 210 0
		 211 232 1 212 211 0 213 233 1 214 248 1 212 213 1 213 250 1 214 9 1 215 196 1 216 191 1
		 215 259 1 216 9 1 205 200 1 206 201 0 208 203 0 283 276 0 219 215 1 220 219 0 232 233 0
		 249 9 1 249 248 0 250 251 0 254 214 1 254 253 0 258 206 1 259 258 0 265 9 1 266 216 1
		 266 265 0 269 216 1 270 201 1 270 269 0 276 275 0 277 284 0 279 277 1 279 278 1 280 275 0
		 281 278 0 281 280 0 283 282 0 285 282 0 285 284 0 287 289 0 287 286 0 288 294 0 291 286 0
		 291 290 0 292 295 0 293 290 0 293 292 0 295 294 0 296 302 0 298 301 0 299 297 0 299 298 0
		 300 304 0 301 300 0 303 305 0 303 302 0 305 304 0 218 291 0 290 217 0 231 293 0 292 230 0
		 247 301 0 300 246 0 264 304 0 257 283 0 282 256 0 305 263 0 268 275 0 276 267 0 218 217 0
		 219 218 0 218 223 0 217 220 0 220 232 0 221 223 0 223 286 0 287 221 0 221 237 0 224 226 0
		 226 284 0 285 224 0 224 256 0 256 259 0 259 225 0 225 307 0 228 226 0 229 308 0 271 227 0
		 228 227 0 227 278 0 278 277 0 277 228 0 231 230 0 232 231 0 231 217 0 230 233 0 233 235 0
		 234 230 0 234 236 0 236 294 0 295 234 0 235 309 0 238 236 0 238 237 0;
	setAttr ".ed[498:663]" 237 289 0 289 288 0 288 238 0 240 242 0 242 298 0 299 240 0
		 240 243 0 241 311 0 248 247 0 247 242 0 244 243 0 243 297 0 297 296 0 296 244 0 244 262 0
		 247 246 0 246 249 0 249 265 0 265 264 0 264 246 0 251 253 0 274 439 0 254 438 0 257 256 0
		 258 257 0 257 267 0 267 270 0 270 258 0 260 262 0 262 302 0 303 260 0 260 263 0 263 266 0
		 266 313 0 264 263 0 268 267 0 269 268 0 268 273 0 272 314 0 271 273 0 273 280 0 281 271 0
		 239 229 1 213 235 1 214 441 1 215 225 1 216 313 1 239 274 1 274 245 1 261 272 1 229 245 1
		 241 440 1 241 255 1 252 235 1 306 222 0 306 221 0 222 219 0 223 222 0 225 224 0 307 229 0
		 226 307 0 229 228 0 308 272 0 227 308 0 235 234 0 309 310 0 236 309 0 310 239 0 310 238 0
		 239 306 0 237 239 0 241 240 0 311 248 0 242 311 0 312 245 0 312 244 0 245 241 0 243 245 0
		 313 261 0 313 260 0 261 312 0 262 261 0 272 271 0 314 269 0 273 314 0 215 7 1 270 216 1
		 258 215 1 10 315 0 13 316 0 315 316 0 48 317 0 315 317 0 50 318 0 317 318 0 316 318 0
		 14 319 0 316 319 0 51 320 0 318 320 0 319 320 0 28 321 0 319 321 0 53 322 0 320 322 0
		 321 322 0 178 323 0 179 324 0 323 324 1 321 324 0 322 323 0 196 325 0 197 326 0 325 326 1
		 317 326 0 315 325 0 32 327 0 31 328 0 327 328 0 324 327 0 323 328 0 9 329 0 49 330 0
		 329 330 0 192 331 0 331 330 0 191 332 0 332 331 1 332 329 0 206 333 0 207 334 0 333 334 1
		 326 334 0 325 333 0 202 335 0 335 331 0 201 336 0 336 335 1 336 332 0 334 335 0 333 336 0
		 198 337 0 199 338 0 337 338 1 4 339 0 339 338 0 45 340 0 339 340 0 340 337 0 2 341 0
		 46 342 0 341 342 0 340 342 0 341 339 0 15 343 0 52 344 0 343 344 0 342 344 0 341 343 0
		 29 345 0 54 346 0 345 346 0 344 346 0 343 345 0 188 347 0 189 348 0;
	setAttr ".ed[664:829]" 347 348 1 346 348 0 345 347 0 55 349 0 348 349 0 34 350 0
		 347 350 0 349 350 0 194 351 0 6 352 0 351 352 0 193 353 0 353 351 1 47 354 0 353 354 0
		 352 354 0 208 355 0 209 356 0 355 356 1 338 356 0 337 355 0 204 357 0 357 351 0 203 358 0
		 358 357 1 358 353 0 356 357 0 355 358 0 9 359 0 6 360 0 360 359 0 47 361 0 360 361 0
		 49 362 0 361 362 0 359 362 0 330 363 0 362 363 0 329 364 0 364 363 0 359 364 0 352 365 0
		 360 365 0 354 366 0 365 366 0 361 366 0 30 367 0 31 368 0 367 368 0 32 369 0 367 369 0
		 369 368 0 33 370 0 61 371 0 370 371 1 35 372 0 372 371 0 372 370 0 39 373 0 40 374 0
		 373 374 0 41 375 0 373 375 0 374 375 0 42 376 0 43 377 0 376 377 0 44 378 0 376 378 0
		 377 378 0 38 379 0 36 380 0 379 380 0 37 381 0 381 379 0 381 380 0 381 376 0 380 377 0
		 379 375 0 381 373 0 372 378 0 370 376 0 367 374 0 368 373 0 55 382 0 34 383 0 382 383 0
		 56 384 0 384 383 0 382 384 1 371 384 0 370 382 0 327 385 0 369 385 0 328 386 0 385 386 0
		 368 386 0 349 387 0 382 387 0 350 388 0 387 388 0 383 388 0 29 188 0 129 187 0 29 403 1
		 392 391 0 395 177 1 396 129 1 396 395 0 400 188 1 400 399 0 404 174 1 404 403 0 405 411 0
		 406 408 0 406 405 0 407 410 0 408 407 0 409 412 0 410 409 0 412 411 0 411 393 0 393 390 0
		 390 405 0 391 396 0 406 389 0 389 398 0 398 408 0 409 401 0 401 394 0 394 412 0 395 404 0
		 399 392 0 407 397 0 397 402 0 402 410 0 403 400 0 390 389 0 391 390 0 393 396 0 389 392 0
		 399 398 1 394 393 0 395 394 0 401 404 1 398 397 0 397 400 0 403 402 0 402 401 0 392 187 1
		 399 188 1 314 216 1 313 314 1 307 306 1 222 215 1 225 222 1 308 312 1 294 287 1 416 415 0
		 421 422 0 428 430 0 428 427 0 429 435 0 432 427 0 432 431 0 433 436 0;
	setAttr ".ed[830:896]" 434 431 0 434 433 0 436 435 0 414 432 0 431 413 0 420 434 0
		 433 419 0 414 413 0 415 414 0 414 418 0 413 416 0 417 418 0 418 427 0 428 417 0 417 425 0
		 420 419 0 421 420 0 420 413 0 416 421 0 419 422 0 422 438 0 423 419 0 423 424 0 424 435 0
		 436 423 0 426 424 0 426 425 0 425 430 0 430 429 0 429 426 0 437 417 0 252 415 0 418 252 0
		 438 423 0 255 274 0 424 255 0 274 426 0 439 437 0 425 439 0 435 428 1 440 214 1 441 255 1
		 438 255 0 311 440 1 440 441 1 441 438 1 310 439 1 437 252 0 309 437 1 252 213 1 252 250 0
		 249 214 1 265 216 1 299 302 1 298 303 1 305 301 1 292 291 1 286 295 1 281 284 1 285 280 1
		 275 282 1 436 427 1 432 433 1 253 214 1 251 213 1 220 215 1 232 213 1;
	setAttr -s 456 -ch 1784 ".fc[0:455]" -type "polyFaces" 
		f 4 -3 0 3 -70
		mu 0 4 3 1 2 4
		f 4 5 1 2 4
		mu 0 4 7 0 1 8
		f 4 375 -7 69 7
		mu 0 4 234 230 3 4
		f 4 641 -644 645 646
		mu 0 4 375 372 373 374
		f 7 -5 8 393 391 389 9 -23
		mu 0 7 5 3 246 245 277 11 10
		f 4 -695 696 698 -700
		mu 0 4 397 398 399 400
		f 4 374 -55 59 55
		mu 0 4 232 233 37 40
		f 3 -713 714 715
		mu 0 3 420 405 406
		f 4 -10 12 14 -14
		mu 0 4 10 11 15 14
		f 4 10 15 -17 -13
		mu 0 4 11 13 16 15
		f 4 -589 590 592 -594
		mu 0 4 350 351 352 353
		f 4 16 18 329 -18
		mu 0 4 15 16 51 83
		f 4 -596 593 597 -599
		mu 0 4 354 350 353 355
		f 4 -15 19 26 -21
		mu 0 4 14 15 52 21
		f 4 17 134 92 -20
		mu 0 4 15 83 186 52
		f 3 718 -721 721
		mu 0 3 419 407 408
		f 4 -27 24 32 -26
		mu 0 4 21 52 68 23
		f 3 -725 726 -728
		mu 0 3 410 417 409
		f 4 -93 330 99 -25
		mu 0 4 52 186 109 68
		f 4 -30 27 74 -29
		mu 0 4 22 66 64 49
		f 4 -98 141 94 -28
		mu 0 4 66 90 67 64
		f 4 -33 30 38 -32
		mu 0 4 23 68 54 25
		f 4 -100 144 102 -31
		mu 0 4 68 109 197 54
		f 4 -36 33 29 -35
		mu 0 4 24 53 66 22
		f 3 -731 732 -734
		mu 0 3 412 416 411
		f 4 -106 335 97 -34
		mu 0 4 53 199 90 66
		f 4 -38 -39 36 39
		mu 0 4 26 25 54 69
		f 3 -737 -739 739
		mu 0 3 413 414 415
		f 4 -37 -103 332 107
		mu 0 4 69 54 197 117
		f 4 -40 87 35 -89
		mu 0 4 26 69 53 24
		f 4 -58 82 58 -84
		mu 0 4 43 42 19 44
		f 4 -108 151 105 -88
		mu 0 4 69 117 199 53
		f 4 153 89 40 -110
		mu 0 4 81 184 51 70
		f 4 -601 598 602 -604
		mu 0 4 356 354 355 357
		f 4 167 -96 139 112
		mu 0 4 160 159 94 204
		f 4 157 -102 145 117
		mu 0 4 123 200 111 207
		f 4 161 -92 135 120
		mu 0 4 108 74 75 57
		f 4 163 -105 149 125
		mu 0 4 77 191 118 211
		f 4 606 -608 603 608
		mu 0 4 359 358 356 357
		f 3 337 -113 113
		mu 0 3 133 160 204
		f 4 355 -115 333 116
		mu 0 4 219 220 205 146
		f 4 162 114 356 -125
		mu 0 4 140 205 220 221
		f 4 -740 740 730 -742
		mu 0 4 413 415 416 412
		f 4 -66 84 67 -86
		mu 0 4 35 45 46 36
		f 3 65 48 -67
		mu 0 3 45 35 31
		f 4 738 742 -727 -744
		mu 0 4 418 414 409 417
		f 4 354 -117 158 122
		mu 0 4 218 219 146 210
		f 3 80 50 -68
		mu 0 3 46 29 36
		f 4 -722 744 -733 -746
		mu 0 4 419 408 411 416
		f 4 358 -768 154 127
		mu 0 4 222 223 133 59
		f 4 160 110 352 -120
		mu 0 4 124 202 216 217
		f 4 724 -747 712 747
		mu 0 4 417 410 405 420
		f 4 -340 -64 66 -69
		mu 0 4 27 214 45 31
		f 4 649 -651 -646 -652
		mu 0 4 378 376 374 377
		f 4 611 -613 -591 613
		mu 0 4 361 360 352 351
		f 4 654 -656 -650 656
		mu 0 4 382 379 380 381
		f 4 659 -661 -655 661
		mu 0 4 384 383 379 382
		f 4 664 -666 -660 666
		mu 0 4 386 385 383 384
		f 3 750 -753 -754
		mu 0 3 423 421 422
		f 4 -130 165 338 -42
		mu 0 4 78 80 213 61
		f 4 -75 72 79 -74
		mu 0 4 49 64 79 50
		f 4 -1 -131 129 -22
		mu 0 4 62 63 80 78
		f 4 -132 166 130 -76
		mu 0 4 79 159 80 18
		f 4 -80 75 -2 -77
		mu 0 4 50 79 18 17
		f 4 -81 64 350 -78
		mu 0 4 29 46 224 47
		f 4 753 -755 -719 755
		mu 0 4 423 422 407 419
		f 4 -62 83 62 -85
		mu 0 4 45 43 44 46
		f 12 22 13 20 25 31 37 88 34 28 73 76 -6
		mu 0 12 5 10 14 21 23 25 26 24 22 49 50 0
		f 4 -83 -57 -60 53
		mu 0 4 19 42 40 37
		f 4 336 131 -73 -95
		mu 0 4 187 159 79 64
		f 4 328 42 351 -111
		mu 0 4 202 70 215 216
		f 4 -124 -121 121 331
		mu 0 4 210 108 57 124
		f 4 -129 -126 126 334
		mu 0 4 59 77 211 140
		f 4 168 -154 169 -133
		mu 0 4 82 184 81 166
		f 4 170 171 172 173
		mu 0 4 183 82 84 167
		f 4 174 -134 175 -135
		mu 0 4 83 183 87 186
		f 4 176 177 178 179
		mu 0 4 85 84 126 165
		f 4 180 181 182 183
		mu 0 4 167 85 89 88
		f 4 184 -137 185 -136
		mu 0 4 86 169 149 209
		f 4 186 187 188 189
		mu 0 4 169 87 88 170
		f 4 190 191 192 193
		mu 0 4 170 89 128 168
		f 4 194 -142 195 -138
		mu 0 4 92 67 90 97
		f 4 196 197 198 199
		mu 0 4 91 92 95 93
		f 4 200 -139 201 -140
		mu 0 4 94 189 132 204
		f 4 202 203 204 205
		mu 0 4 172 161 129 171
		f 4 206 207 208 209
		mu 0 4 161 95 96 162
		f 4 210 211 212 213
		mu 0 4 162 173 156 130
		f 4 214 215 216 217
		mu 0 4 190 96 97 98
		f 4 218 -164 219 -141
		mu 0 4 99 100 101 157
		f 4 220 221 222 223
		mu 0 4 102 174 150 142
		f 4 224 225 226 227
		mu 0 4 103 102 105 175
		f 4 228 229 230 231
		mu 0 4 192 103 194 104
		f 4 232 233 234 235
		mu 0 4 106 105 141 176
		f 4 236 237 238 239
		mu 0 4 175 106 196 110
		f 4 240 -162 241 -143
		mu 0 4 107 74 108 151
		f 4 242 -144 243 -145
		mu 0 4 109 194 110 197
		f 4 244 -147 245 -146
		mu 0 4 111 112 208 207
		f 4 246 247 248 249
		mu 0 4 113 177 119 163
		f 4 250 251 252 253
		mu 0 4 114 113 136 178
		f 4 254 255 256 257
		mu 0 4 177 114 115 116
		f 4 258 -152 259 -148
		mu 0 4 116 199 117 120
		f 4 260 -149 261 -150
		mu 0 4 118 115 155 211
		f 4 262 263 264 265
		mu 0 4 121 119 120 122
		f 4 266 267 268 269
		mu 0 4 163 121 137 164
		f 4 270 -158 271 -151
		mu 0 4 122 200 123 138
		f 4 272 -161 273 -153
		mu 0 4 125 202 124 148
		f 4 274 275 276 277
		mu 0 4 166 125 127 126
		f 4 278 279 280 281
		mu 0 4 165 127 147 128
		f 4 282 283 284 285
		mu 0 4 131 129 130 179
		f 4 286 287 288 289
		mu 0 4 171 131 203 132
		f 4 290 -156 291 -155
		mu 0 4 133 134 135 59
		f 4 292 293 294 295
		mu 0 4 164 180 153 136
		f 4 296 297 298 299
		mu 0 4 180 137 138 181
		f 4 300 -163 301 -157
		mu 0 4 139 205 140 154
		f 4 302 303 304 305
		mu 0 4 143 141 142 182
		f 4 306 307 308 309
		mu 0 4 176 143 144 145
		f 4 310 -160 311 -159
		mu 0 4 146 144 152 210
		f 4 312 313 314 315
		mu 0 4 168 147 148 149
		f 4 316 317 318 319
		mu 0 4 182 150 151 152
		f 4 320 321 322 323
		mu 0 4 178 153 154 155
		f 4 324 325 326 327
		mu 0 4 179 156 157 158
		f 4 -210 -214 -284 -204
		mu 0 4 161 162 130 129
		f 4 -270 -296 -252 -250
		mu 0 4 163 164 136 113
		f 4 -226 -224 -304 -234
		mu 0 4 105 102 142 141
		f 4 -182 -180 -282 -192
		mu 0 4 89 85 165 128
		f 4 -172 132 -278 -178
		mu 0 4 84 82 166 126
		f 4 -188 133 -174 -184
		mu 0 4 88 87 183 167
		f 4 -316 136 -190 -194
		mu 0 4 168 149 169 170
		f 4 -198 137 -216 -208
		mu 0 4 95 92 97 96
		f 4 -290 138 -200 -206
		mu 0 4 171 132 189 172
		f 4 -218 140 -326 -212
		mu 0 4 173 99 157 156
		f 4 -232 142 -318 -222
		mu 0 4 174 107 151 150
		f 4 -240 143 -230 -228
		mu 0 4 175 110 194 103
		f 4 -310 146 -238 -236
		mu 0 4 176 145 196 106
		f 4 -258 147 -264 -248
		mu 0 4 177 116 120 119
		f 4 -324 148 -256 -254
		mu 0 4 178 155 115 114
		f 4 -266 150 -298 -268
		mu 0 4 121 122 138 137
		f 4 -276 152 -314 -280
		mu 0 4 127 125 148 147
		f 4 -328 155 -288 -286
		mu 0 4 179 158 203 131
		f 4 -300 156 -322 -294
		mu 0 4 180 181 154 153
		f 4 -320 159 -308 -306
		mu 0 4 182 152 144 143
		f 4 -171 -175 -91 -169
		mu 0 4 82 183 83 184
		f 3 -181 -173 -177
		mu 0 3 85 167 84
		f 4 -185 -94 -176 -187
		mu 0 4 185 86 186 87
		f 3 -189 -183 -191
		mu 0 3 170 88 89
		f 4 -195 -197 -201 96
		mu 0 4 187 188 189 94
		f 3 -199 -207 -203
		mu 0 3 93 95 161
		f 3 -209 -215 -211
		mu 0 3 162 96 190
		f 4 -217 -196 -99 -219
		mu 0 4 98 97 90 191
		f 3 -225 -229 -221
		mu 0 3 102 103 192
		f 3 -237 -227 -233
		mu 0 3 106 175 105
		f 4 -231 -243 -101 -241
		mu 0 4 193 194 109 195
		f 4 -245 -104 -244 -239
		mu 0 4 196 111 197 110
		f 3 -251 -255 -247
		mu 0 3 113 114 177
		f 4 -257 -261 -107 -259
		mu 0 4 116 198 118 199
		f 3 -263 -267 -249
		mu 0 3 119 121 163
		f 4 -260 -109 -271 -265
		mu 0 4 120 117 200 201
		f 4 -275 -170 111 -273
		mu 0 4 125 166 81 202
		f 3 -179 -277 -279
		mu 0 3 165 126 127
		f 3 -287 -205 -283
		mu 0 3 131 171 129
		f 4 -291 -114 -202 -289
		mu 0 4 203 133 204 132
		f 3 -269 -297 -293
		mu 0 3 164 137 180
		f 4 -299 -272 -116 -301
		mu 0 4 181 138 123 205
		f 3 -307 -235 -303
		mu 0 3 143 176 141
		f 4 -311 -119 -246 -309
		mu 0 4 206 146 207 208
		f 3 -313 -193 -281
		mu 0 3 147 168 128
		f 4 -274 -122 -186 -315
		mu 0 4 148 124 209 149
		f 3 -223 -317 -305
		mu 0 3 142 150 182
		f 4 -319 -242 123 -312
		mu 0 4 152 151 108 210
		f 3 -321 -253 -295
		mu 0 3 153 178 136
		f 4 -302 -127 -262 -323
		mu 0 4 154 140 211 155
		f 3 -213 -325 -285
		mu 0 3 130 156 179
		f 4 -327 -220 128 -292
		mu 0 4 158 157 101 212
		f 3 -112 109 -329
		mu 0 3 202 81 70
		f 3 -330 -90 90
		mu 0 3 83 51 184
		f 4 -331 93 91 100
		mu 0 4 109 186 86 195
		f 4 -332 119 353 -123
		mu 0 4 210 124 217 218
		f 4 -333 103 101 108
		mu 0 4 117 197 111 200
		f 4 -334 115 -118 118
		mu 0 4 146 205 123 207
		f 4 -335 124 357 -128
		mu 0 4 59 140 221 222
		f 4 -336 106 104 98
		mu 0 4 90 199 118 191
		f 3 -97 95 -337
		mu 0 3 187 94 159
		f 4 359 788 771 767
		mu 0 4 223 434 449 133
		f 4 768 800 773 -767
		mu 0 4 61 442 450 428
		f 4 -166 -167 -168 -165
		mu 0 4 213 80 159 160
		f 4 -617 -618 -607 618
		mu 0 4 362 363 358 359
		f 4 -352 340 -44 -342
		mu 0 4 216 215 28 55
		f 4 -353 341 52 -343
		mu 0 4 217 216 55 73
		f 4 -354 342 46 -344
		mu 0 4 218 217 73 58
		f 4 -345 -355 343 -50
		mu 0 4 72 219 218 58
		f 4 -346 -356 344 45
		mu 0 4 56 220 219 72
		f 4 -357 345 86 -347
		mu 0 4 221 220 56 76
		f 4 -358 346 47 -348
		mu 0 4 222 221 76 60
		f 4 -349 -359 347 -52
		mu 0 4 71 223 222 60
		f 4 81 813 348 44
		mu 0 4 65 446 223 71
		f 4 71 796 -82 78
		mu 0 4 48 436 446 65
		f 3 -774 774 814
		mu 0 3 428 450 436
		f 4 -669 -665 670 -672
		mu 0 4 387 385 386 388
		f 3 -362 -401 402
		mu 0 3 12 226 296
		f 4 621 -624 -626 626
		mu 0 4 364 365 366 367
		f 4 -364 -367 362 -61
		mu 0 4 39 228 227 41
		f 4 -675 -677 678 -680
		mu 0 4 389 390 391 392
		f 3 -361 -368 364
		mu 0 3 9 225 229
		f 3 585 401 416
		mu 0 3 276 294 321
		f 4 629 -631 -612 631
		mu 0 4 369 368 360 361
		f 4 387 -372 -375 370
		mu 0 4 242 243 233 232
		f 4 682 -684 -642 684
		mu 0 4 394 393 372 375
		f 4 388 -369 -376 372
		mu 0 4 244 240 230 234
		f 4 -378 -422 584 400
		mu 0 4 226 236 270 296
		f 4 625 -634 -636 636
		mu 0 4 367 366 370 371
		f 4 366 -380 -383 378
		mu 0 4 227 228 238 237
		f 4 676 -687 -689 689
		mu 0 4 391 390 395 396
		f 4 367 -377 -384 380
		mu 0 4 229 225 235 239
		f 4 -416 -526 421 -405
		mu 0 4 241 276 270 236
		f 4 -630 638 635 -638
		mu 0 4 368 369 371 370
		f 4 -388 384 382 -406
		mu 0 4 243 242 237 238
		f 4 -683 691 688 -691
		mu 0 4 393 394 396 395
		f 4 -389 385 383 -404
		mu 0 4 240 244 239 235
		f 3 -411 881 398
		mu 0 3 12 264 289
		f 4 -397 -9 6 373
		mu 0 4 291 246 3 230
		f 3 -414 414 893
		mu 0 3 289 267 284
		f 4 -399 -366 360 23
		mu 0 4 12 289 225 9
		f 4 -390 390 895 583
		mu 0 4 11 277 250 294
		f 3 882 -419 419
		mu 0 3 265 296 334
		f 3 896 394 -410
		mu 0 3 283 291 325
		f 4 894 -374 368 386
		mu 0 4 266 291 230 240
		f 5 888 -425 -426 426 -429
		mu 0 5 275 300 254 247 253
		f 4 441 821 434 887
		mu 0 4 257 306 251 301
		f 4 883 -443 -511 -445
		mu 0 4 260 311 248 261
		f 4 463 -453 -438 -452
		mu 0 4 318 303 302 249
		f 4 466 467 487 488
		mu 0 4 303 250 283 256
		f 4 468 469 -435 470
		mu 0 4 320 319 301 251
		f 4 472 473 -433 474
		mu 0 4 322 323 300 252
		f 4 482 483 484 485
		mu 0 4 324 337 253 254
		f 4 486 -455 -441 -454
		mu 0 4 256 305 304 255
		f 4 492 493 -442 494
		mu 0 4 326 327 306 257
		f 4 497 498 499 500
		mu 0 4 329 328 258 259
		f 4 501 502 -446 503
		mu 0 4 331 330 307 260
		f 4 508 509 510 511
		mu 0 4 333 332 261 248
		f 4 513 -457 -448 -456
		mu 0 4 262 309 308 263
		f 4 514 515 516 517
		mu 0 4 309 264 265 272
		f 4 521 -460 -431 -459
		mu 0 4 269 315 299 268
		f 4 522 523 524 525
		mu 0 4 276 269 317 270
		f 4 526 527 -450 528
		mu 0 4 336 335 311 271
		f 4 532 -461 450 -458
		mu 0 4 272 316 310 273
		f 4 533 -463 423 -462
		mu 0 4 338 317 297 274
		f 4 537 538 -430 539
		mu 0 4 340 339 298 275
		f 4 -468 -391 -392 392
		mu 0 4 283 250 277 245
		f 4 -549 -541 545 546
		mu 0 4 287 279 312 285
		f 3 -418 -516 410
		mu 0 3 12 265 264
		f 4 542 875 -521 413
		mu 0 4 289 484 485 267
		f 4 -519 -387 403 381
		mu 0 4 284 266 240 235
		f 4 -571 873 870 395
		mu 0 4 288 346 483 289
		f 3 -871 874 -543
		mu 0 3 289 483 484
		f 4 816 -537 -548 -577
		mu 0 4 348 349 286 282
		f 4 406 462 -524 458
		mu 0 4 268 297 317 269
		f 4 -482 -540 428 -484
		mu 0 4 337 340 275 253
		f 4 -536 461 -428 -539
		mu 0 4 339 338 274 298
		f 4 459 -476 -475 431
		mu 0 4 299 315 322 252
		f 4 -480 -486 424 -474
		mu 0 4 323 324 254 300
		f 4 -472 -471 433 -499
		mu 0 4 328 320 251 258
		f 4 -466 451 436 -470
		mu 0 4 319 318 249 301
		f 4 452 -489 453 439
		mu 0 4 302 303 256 255
		f 4 454 -492 -495 -439
		mu 0 4 304 305 326 257
		f 4 -497 -501 435 -494
		mu 0 4 327 329 259 306
		f 4 -505 -504 444 -510
		mu 0 4 332 331 260 261
		f 4 -508 455 -444 -503
		mu 0 4 330 262 263 307
		f 4 -447 456 -518 457
		mu 0 4 273 308 309 272
		f 4 460 -530 -529 448
		mu 0 4 310 316 336 271
		f 4 -513 -512 442 -528
		mu 0 4 335 333 248 311
		f 4 -546 -566 876 -520
		mu 0 4 285 312 345 486
		f 4 -464 -465 -409 -467
		mu 0 4 303 318 293 250
		f 4 -487 -488 409 -490
		mu 0 4 305 256 283 325
		f 4 -514 -507 -412 -515
		mu 0 4 309 262 288 264
		f 4 -522 -523 -417 -477
		mu 0 4 315 269 276 321
		f 4 -533 -517 -420 -531
		mu 0 4 316 272 265 334
		f 4 -534 -535 -423 -525
		mu 0 4 317 338 295 270
		f 3 -485 -427 425
		mu 0 3 254 253 247
		f 4 464 465 555 554
		mu 0 4 293 318 319 278
		f 4 -554 552 -556 -469
		mu 0 4 320 341 278 319
		f 4 475 476 477 556
		mu 0 4 322 315 321 281
		f 4 -557 478 -559 -473
		mu 0 4 322 281 342 323
		f 4 558 557 559 479
		mu 0 4 323 342 279 324
		f 4 -483 -560 480 -562
		mu 0 4 337 324 279 343
		f 4 489 490 562 491
		mu 0 4 305 325 280 326
		f 4 -563 495 -565 -493
		mu 0 4 326 280 344 327
		f 4 564 563 566 496
		mu 0 4 327 344 345 329
		f 4 471 568 567 553
		mu 0 4 320 328 312 341
		f 4 -498 -567 565 -569
		mu 0 4 328 329 345 312
		f 4 571 570 506 507
		mu 0 4 330 346 288 262
		f 4 -570 505 -572 -502
		mu 0 4 331 313 346 330
		f 4 504 575 574 569
		mu 0 4 331 332 287 313
		f 4 -509 -574 572 -576
		mu 0 4 332 333 347 287
		f 4 529 530 531 577
		mu 0 4 336 316 334 348
		f 4 512 579 578 573
		mu 0 4 333 335 282 347
		f 4 -578 576 -580 -527
		mu 0 4 336 348 282 335
		f 4 561 560 580 481
		mu 0 4 337 343 286 340
		f 4 534 535 582 581
		mu 0 4 295 338 339 349
		f 4 -581 536 -583 -538
		mu 0 4 340 286 349 339
		f 4 -12 -11 -584 399
		mu 0 4 231 13 11 294
		f 3 -585 422 420
		mu 0 3 296 270 295
		f 4 -370 -400 -586 415
		mu 0 4 241 231 294 276
		f 4 -16 586 588 -588
		mu 0 4 16 13 351 350
		f 4 56 591 -593 -590
		mu 0 4 40 42 353 352
		f 4 -19 587 595 -595
		mu 0 4 51 16 350 354
		f 4 57 596 -598 -592
		mu 0 4 42 43 355 353
		f 4 -41 594 600 -600
		mu 0 4 70 51 354 356
		f 4 61 601 -603 -597
		mu 0 4 43 45 357 355
		f 4 -43 599 607 -606
		mu 0 4 215 70 356 358
		f 4 63 604 -609 -602
		mu 0 4 45 214 359 357
		f 4 -56 589 612 -611
		mu 0 4 232 40 352 360
		f 4 11 609 -614 -587
		mu 0 4 13 231 361 351
		f 4 -716 757 759 -761
		mu 0 4 420 406 424 425
		f 4 -341 605 617 -615
		mu 0 4 28 215 358 363
		f 4 339 615 -619 -605
		mu 0 4 214 27 362 359
		f 4 699 701 -704 -705
		mu 0 4 397 400 401 402
		f 4 -363 622 623 -621
		mu 0 4 41 227 366 365
		f 4 361 619 -627 -625
		mu 0 4 226 12 364 367
		f 4 -371 610 630 -629
		mu 0 4 242 232 360 368
		f 4 369 627 -632 -610
		mu 0 4 231 241 369 361
		f 4 -379 632 633 -623
		mu 0 4 227 237 370 366
		f 4 377 624 -637 -635
		mu 0 4 236 226 367 371
		f 4 -628 404 634 -639
		mu 0 4 369 241 236 371
		f 4 637 -633 -385 628
		mu 0 4 368 370 237 242
		f 4 -8 642 643 -641
		mu 0 4 234 4 373 372
		f 4 54 639 -647 -645
		mu 0 4 37 233 375 374
		f 4 -54 644 650 -649
		mu 0 4 38 37 374 376
		f 4 -4 647 651 -643
		mu 0 4 6 2 378 377
		f 4 -59 648 655 -654
		mu 0 4 44 19 380 379
		f 4 21 652 -657 -648
		mu 0 4 20 78 382 381
		f 4 -63 653 660 -659
		mu 0 4 46 44 379 383
		f 4 41 657 -662 -653
		mu 0 4 78 61 384 382
		f 4 -65 658 665 -664
		mu 0 4 224 46 383 385
		f 4 766 662 -667 -658
		mu 0 4 61 428 386 384
		f 4 -351 663 668 -668
		mu 0 4 47 224 385 387
		f 4 349 669 -671 -663
		mu 0 4 428 30 388 386
		f 4 -751 762 764 -766
		mu 0 4 421 423 426 427
		f 4 -365 672 674 -674
		mu 0 4 9 229 390 389
		f 4 363 677 -679 -676
		mu 0 4 228 39 392 391
		f 4 -697 706 708 -710
		mu 0 4 399 398 403 404
		f 4 -373 640 683 -682
		mu 0 4 244 234 372 393
		f 4 371 680 -685 -640
		mu 0 4 233 243 394 375
		f 4 -381 685 686 -673
		mu 0 4 229 239 395 390
		f 4 379 675 -690 -688
		mu 0 4 238 228 391 396
		f 4 -681 405 687 -692
		mu 0 4 394 243 238 396
		f 4 690 -686 -386 681
		mu 0 4 393 395 239 244
		f 4 -24 693 694 -693
		mu 0 4 12 9 398 397
		f 4 60 697 -699 -696
		mu 0 4 39 41 400 399
		f 4 620 700 -702 -698
		mu 0 4 41 365 401 400
		f 4 -622 702 703 -701
		mu 0 4 365 364 402 401
		f 4 -620 692 704 -703
		mu 0 4 364 12 397 402
		f 4 673 705 -707 -694
		mu 0 4 9 389 403 398
		f 4 679 707 -709 -706
		mu 0 4 389 392 404 403
		f 4 -678 695 709 -708
		mu 0 4 392 39 399 404
		f 4 43 713 -715 -711
		mu 0 4 55 28 406 405
		f 4 -45 719 720 -718
		mu 0 4 65 71 408 407
		f 4 -47 723 727 -726
		mu 0 4 32 73 410 409
		f 4 -48 729 733 -732
		mu 0 4 60 76 412 411
		f 4 -46 734 736 -736
		mu 0 4 56 72 414 413
		f 4 85 728 -741 -738
		mu 0 4 35 33 416 415
		f 4 -87 735 741 -730
		mu 0 4 76 56 413 412
		f 4 49 725 -743 -735
		mu 0 4 72 32 409 414
		f 4 -49 737 743 -723
		mu 0 4 31 34 418 417
		f 4 51 731 -745 -720
		mu 0 4 71 60 411 408
		f 4 -51 716 745 -729
		mu 0 4 33 29 419 416
		f 4 -53 710 746 -724
		mu 0 4 73 55 405 410
		f 4 68 722 -748 -712
		mu 0 4 27 31 417 420
		f 4 -71 751 752 -750
		mu 0 4 30 48 422 421
		f 4 -79 717 754 -752
		mu 0 4 48 65 407 422
		f 4 77 748 -756 -717
		mu 0 4 29 47 423 419
		f 4 614 756 -758 -714
		mu 0 4 28 363 424 406
		f 4 616 758 -760 -757
		mu 0 4 363 362 425 424
		f 4 -616 711 760 -759
		mu 0 4 362 27 420 425
		f 4 667 761 -763 -749
		mu 0 4 47 387 426 423
		f 4 671 763 -765 -762
		mu 0 4 387 388 427 426
		f 4 -670 749 765 -764
		mu 0 4 388 30 421 427
		f 4 -339 -776 776 -769
		mu 0 4 61 213 452 442
		f 4 795 775 164 -771
		mu 0 4 438 452 213 160
		f 4 -772 772 770 -338
		mu 0 4 133 449 438 160
		f 8 -780 778 781 780 783 782 784 -778
		mu 0 8 433 430 440 432 444 431 437 429
		f 4 785 786 787 777
		mu 0 4 429 447 445 433
		f 4 789 790 791 -779
		mu 0 4 430 435 439 440
		f 4 792 793 794 -783
		mu 0 4 431 451 448 437
		f 4 797 798 799 -781
		mu 0 4 432 441 443 444
		f 4 801 -790 779 -788
		mu 0 4 445 435 430 433
		f 4 802 -787 803 -789
		mu 0 4 434 445 447 449
		f 4 804 -797 805 -791
		mu 0 4 435 446 436 439
		f 4 806 -786 -785 -795
		mu 0 4 448 447 429 437
		f 4 807 -794 808 -796
		mu 0 4 438 448 451 452
		f 4 809 -798 -782 -792
		mu 0 4 439 441 432 440
		f 4 810 -801 811 -799
		mu 0 4 441 450 442 443
		f 4 812 -793 -784 -800
		mu 0 4 443 451 431 444
		f 4 -802 -803 -770 -805
		mu 0 4 435 445 434 446
		f 4 -807 -808 -773 -804
		mu 0 4 447 448 438 449
		f 4 -810 -806 -775 -811
		mu 0 4 441 439 436 450
		f 4 -813 -812 -777 -809
		mu 0 4 451 443 442 452
		f 3 -814 769 -360
		mu 0 3 223 446 434
		f 4 -815 -72 70 -350
		mu 0 4 428 436 48 30
		f 4 547 -561 820 -579
		mu 0 4 282 286 343 347
		f 3 544 -532 418
		mu 0 3 296 348 334
		f 3 -816 -817 -545
		mu 0 3 296 349 348
		f 3 -421 -582 815
		mu 0 3 296 295 349
		f 4 -553 -818 -479 819
		mu 0 4 278 341 342 281
		f 3 -478 -402 543
		mu 0 3 281 321 294
		f 3 -820 -544 -819
		mu 0 3 278 281 294
		f 3 818 -408 -555
		mu 0 3 278 294 293
		f 4 817 -568 540 -558
		mu 0 4 342 341 312 279
		f 4 -821 -481 548 -573
		mu 0 4 347 343 279 287
		f 4 437 -440 440 886
		mu 0 4 249 302 255 304
		f 4 -500 -434 -822 -436
		mu 0 4 259 258 251 306
		f 4 832 869 825 -892
		mu 0 4 454 453 456 455
		f 4 837 -835 -829 -834
		mu 0 4 457 458 459 460
		f 4 840 848 846 847
		mu 0 4 458 461 468 464
		f 4 841 842 -826 843
		mu 0 4 462 463 455 456
		f 4 845 -837 -832 -836
		mu 0 4 464 465 466 467
		f 4 852 853 -833 854
		mu 0 4 469 470 453 454
		f 4 856 857 858 859
		mu 0 4 471 472 473 474
		f 4 -845 -844 824 -858
		mu 0 4 472 462 456 473
		f 4 -840 833 827 -843
		mu 0 4 463 457 460 455
		f 4 834 -848 835 830
		mu 0 4 459 458 464 467
		f 4 836 -852 -855 -830
		mu 0 4 466 465 469 454
		f 4 -856 -860 826 -854
		mu 0 4 470 471 474 453
		f 4 -838 -839 -823 -841
		mu 0 4 458 457 475 461
		f 4 -846 -847 823 -850
		mu 0 4 465 464 468 476
		f 4 838 839 862 861
		mu 0 4 475 457 463 477
		f 4 -861 877 -863 -842
		mu 0 4 462 478 477 463
		f 4 849 850 863 851
		mu 0 4 465 476 479 469
		f 4 -864 872 -866 -853
		mu 0 4 469 479 480 470
		f 4 865 864 866 855
		mu 0 4 470 480 481 471
		f 4 844 868 867 860
		mu 0 4 462 472 482 478
		f 4 -857 -867 519 -869
		mu 0 4 472 471 481 482
		f 4 828 -831 831 -893
		mu 0 4 460 459 467 466
		f 4 -859 -825 -870 -827
		mu 0 4 474 473 456 453
		f 4 892 829 891 -828
		mu 0 4 460 466 454 455
		f 4 -551 -575 -547 -865
		mu 0 4 314 313 287 285
		f 3 -874 -506 549
		mu 0 3 483 346 313
		f 4 -875 -550 550 -872
		mu 0 4 484 483 313 314
		f 3 -876 871 -873
		mu 0 3 485 484 314
		f 4 -877 -564 878 -868
		mu 0 4 486 345 344 487
		f 4 -879 -496 -552 -878
		mu 0 4 487 344 280 292
		f 3 541 -491 -395
		mu 0 3 291 280 325
		f 3 551 -542 -880
		mu 0 3 292 280 291
		f 3 879 397 -881
		mu 0 3 292 291 290
		f 3 -882 411 -396
		mu 0 3 289 264 288
		f 3 -403 -883 417
		mu 0 3 12 296 265
		f 4 884 449 -884 445
		mu 0 4 307 271 311 260
		f 4 -451 885 447 446
		mu 0 4 273 310 263 308
		f 4 -886 -449 -885 443
		mu 0 4 263 310 271 307
		f 4 -887 438 -888 -437
		mu 0 4 249 304 257 301
		f 4 890 -432 889 427
		mu 0 4 274 299 252 298
		f 4 -890 432 -889 429
		mu 0 4 298 252 300 275
		f 4 430 -891 -424 -407
		mu 0 4 268 299 274 297
		f 4 -894 -382 376 365
		mu 0 4 289 284 235 225
		f 3 -413 -398 -895
		mu 0 3 266 290 291
		f 3 -896 408 407
		mu 0 3 294 250 293
		f 4 396 -897 -393 -394
		mu 0 4 246 291 283 245;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_WASD";
	rename -uid "EEDE99B0-4164-AAD2-6C78-5D91833605E5";
	setAttr ".t" -type "double3" -17.5 0 10 ;
createNode mesh -n "SM_Button_WASDShape" -p "|SM_Button_WASD";
	rename -uid "C92E9B08-4E82-3BF8-A4FE-F3B5B57D1491";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt[2:36]" -type "float3"  0.1025271 -0.014768976 -0.099709734 
		0.11374758 -0.00354837 -0.099709734 0.1025271 -0.00354837 -0.11093043 0 0 0 0 0 0 
		-0.1025271 -0.00354837 -0.11093043 -0.11374758 -0.00354837 -0.099709734 -0.1025271 
		-0.014768976 -0.099709734 0 0 0 0 0 0 0 0.0027724083 0.10465628 -0.0084519014 0.014768976 
		0.11093043 0.0084519014 0.014768976 0.11093043 0.10632401 -0.00072529539 0.045682307 
		0.11374758 -0.0031787634 0.031437736 0.10259492 -0.014768976 0.040733155 -0.11374758 
		-0.0032115974 0.031464141 -0.10618298 -0.00045851053 0.04577633 -0.10241874 -0.014768976 
		0.040733155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.6176846 0 0 -0.6176846 0 0 -0.61524761 
		0 0 -0.59907073 0 0 -0.49690962 0 0 -0.49690962 0 0 -0.59731168 0 0 -0.61546409 0 
		0 -0.6176846 0 0 -0.6176846 0;
createNode mesh -n "polySurfaceShape3" -p "|SM_Button_WASD";
	rename -uid "050EB7A2-4AFF-903D-BFCC-80BEA242E192";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt[2:26]" -type "float3"  -2.9802322e-08 -1.8626451e-09 
		2.9802322e-08 -5.9604645e-08 0 2.9802322e-08 -2.9802322e-08 0 0 0 0 0 0 0 0 2.9802322e-08 
		0 0 5.9604645e-08 0 2.9802322e-08 2.9802322e-08 -1.8626451e-09 2.9802322e-08 0 0 
		0 0 0 0 0 -4.6566129e-10 -1.4901161e-08 0 1.8626451e-09 0 0 1.8626451e-09 0 2.9802322e-08 
		-1.1641532e-10 -7.4505806e-09 -5.9604645e-08 4.6566129e-10 -7.4505806e-09 0 -1.8626451e-09 
		0 5.9604645e-08 4.6566129e-10 -3.7252903e-09 -1.4901161e-08 1.1641532e-10 7.4505806e-09 
		2.9802322e-08 -1.8626451e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".vt[0:26]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954;
	setAttr -s 51 ".ed[0:50]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 4 0 4 3 0 3 1 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 8 0 8 7 0 7 5 0 9 8 0 8 18 0 18 20 0 20 9 0
		 11 14 0 14 13 0 13 10 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0 19 13 0
		 16 15 0 15 23 0 23 22 0 22 16 0 19 18 0 18 26 0 26 25 0 25 19 0 17 20 0;
	setAttr -s 26 -ch 102 ".fc[0:25]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 14 15
		mu 0 4 33 11 12 34
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 25 26
		mu 0 4 26 14 16 15
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 32 33
		mu 0 4 28 17 37 29
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 42 43 44 45
		mu 0 4 32 20 21 22
		f 4 46 47 48 49
		mu 0 4 27 23 24 25
		f 4 -18 -14 0 -27
		mu 0 4 15 12 11 26
		f 4 -50 -4 -34 -42
		mu 0 4 27 25 28 29
		f 4 -32 4 -44 -36
		mu 0 4 18 30 21 20
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 -46 6 -16 -24
		mu 0 4 32 22 33 34
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 -25 -11 -48 -29
		mu 0 4 16 14 24 23
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wasd_01";
	rename -uid "7F824300-42A2-33E4-8151-E390C1F77AFF";
	setAttr ".v" no;
createNode transform -n "SM_Button_Ability_06" -p "wasd_01";
	rename -uid "8DFCD8AC-4A7F-E7CC-095E-9EB948CE46FE";
	setAttr ".t" -type "double3" -18 0 9.5 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
createNode mesh -n "SM_Button_Ability_06Shape" -p "SM_Button_Ability_06";
	rename -uid "D843A099-4132-B0F7-1898-099A4CBCBEE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_08" -p "wasd_01";
	rename -uid "98755F04-4958-069E-8043-83800B59F5A9";
	setAttr ".t" -type "double3" -21 0 6.5 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
createNode mesh -n "SM_Button_Ability_08Shape" -p "SM_Button_Ability_08";
	rename -uid "BD1C1E85-418C-11D8-EFD6-4BA3B85FCB95";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_07" -p "wasd_01";
	rename -uid "A1539CA1-4AE6-D15D-D81D-E6A96DE3011D";
	setAttr ".t" -type "double3" -15 0 6.5 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
createNode mesh -n "SM_Button_Ability_07Shape" -p "SM_Button_Ability_07";
	rename -uid "4F11FB14-4FB9-BD7F-1C29-33BAC5CDF9DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_05" -p "wasd_01";
	rename -uid "88E837AA-42E2-78F5-C903-3CB969E42421";
	setAttr ".t" -type "double3" -18 0 3.5 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
createNode mesh -n "SM_Button_Ability_05Shape" -p "SM_Button_Ability_05";
	rename -uid "1F948918-41E6-7B45-946F-C3916BCFB201";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[1]" "f[7]" "f[10]" "f[12]" "f[18]" "f[29]" "f[32]" "f[37]" "f[40]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[8]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[5:6]" "f[9]" "f[16]" "f[20]" "f[31]" "f[34:35]" "f[38]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[13]" "f[15]" "f[17]" "f[28]" "f[41:42]" "f[45:46]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[3]" "f[21:22]" "f[24]" "f[30]" "f[43:44]" "f[47:48]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[14]" "f[19]" "f[23]" "f[25:27]" "f[33]" "f[36]" "f[39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.5 0 0.5 1 0.5 0.75 0.4375 0 0.4375 1 0.4375 0.75 0.5625 1 0.5625 0.75
		 0.375 0.67650115 0.375 0.75 0.375 0 0.125 0 0.375 0.073498845 0.5625 0 0.61576372
		 0.6654582 0.62499994 0.67650115 0.625 0 0.875 0 0.875 0.073498853 0.36576378 0.084541753
		 0.38423628 0.084541753 0.38590187 0.26098779 0.38669023 0.24030341 0.36401507 0.24892332
		 0.125 0.23914748 0.125 0.084618911 0.13423628 0.084541753 0.38650247 0.48853445 0.61408126
		 0.24094573 0.61576372 0.084541753 0.63423622 0.084541753 0.63424158 0.24015386 0.8640151
		 0.24892332 0.86321068 0.24029735 0.86576372 0.084541753 0.875 0.084630273 0.49999997
		 0.48920065 0.5625 0.26085779 0.36303657 0.2401537 0.13424166 0.24015386 0.5 0.6654582
		 0.56244826 0.50953227 0.5625 0.084541753 0.49999997 0.2402233 0.38423628 0.6654582
		 0.38668811 0.50969613 0.43755248 0.50953597 0.4375 0.26086354 0.4375 0.084541753
		 0.49999997 0.084541753 0.4375518 0.24046265 0.4375 0.48913643 0.5 0.26079947 0.4375
		 0.6654582 0.5 0.50977677 0.56244755 0.24047005 0.5625 0.4891423 0.61409813 0.26098761
		 0.61409813 0.48913312 0.5625 0.6654582 0.61408162 0.50905627 0.13608459 0.24886392
		 0.6355058 0.24892308 0.875 0.23986557 0.125 0.084541753 0.125 0.073498853 0.625 0.073498853
		 0.875 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  -1.5 1.5 1.5 1.5 1.5 1.5 
		-1.5 1.5 -1.5 1.5 1.5 -1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 1.5 1.5 -9.5367432e-07 
		1.5 -1.5 -9.5367432e-07 1.5 -1.5 -0.75 1.5 1.5 -0.75 1.5 1.5 -0.75 1.5 -1.5 -0.75 
		1.5 -1.5 0.75 1.5 1.5 0.75 1.5 1.5 0.75 1.5 -1.5 0.75 1.5 -1.5 -1.0703287 0.93962955 
		1.1810989 -1.0576344 0.90416563 1.0590839 -1.1789989 0.93570501 1.0681 -0.58870125 
		0.95709944 1.1905003 -0.57934475 0.92388147 1.0697441 -1.1789989 0.93570501 -1.068099 
		-1.0520668 0.90439516 -1.0535965 -1.0703287 0.93962955 -1.181098 -0.57934475 0.92388147 
		-1.0697441 -0.58870125 0.95709944 -1.1904993 1.0761623 0.93701267 1.1796188 1.1789989 
		0.93570501 1.0681 1.0576344 0.90416563 1.0590839 1.0576344 0.90416563 -1.0590839 
		1.1787033 0.9351846 -1.0694199 1.0761623 0.93701267 -1.1796188 -1.3891649 1.5 -1.5 
		-1.5 1.5261241 -1.5 -1.5 1.5 -1.3891649 -1.3891649 1.5 1.5 -1.5 1.5 1.3891659 -1.5 
		1.5261241 1.5 1.389164 1.5 1.5 1.5 1.5261241 1.5 1.5 1.5 1.3891659 1.389164 1.5 -1.5 
		1.5 1.5 -1.3891649 1.5 1.5261241 -1.5 -9.5367432e-07 0.96846974 1.1968918 -9.5367432e-07 
		0.93509001 1.0760956 0.58869553 0.95708168 1.1904907 0.5793438 0.92388147 1.0697975 
		-9.5367432e-07 0.93509001 -1.0760956 -9.5367432e-07 0.96846974 -1.1968918 0.5793438 
		0.92388147 -1.0697985 0.58869553 0.95708168 -1.1904898;
	setAttr -s 52 ".vt[0:51]"  -0.5 -1.5 0.5 0.49999988 -1.5 0.5 -0.5 -1.5 -0.5
		 0.49999988 -1.5 -0.5 -2.3841858e-07 -1.5 0.5 -2.3841858e-07 -0.5 0.5 -2.3841858e-07 -0.5 -0.5
		 -2.3841858e-07 -1.5 -0.5 -0.25 -1.5 0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 -0.25 -1.5 -0.5
		 0.24999988 -1.5 0.5 0.24999988 -0.5 0.5 0.24999988 -0.5 -0.5 0.24999988 -1.5 -0.5
		 -0.35677624 2.30185223 0.39369965 -0.35254478 2.47917175 0.35302806 -0.39299965 2.32147503 0.35603333
		 -0.19623363 2.21450281 0.39683342 -0.19311488 2.38059258 0.35658145 -0.39299965 2.32147503 -0.35603309
		 -0.35068893 2.47802424 -0.35119891 -0.35677624 2.30185223 -0.39369941 -0.19311488 2.38059258 -0.35658121
		 -0.19623363 2.21450281 -0.39683318 0.35872066 2.31493664 0.39320612 0.39299953 2.32147503 0.35603333
		 0.35254455 2.47917175 0.35302806 0.35254455 2.47917175 -0.35302806 0.39290082 2.32407689 -0.35647321
		 0.35872066 2.31493664 -0.39320612 -0.4630549 -0.5 -0.5 -0.5 -0.63062066 -0.5 -0.5 -0.5 -0.4630549
		 -0.4630549 -0.5 0.5 -0.5 -0.5 0.46305513 -0.5 -0.63062066 0.5 0.46305478 -0.5 0.5
		 0.49999988 -0.63062066 0.5 0.49999988 -0.5 0.46305513 0.46305478 -0.5 -0.5 0.49999988 -0.5 -0.4630549
		 0.49999988 -0.63062066 -0.5 -2.3841858e-07 2.15765142 0.39896393 -2.3841858e-07 2.32454991 0.35869861
		 0.19623196 2.21459174 0.39683008 0.19311464 2.38059258 0.35659933 -2.3841858e-07 2.32454991 -0.35869861
		 -2.3841858e-07 2.15765142 -0.39896393 0.19311464 2.38059258 -0.35659957 0.19623196 2.21459174 -0.39682984;
	setAttr -s 99 ".ed[0:98]"  0 8 0 2 11 0 0 37 0 1 39 0 2 0 0 3 1 0 4 12 0
		 5 9 1 6 14 1 7 15 0 7 6 1 5 4 1 8 4 0 9 35 1 10 6 1 11 7 0 8 9 1 10 11 1 11 8 1 12 1 0
		 13 5 1 14 41 1 15 3 0 12 13 1 14 15 1 15 12 1 32 10 1 33 2 0 32 33 0 34 33 0 36 34 1
		 35 37 0 37 36 0 38 13 1 39 38 0 40 39 0 42 40 1 43 3 0 41 43 0 43 42 0 16 18 1 18 36 0
		 36 35 1 35 16 0 17 16 0 16 19 0 19 20 1 20 17 0 18 17 0 17 22 0 22 21 0 21 18 0 19 44 0
		 44 45 1 45 20 0 21 23 0 23 32 0 32 34 1 34 21 0 23 22 0 22 24 0 24 25 1 25 23 0 24 48 0
		 48 49 1 49 25 0 26 28 0 28 47 0 47 46 1 46 26 0 27 26 1 26 38 0 38 40 0 40 27 0 28 27 1
		 27 30 0 30 29 0 29 28 0 29 31 0 31 51 0 51 50 1 50 29 0 31 30 0 30 42 0 42 41 0 41 31 0
		 44 46 0 47 45 0 48 50 0 51 49 0 48 45 1 47 50 1 6 49 1 51 14 1 13 46 1 44 5 1 25 10 1
		 20 24 1 9 19 1;
	setAttr -s 49 -ch 198 ".fc[0:48]" -type "polyFaces" 
		f 4 11 6 23 20
		mu 0 4 52 3 16 45
		f 4 10 8 24 -10
		mu 0 4 5 43 62 10
		f 4 1 18 -1 -5
		mu 0 4 12 8 7 1
		f 6 -6 -38 39 36 35 -4
		mu 0 6 19 20 21 37 33 69
		f 6 4 2 32 30 29 27
		mu 0 6 14 13 15 22 29 68
		f 5 0 16 13 31 -3
		mu 0 5 13 6 51 23 15
		f 4 -17 12 -12 7
		mu 0 4 51 6 3 52
		f 4 -18 14 -11 -16
		mu 0 4 8 56 43 5
		f 6 -19 15 9 25 -7 -13
		mu 0 6 7 8 5 10 9 4
		f 5 -24 19 3 34 33
		mu 0 5 45 16 19 69 32
		f 5 -25 21 38 37 -23
		mu 0 5 10 62 17 18 0
		f 4 -26 22 5 -20
		mu 0 4 9 10 0 2
		f 5 -29 26 17 -2 -28
		mu 0 5 11 47 56 8 12
		f 4 40 41 42 43
		mu 0 4 25 41 22 23
		f 4 44 45 46 47
		mu 0 4 24 25 53 50
		f 4 48 49 50 51
		mu 0 4 41 26 64 42
		f 4 -47 52 53 54
		mu 0 4 50 53 46 55
		f 4 55 56 57 58
		mu 0 4 42 27 28 29
		f 4 59 60 61 62
		mu 0 4 48 30 54 49
		f 4 -62 63 64 65
		mu 0 4 49 54 39 57
		f 4 66 67 68 69
		mu 0 4 31 60 40 58
		f 4 70 71 72 73
		mu 0 4 34 31 32 33
		f 4 74 75 76 77
		mu 0 4 65 34 36 35
		f 4 78 79 80 81
		mu 0 4 61 63 44 59
		f 4 82 83 84 85
		mu 0 4 66 36 37 38
		f 4 -54 86 -69 87
		mu 0 4 55 46 58 40
		f 4 -65 88 -81 89
		mu 0 4 57 39 59 44
		f 4 90 -88 91 -89
		mu 0 4 39 55 40 59
		f 4 -52 -59 -31 -42
		mu 0 4 41 42 29 22
		f 4 92 -90 93 -9
		mu 0 4 43 57 44 62
		f 4 -76 -74 -37 -84
		mu 0 4 36 34 33 37
		f 4 94 -87 95 -21
		mu 0 4 45 58 46 52
		f 4 -57 -63 96 -27
		mu 0 4 47 48 49 56
		f 4 -48 97 -61 -50
		mu 0 4 24 50 54 30
		f 4 98 -46 -44 -14
		mu 0 4 51 53 25 23
		f 4 -96 -53 -99 -8
		mu 0 4 52 46 53 51
		f 4 -98 -55 -91 -64
		mu 0 4 54 50 55 39
		f 4 -97 -66 -93 -15
		mu 0 4 56 49 57 43
		f 4 -70 -95 -34 -72
		mu 0 4 31 58 45 32
		f 4 -92 -68 -78 -82
		mu 0 4 59 40 60 61
		f 4 -94 -80 -86 -22
		mu 0 4 62 44 63 17
		f 3 -45 -49 -41
		mu 0 3 25 26 41
		f 3 -51 -60 -56
		mu 0 3 42 64 27
		f 3 -71 -75 -67
		mu 0 3 31 34 65
		f 3 -77 -83 -79
		mu 0 3 35 36 66
		f 3 28 -30 -58
		mu 0 3 67 68 29
		f 3 -43 -33 -32
		mu 0 3 23 22 15
		f 3 -35 -36 -73
		mu 0 3 32 69 33
		f 3 -85 -40 -39
		mu 0 3 70 37 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wasd_02";
	rename -uid "A01D6622-4D83-B602-440A-6DA07B5083A8";
	setAttr ".v" no;
createNode transform -n "SM_Button_WASD" -p "wasd_02";
	rename -uid "13B741BF-484A-8C9B-2427-D58A99BA1B37";
	setAttr ".t" -type "double3" -18 0 6.5 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
createNode mesh -n "SM_Button_WASDShape" -p "|wasd_02|SM_Button_WASD";
	rename -uid "F84F7F62-4746-CDC7-3121-1E90E2C10563";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[0]" "f[10:13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[4]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[3]" "f[5]" "f[14:17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[2]" "f[5:9]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.31250005960464478 0.22496538236737251 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.25000191 0.37476525 0.375 0.75 0.375 0 0.125 0 0.37499821 0.075165518
		 0.74999511 0.37498003 0.625 0 0.875 0 0.62499553 0.075206213 0.625 0 0.875 0 0.74999511
		 0.37498003 0.62499553 0.075206213 0.25000191 0.37476525 0.74999511 0.37498003 0.625
		 0.75 0.375 0.75 0.125 0 0.375 0 0.37499821 0.075165518 0.25000191 0.37476525 0.62499553
		 0.075206213 0.37499821 0.075165518 0.375 0 0.625 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[4]" -type "float3" 0 -0.67065018 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.67065018 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.67065018 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.67065018 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[12]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[18]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[19]" -type "float3" 0 -0.3833375 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.3833375 3.9999998 ;
	setAttr ".pt[21]" -type "float3" 0 -0.3833375 3.9999998 ;
	setAttr ".pt[22]" -type "float3" 0 0 3.9999998 ;
	setAttr ".pt[23]" -type "float3" 0 0 3.9999998 ;
	setAttr -s 24 ".vt[0:23]"  -2 0 2 2 0 2 -2 0 -2 2 0 -2 -2 3.3833375 -2
		 -2 3.3833375 2 2 3.3833375 2 2 3.3833375 -2 6 0 -2 6 0 2 6 3.3833375 -2 6 3.3833375 2
		 -2 3.3833375 -6 2 3.3833375 -6 2 0 -6 -2 0 -6 -6 0 -2 -6 0 2 -6 3.3833375 2 -6 3.3833375 -2
		 2 3.3833375 2 -2 3.3833375 2 -2 0 2 2 0 2;
	setAttr -s 44 ".ed[0:43]"  0 1 0 0 5 0 1 6 0 2 0 0 3 1 0 6 5 0 4 7 0
		 2 3 0 4 2 0 5 4 0 7 6 0 7 3 0 3 8 0 1 9 0 8 9 0 7 10 0 10 8 0 6 11 0 10 11 0 9 11 0
		 4 12 0 7 13 0 12 13 0 3 14 0 13 14 0 2 15 0 15 14 0 12 15 0 2 16 0 0 17 0 16 17 0
		 5 18 0 17 18 0 4 19 0 18 19 0 19 16 0 6 20 0 5 21 0 20 21 0 0 22 0 22 21 0 1 23 0
		 22 23 0 23 20 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 22 24 -27 -28
		mu 0 4 16 17 18 19
		f 4 -1 -4 7 4
		mu 0 4 2 1 4 0
		f 4 -15 -17 18 -20
		mu 0 4 12 13 14 15
		f 4 30 32 34 35
		mu 0 4 20 21 22 23
		f 4 38 -41 42 43
		mu 0 4 24 25 26 27
		f 4 -10 -6 -11 -7
		mu 0 4 3 7 11 8
		f 4 -5 12 14 -14
		mu 0 4 9 10 13 12
		f 4 -12 15 16 -13
		mu 0 4 10 8 14 13
		f 4 10 17 -19 -16
		mu 0 4 8 11 15 14
		f 4 -3 13 19 -18
		mu 0 4 11 9 12 15
		f 4 6 21 -23 -21
		mu 0 4 3 8 17 16
		f 4 11 23 -25 -22
		mu 0 4 8 0 18 17
		f 4 -8 25 26 -24
		mu 0 4 0 4 19 18
		f 4 -9 20 27 -26
		mu 0 4 4 3 16 19
		f 4 3 29 -31 -29
		mu 0 4 6 5 21 20
		f 4 1 31 -33 -30
		mu 0 4 5 7 22 21
		f 4 9 33 -35 -32
		mu 0 4 7 3 23 22
		f 4 8 28 -36 -34
		mu 0 4 3 6 20 23
		f 4 5 37 -39 -37
		mu 0 4 11 7 25 24
		f 4 -2 39 40 -38
		mu 0 4 7 5 26 25
		f 4 0 41 -43 -40
		mu 0 4 5 9 27 26
		f 4 2 36 -44 -42
		mu 0 4 9 11 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		3 0 
		8 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wasd_03";
	rename -uid "3AD93707-4930-F300-ED5A-69B4C0332D04";
createNode transform -n "SM_Button_Ability_12" -p "wasd_03";
	rename -uid "2FC759E4-4CF8-42BF-D02A-E08C6116ADC6";
	setAttr ".t" -type "double3" -15 0 7.5 ;
	setAttr ".r" -type "double3" 0 89.999999999999929 0 ;
createNode mesh -n "SM_Button_Ability_12Shape" -p "SM_Button_Ability_12";
	rename -uid "4E334879-40F1-17FE-90FE-6D8507D3D0E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]" "f[26]" "f[34:35]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]" "f[27:29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]" "f[30:33]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528 0.38732967 0.035939112 0.36669651 0.038204804 0.28546202 0.10281073
		 0.29270521 0.120751 0.70217276 0.22826567 0.46407369 0.30379212 0.69499189 0.22727716
		 0.71847212 0.115418 0.71453881 0.10288954 0.63330346 0.038206544 0.61267024 0.035939112;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt[2:36]" -type "float3"  0.1025271 -0.014768976 -0.099709734 
		0.11374758 -0.00354837 -0.099709734 0.1025271 -0.00354837 -0.11093043 0 0 0 0 0 0 
		-0.1025271 -0.00354837 -0.11093043 -0.11374758 -0.00354837 -0.099709734 -0.1025271 
		-0.014768976 -0.099709734 0 0 0 0 0 0 0 0.0027724083 0.10465628 -0.0084519014 0.014768976 
		0.11093043 0.0084519014 0.014768976 0.11093043 0.10632401 -0.00072529539 0.045682307 
		0.11374758 -0.0031787634 0.031437736 0.10259492 -0.014768976 0.040733155 -0.11374758 
		-0.0032115974 0.031464141 -0.10618298 -0.00045851053 0.04577633 -0.10241874 -0.014768976 
		0.040733155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.6176846 0 0 -0.6176846 0 0 -0.61524761 
		0 0 -0.59907073 0 0 -0.49690962 0 0 -0.49690962 0 0 -0.59731168 0 0 -0.61546409 0 
		0 -0.6176846 0 0 -0.6176846 0;
	setAttr -s 37 ".vt[0:36]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954 -1.35203362 1.6176852 1.5
		 -1.5 1.6176852 1.35203266 -1.5 1.6152482 -0.37937498 -1.4016819 1.59907115 -0.56554556
		 -0.10804272 1.49690902 -1.42797184 0.10804272 1.49690902 -1.42797184 1.40075207 1.59731209 -0.56616545
		 1.5 1.61546469 -0.37954903 1.5 1.6176852 1.35203266 1.35203362 1.6176852 1.5;
	setAttr -s 71 ".ed[0:70]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 27 0 4 3 0 3 28 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 35 0 8 7 0 7 36 0 9 8 0 8 18 0 18 20 0
		 20 9 0 11 31 0 14 13 0 13 32 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0
		 19 13 0 16 15 0 15 30 0 23 22 0 22 29 0 19 18 0 18 34 0 26 25 0 25 33 0 17 20 0 27 4 0
		 28 1 0 29 16 0 30 23 0 31 14 0 32 10 0 33 19 0 34 26 0 35 8 0 36 5 0 27 28 1 28 29 1
		 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 27 1;
	setAttr -s 36 -ch 142 ".fc[0:35]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 61 52
		mu 0 4 33 11 40 41
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 69 60
		mu 0 4 26 14 49 50
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 65 56
		mu 0 4 28 17 44 46
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 63 54 44 45
		mu 0 4 42 43 21 22
		f 4 67 58 48 49
		mu 0 4 47 48 24 25
		f 4 70 -14 0 -61
		mu 0 4 50 40 11 26
		f 4 66 -50 -4 -57
		mu 0 4 46 47 25 28
		f 4 64 -32 4 -55
		mu 0 4 43 45 30 21
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 62 -46 6 -53
		mu 0 4 41 42 22 33
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 68 -25 -11 -59
		mu 0 4 48 49 14 24
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24
		f 4 -62 51 14 15
		mu 0 4 41 40 12 34
		f 4 -54 -63 -16 -24
		mu 0 4 32 42 41 34
		f 4 42 43 -64 53
		mu 0 4 32 20 43 42
		f 4 -56 -65 -44 -36
		mu 0 4 18 45 43 20
		f 4 -66 55 32 33
		mu 0 4 46 44 37 29
		f 4 -58 -67 -34 -42
		mu 0 4 27 47 46 29
		f 4 46 47 -68 57
		mu 0 4 27 23 48 47
		f 4 -60 -69 -48 -29
		mu 0 4 16 49 48 23
		f 4 -70 59 25 26
		mu 0 4 50 49 16 15
		f 4 -18 -52 -71 -27
		mu 0 4 15 12 40 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "SM_Button_Ability_12";
	rename -uid "72856DD9-44FA-B04D-A9AC-868573DEF910";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt[2:26]" -type "float3"  -2.9802322e-08 -1.8626451e-09 
		2.9802322e-08 -5.9604645e-08 0 2.9802322e-08 -2.9802322e-08 0 0 0 0 0 0 0 0 2.9802322e-08 
		0 0 5.9604645e-08 0 2.9802322e-08 2.9802322e-08 -1.8626451e-09 2.9802322e-08 0 0 
		0 0 0 0 0 -4.6566129e-10 -1.4901161e-08 0 1.8626451e-09 0 0 1.8626451e-09 0 2.9802322e-08 
		-1.1641532e-10 -7.4505806e-09 -5.9604645e-08 4.6566129e-10 -7.4505806e-09 0 -1.8626451e-09 
		0 5.9604645e-08 4.6566129e-10 -3.7252903e-09 -1.4901161e-08 1.1641532e-10 7.4505806e-09 
		2.9802322e-08 -1.8626451e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".vt[0:26]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954;
	setAttr -s 51 ".ed[0:50]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 4 0 4 3 0 3 1 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 8 0 8 7 0 7 5 0 9 8 0 8 18 0 18 20 0 20 9 0
		 11 14 0 14 13 0 13 10 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0 19 13 0
		 16 15 0 15 23 0 23 22 0 22 16 0 19 18 0 18 26 0 26 25 0 25 19 0 17 20 0;
	setAttr -s 26 -ch 102 ".fc[0:25]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 14 15
		mu 0 4 33 11 12 34
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 25 26
		mu 0 4 26 14 16 15
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 32 33
		mu 0 4 28 17 37 29
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 42 43 44 45
		mu 0 4 32 20 21 22
		f 4 46 47 48 49
		mu 0 4 27 23 24 25
		f 4 -18 -14 0 -27
		mu 0 4 15 12 11 26
		f 4 -50 -4 -34 -42
		mu 0 4 27 25 28 29
		f 4 -32 4 -44 -36
		mu 0 4 18 30 21 20
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 -46 6 -16 -24
		mu 0 4 32 22 33 34
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 -25 -11 -48 -29
		mu 0 4 16 14 24 23
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_13" -p "wasd_03";
	rename -uid "116E69D5-449C-8322-C88C-16845BFBC85D";
	setAttr ".t" -type "double3" -17.5 0 5 ;
	setAttr ".r" -type "double3" 0 179.99999999999986 0 ;
createNode mesh -n "SM_Button_Ability_13Shape" -p "SM_Button_Ability_13";
	rename -uid "1FAEEAB1-478C-AB25-7ECF-48BE97AC0CF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]" "f[26]" "f[34:35]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]" "f[27:29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]" "f[30:33]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528 0.38732967 0.035939112 0.36669651 0.038204804 0.28546202 0.10281073
		 0.29270521 0.120751 0.70217276 0.22826567 0.46407369 0.30379212 0.69499189 0.22727716
		 0.71847212 0.115418 0.71453881 0.10288954 0.63330346 0.038206544 0.61267024 0.035939112;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt[2:36]" -type "float3"  0.1025271 -0.014768976 -0.099709734 
		0.11374758 -0.00354837 -0.099709734 0.1025271 -0.00354837 -0.11093043 0 0 0 0 0 0 
		-0.1025271 -0.00354837 -0.11093043 -0.11374758 -0.00354837 -0.099709734 -0.1025271 
		-0.014768976 -0.099709734 0 0 0 0 0 0 0 0.0027724083 0.10465628 -0.0084519014 0.014768976 
		0.11093043 0.0084519014 0.014768976 0.11093043 0.10632401 -0.00072529539 0.045682307 
		0.11374758 -0.0031787634 0.031437736 0.10259492 -0.014768976 0.040733155 -0.11374758 
		-0.0032115974 0.031464141 -0.10618298 -0.00045851053 0.04577633 -0.10241874 -0.014768976 
		0.040733155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.6176846 0 0 -0.6176846 0 0 -0.61524761 
		0 0 -0.59907073 0 0 -0.49690962 0 0 -0.49690962 0 0 -0.59731168 0 0 -0.61546409 0 
		0 -0.6176846 0 0 -0.6176846 0;
	setAttr -s 37 ".vt[0:36]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954 -1.35203362 1.6176852 1.5
		 -1.5 1.6176852 1.35203266 -1.5 1.6152482 -0.37937498 -1.4016819 1.59907115 -0.56554556
		 -0.10804272 1.49690902 -1.42797184 0.10804272 1.49690902 -1.42797184 1.40075207 1.59731209 -0.56616545
		 1.5 1.61546469 -0.37954903 1.5 1.6176852 1.35203266 1.35203362 1.6176852 1.5;
	setAttr -s 71 ".ed[0:70]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 27 0 4 3 0 3 28 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 35 0 8 7 0 7 36 0 9 8 0 8 18 0 18 20 0
		 20 9 0 11 31 0 14 13 0 13 32 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0
		 19 13 0 16 15 0 15 30 0 23 22 0 22 29 0 19 18 0 18 34 0 26 25 0 25 33 0 17 20 0 27 4 0
		 28 1 0 29 16 0 30 23 0 31 14 0 32 10 0 33 19 0 34 26 0 35 8 0 36 5 0 27 28 1 28 29 1
		 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 27 1;
	setAttr -s 36 -ch 142 ".fc[0:35]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 61 52
		mu 0 4 33 11 40 41
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 69 60
		mu 0 4 26 14 49 50
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 65 56
		mu 0 4 28 17 44 46
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 63 54 44 45
		mu 0 4 42 43 21 22
		f 4 67 58 48 49
		mu 0 4 47 48 24 25
		f 4 70 -14 0 -61
		mu 0 4 50 40 11 26
		f 4 66 -50 -4 -57
		mu 0 4 46 47 25 28
		f 4 64 -32 4 -55
		mu 0 4 43 45 30 21
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 62 -46 6 -53
		mu 0 4 41 42 22 33
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 68 -25 -11 -59
		mu 0 4 48 49 14 24
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24
		f 4 -62 51 14 15
		mu 0 4 41 40 12 34
		f 4 -54 -63 -16 -24
		mu 0 4 32 42 41 34
		f 4 42 43 -64 53
		mu 0 4 32 20 43 42
		f 4 -56 -65 -44 -36
		mu 0 4 18 45 43 20
		f 4 -66 55 32 33
		mu 0 4 46 44 37 29
		f 4 -58 -67 -34 -42
		mu 0 4 27 47 46 29
		f 4 46 47 -68 57
		mu 0 4 27 23 48 47
		f 4 -60 -69 -48 -29
		mu 0 4 16 49 48 23
		f 4 -70 59 25 26
		mu 0 4 50 49 16 15
		f 4 -18 -52 -71 -27
		mu 0 4 15 12 40 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "SM_Button_Ability_13";
	rename -uid "895430D7-4AB6-AE28-846F-E3A72DEE3BA1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt[2:26]" -type "float3"  -2.9802322e-08 -1.8626451e-09 
		2.9802322e-08 -5.9604645e-08 0 2.9802322e-08 -2.9802322e-08 0 0 0 0 0 0 0 0 2.9802322e-08 
		0 0 5.9604645e-08 0 2.9802322e-08 2.9802322e-08 -1.8626451e-09 2.9802322e-08 0 0 
		0 0 0 0 0 -4.6566129e-10 -1.4901161e-08 0 1.8626451e-09 0 0 1.8626451e-09 0 2.9802322e-08 
		-1.1641532e-10 -7.4505806e-09 -5.9604645e-08 4.6566129e-10 -7.4505806e-09 0 -1.8626451e-09 
		0 5.9604645e-08 4.6566129e-10 -3.7252903e-09 -1.4901161e-08 1.1641532e-10 7.4505806e-09 
		2.9802322e-08 -1.8626451e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".vt[0:26]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954;
	setAttr -s 51 ".ed[0:50]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 4 0 4 3 0 3 1 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 8 0 8 7 0 7 5 0 9 8 0 8 18 0 18 20 0 20 9 0
		 11 14 0 14 13 0 13 10 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0 19 13 0
		 16 15 0 15 23 0 23 22 0 22 16 0 19 18 0 18 26 0 26 25 0 25 19 0 17 20 0;
	setAttr -s 26 -ch 102 ".fc[0:25]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 14 15
		mu 0 4 33 11 12 34
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 25 26
		mu 0 4 26 14 16 15
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 32 33
		mu 0 4 28 17 37 29
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 42 43 44 45
		mu 0 4 32 20 21 22
		f 4 46 47 48 49
		mu 0 4 27 23 24 25
		f 4 -18 -14 0 -27
		mu 0 4 15 12 11 26
		f 4 -50 -4 -34 -42
		mu 0 4 27 25 28 29
		f 4 -32 4 -44 -36
		mu 0 4 18 30 21 20
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 -46 6 -16 -24
		mu 0 4 32 22 33 34
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 -25 -11 -48 -29
		mu 0 4 16 14 24 23
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Button_Ability_14" -p "wasd_03";
	rename -uid "7D3BC5AF-45C0-D0AD-03AF-609A8B22CE6A";
	setAttr ".t" -type "double3" -20 0 7.5 ;
	setAttr ".r" -type "double3" 0 270.00000000000011 0 ;
createNode mesh -n "SM_Button_Ability_14Shape" -p "SM_Button_Ability_14";
	rename -uid "B8E23E22-4C6D-B8AB-A38A-929D914DDCC6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]" "f[26]" "f[34:35]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 7 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]" "f[27:29]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]" "f[30:33]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528 0.38732967 0.035939112 0.36669651 0.038204804 0.28546202 0.10281073
		 0.29270521 0.120751 0.70217276 0.22826567 0.46407369 0.30379212 0.69499189 0.22727716
		 0.71847212 0.115418 0.71453881 0.10288954 0.63330346 0.038206544 0.61267024 0.035939112;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt[2:36]" -type "float3"  0.1025271 -0.014768976 -0.099709734 
		0.11374758 -0.00354837 -0.099709734 0.1025271 -0.00354837 -0.11093043 0 0 0 0 0 0 
		-0.1025271 -0.00354837 -0.11093043 -0.11374758 -0.00354837 -0.099709734 -0.1025271 
		-0.014768976 -0.099709734 0 0 0 0 0 0 0 0.0027724083 0.10465628 -0.0084519014 0.014768976 
		0.11093043 0.0084519014 0.014768976 0.11093043 0.10632401 -0.00072529539 0.045682307 
		0.11374758 -0.0031787634 0.031437736 0.10259492 -0.014768976 0.040733155 -0.11374758 
		-0.0032115974 0.031464141 -0.10618298 -0.00045851053 0.04577633 -0.10241874 -0.014768976 
		0.040733155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.6176846 0 0 -0.6176846 0 0 -0.61524761 
		0 0 -0.59907073 0 0 -0.49690962 0 0 -0.49690962 0 0 -0.59731168 0 0 -0.61546409 0 
		0 -0.6176846 0 0 -0.6176846 0;
	setAttr -s 37 ".vt[0:36]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954 -1.35203362 1.6176852 1.5
		 -1.5 1.6176852 1.35203266 -1.5 1.6152482 -0.37937498 -1.4016819 1.59907115 -0.56554556
		 -0.10804272 1.49690902 -1.42797184 0.10804272 1.49690902 -1.42797184 1.40075207 1.59731209 -0.56616545
		 1.5 1.61546469 -0.37954903 1.5 1.6176852 1.35203266 1.35203362 1.6176852 1.5;
	setAttr -s 71 ".ed[0:70]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 27 0 4 3 0 3 28 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 35 0 8 7 0 7 36 0 9 8 0 8 18 0 18 20 0
		 20 9 0 11 31 0 14 13 0 13 32 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0
		 19 13 0 16 15 0 15 30 0 23 22 0 22 29 0 19 18 0 18 34 0 26 25 0 25 33 0 17 20 0 27 4 0
		 28 1 0 29 16 0 30 23 0 31 14 0 32 10 0 33 19 0 34 26 0 35 8 0 36 5 0 27 28 1 28 29 1
		 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 27 1;
	setAttr -s 36 -ch 142 ".fc[0:35]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 61 52
		mu 0 4 33 11 40 41
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 69 60
		mu 0 4 26 14 49 50
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 65 56
		mu 0 4 28 17 44 46
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 63 54 44 45
		mu 0 4 42 43 21 22
		f 4 67 58 48 49
		mu 0 4 47 48 24 25
		f 4 70 -14 0 -61
		mu 0 4 50 40 11 26
		f 4 66 -50 -4 -57
		mu 0 4 46 47 25 28
		f 4 64 -32 4 -55
		mu 0 4 43 45 30 21
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 62 -46 6 -53
		mu 0 4 41 42 22 33
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 68 -25 -11 -59
		mu 0 4 48 49 14 24
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24
		f 4 -62 51 14 15
		mu 0 4 41 40 12 34
		f 4 -54 -63 -16 -24
		mu 0 4 32 42 41 34
		f 4 42 43 -64 53
		mu 0 4 32 20 43 42
		f 4 -56 -65 -44 -36
		mu 0 4 18 45 43 20
		f 4 -66 55 32 33
		mu 0 4 46 44 37 29
		f 4 -58 -67 -34 -42
		mu 0 4 27 47 46 29
		f 4 46 47 -68 57
		mu 0 4 27 23 48 47
		f 4 -60 -69 -48 -29
		mu 0 4 16 49 48 23
		f 4 -70 59 25 26
		mu 0 4 50 49 16 15
		f 4 -18 -52 -71 -27
		mu 0 4 15 12 40 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "SM_Button_Ability_14";
	rename -uid "C8200F6A-4D6B-0D70-1650-B19FD58BD267";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[15]" "f[17]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0:1]" "f[24]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[2:3]" "f[5:6]" "f[12]" "f[15]" "f[17]" "f[19:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[4]" "f[8]" "f[10]" "f[14]" "f[16]" "f[22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 8 "f[7]" "f[9]" "f[11]" "f[13]" "f[18]" "f[21]" "f[23]" "f[25]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.50000083446502686 0.2457873523235321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.38248152 0.86707848
		 0.4807269 0.76305526 0.4981651 0.76305526 0.61602485 0.86707848 0.38733053 1 0.375
		 0.99075204 0.38371915 0.875 0.61628085 0.87499994 0.62499994 0.8824169 0.625 0.99075204
		 0.61266947 1 0.38733053 0 0.3873288 0.071878225 0.38887009 0.086253941 0.63424796
		 1.1200535e-09 0.61267102 0.071878225 0.63235897 0.076413088 0.8593632 0.037471585
		 0.50537914 0.41969258 0.51986426 0.41050145 0.32318488 0.22820629 0.26222554 0.013295712
		 0.25741687 0 0.68649453 0.20577908 0.7425831 8.4004015e-10 0.75719899 0.0024666246
		 0.61266947 0 0.67974526 0.22836939 0.85173482 0.034857832 0.53824896 0.41969648 0.42276824
		 0.18789169 0.33088398 0.22497101 0.31350714 0.20562147 0.36575204 0 0.36764097 0.076409608
		 0.61729479 0.086256765 0.66882414 0.2250746 0.54498231 0.41905975 0.375 0.8824169
		 0.75528121 0.001809528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt[2:26]" -type "float3"  -2.9802322e-08 -1.8626451e-09 
		2.9802322e-08 -5.9604645e-08 0 2.9802322e-08 -2.9802322e-08 0 0 0 0 0 0 0 0 2.9802322e-08 
		0 0 5.9604645e-08 0 2.9802322e-08 2.9802322e-08 -1.8626451e-09 2.9802322e-08 0 0 
		0 0 0 0 0 -4.6566129e-10 -1.4901161e-08 0 1.8626451e-09 0 0 1.8626451e-09 0 2.9802322e-08 
		-1.1641532e-10 -7.4505806e-09 -5.9604645e-08 4.6566129e-10 -7.4505806e-09 0 -1.8626451e-09 
		0 5.9604645e-08 4.6566129e-10 -3.7252903e-09 -1.4901161e-08 1.1641532e-10 7.4505806e-09 
		2.9802322e-08 -1.8626451e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".vt[0:26]"  -1.35203362 0 1.5 -1.5 0 1.35203266 -1.35203362 3.3833375 1.35203266
		 -1.5 3.2353704 1.35203266 -1.35203362 3.2353704 1.5 1.35203362 0 1.5 1.5 0 1.35203266
		 1.35203362 3.2353704 1.5 1.5 3.2353704 1.35203266 1.35203362 3.3833375 1.35203266
		 0.10462952 0 -1.43024731 -0.10462952 0 -1.43024731 0 3.15201783 -1.3429594 0.11145592 2.99381804 -1.42569637
		 -0.11145592 2.99381804 -1.42569637 -1.40210342 3.19814229 -0.5652647 -1.5 3.23049641 -0.37742043
		 -1.35292816 3.3833375 -0.5 1.5 3.23092937 -0.37776852 1.40024376 3.19462419 -0.56650448
		 1.35060501 3.3833375 -0.5 -1.39537048 0 -0.5 -1.5 0 -0.38132954 -1.40126038 0 -0.56582642
		 1.39537048 0 -0.5 1.40126038 0 -0.56582642 1.5 0 -0.38132954;
	setAttr -s 51 ".ed[0:50]"  0 5 0 1 0 0 6 5 0 10 25 0 11 23 0 11 10 0
		 22 1 0 23 21 0 22 21 0 24 21 0 26 6 0 25 24 0 24 26 0 0 4 0 4 3 0 3 1 0 2 4 0 4 7 0
		 7 9 0 9 2 0 3 2 0 2 17 0 17 16 0 16 3 0 6 8 0 8 7 0 7 5 0 9 8 0 8 18 0 18 20 0 20 9 0
		 11 14 0 14 13 0 13 10 0 12 14 0 14 15 0 15 17 0 17 12 0 13 12 0 12 20 0 20 19 0 19 13 0
		 16 15 0 15 23 0 23 22 0 22 16 0 19 18 0 18 26 0 26 25 0 25 19 0 17 20 0;
	setAttr -s 26 -ch 102 ".fc[0:25]" -type "polyFaces" 
		f 8 -2 -7 8 -10 12 10 2 -1
		mu 0 8 4 5 38 6 7 8 9 10
		f 6 -8 -5 5 3 11 9
		mu 0 6 6 0 1 2 3 7
		f 4 1 13 14 15
		mu 0 4 33 11 12 34
		f 4 16 17 18 19
		mu 0 4 13 12 15 35
		f 4 20 21 22 23
		mu 0 4 34 13 31 32
		f 4 -3 24 25 26
		mu 0 4 26 14 16 15
		f 4 27 28 29 30
		mu 0 4 35 16 23 36
		f 4 -6 31 32 33
		mu 0 4 28 17 37 29
		f 4 34 35 36 37
		mu 0 4 19 18 20 31
		f 4 38 39 40 41
		mu 0 4 29 19 36 27
		f 4 42 43 44 45
		mu 0 4 32 20 21 22
		f 4 46 47 48 49
		mu 0 4 27 23 24 25
		f 4 -18 -14 0 -27
		mu 0 4 15 12 11 26
		f 4 -50 -4 -34 -42
		mu 0 4 27 25 28 29
		f 4 -32 4 -44 -36
		mu 0 4 18 30 21 20
		f 3 -38 50 -40
		mu 0 3 19 31 36
		f 4 -46 6 -16 -24
		mu 0 4 32 22 33 34
		f 4 -22 -20 -31 -51
		mu 0 4 31 13 35 36
		f 4 -25 -11 -48 -29
		mu 0 4 16 14 24 23
		f 3 -21 -15 -17
		mu 0 3 13 34 12
		f 3 -26 -28 -19
		mu 0 3 15 16 35
		f 3 -39 -33 -35
		mu 0 3 19 29 37
		f 3 -43 -23 -37
		mu 0 3 20 32 31
		f 3 -47 -41 -30
		mu 0 3 23 27 36
		f 3 -9 -45 7
		mu 0 3 6 38 0
		f 3 -12 -49 -13
		mu 0 3 39 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "AspectRatio_grp";
	rename -uid "9B7D33EA-4046-E907-2B4B-4CA7D413D74D";
	setAttr ".v" no;
createNode transform -n "pCube18" -p "AspectRatio_grp";
	rename -uid "FAFCECE3-4B0F-571E-E75E-A49208F6A947";
	setAttr ".t" -type "double3" 0 6 0 ;
	setAttr ".s" -type "double3" 50.159837703418248 0.33333335496946598 37.619878277563721 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "01E42406-4124-6A3F-A093-47B9EF4057F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "AspectRatio_grp";
	rename -uid "7F91EE34-4DED-3C63-9A7D-7E9311D1F349";
	setAttr ".t" -type "double3" 0 5.5 0 ;
	setAttr ".s" -type "double3" 65.088577843294672 0.33333335496946598 27.895104789983435 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "7602BD3E-4906-FB9C-9674-8898F0B72C35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "AspectRatio_grp";
	rename -uid "CC0E03B3-43D7-2493-C4C4-288C4A9CDA1A";
	setAttr ".t" -type "double3" 0 6.5 0 ;
	setAttr ".s" -type "double3" 49.041886018791267 0.33333335496946598 27.586060885570127 ;
createNode mesh -n "pCubeShape4" -p "pCube16";
	rename -uid "FB16F33D-4771-3B7E-64A4-10BCAC28A986";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube9" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube10" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube11" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube12" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube13" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube14" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube15" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BE3B5561-4036-6102-04FF-6CBC85BE3927";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C75BB157-4915-8D49-FB68-79A690CEC3C6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "ADFAA187-4181-27F7-7234-BE913DCDF7A7";
createNode displayLayerManager -n "layerManager";
	rename -uid "F4E834AA-49A8-AAEE-7C7F-24B065D0E71B";
createNode displayLayer -n "defaultLayer";
	rename -uid "B9773377-4771-5C18-B221-F3AE58E10143";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CD705CB7-4B47-85AF-7EF3-798E184A90B6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6FA7BC5E-4A9C-F8CD-69A9-E196C0F98929";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "31710887-415D-08CA-9885-2EB975BEA756";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1959\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 534\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5D7431A0-4EC9-F59E-F7A9-E291E4C9C70F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5629D1FA-4A15-F539-6677-4A989072685A";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "492F465D-4DBD-79D8-DF5A-EE8933930723";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "FCE63411-4EBF-5478-2C38-A1882B1A2CF6";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "0D2F0AB8-4630-932E-DEAD-77B4466D23AB";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode lambert -n "MI_Snake_Body";
	rename -uid "5B7E04F3-44B4-1EB2-CC95-97B292083014";
	setAttr ".c" -type "float3" 0.038458288 0.5 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7AB88BBD-4472-1E39-97DE-9BA6C917786E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "5B63F612-40B9-1F9E-2539-1792FCDD9645";
createNode lambert -n "MI_Button";
	rename -uid "40330096-4B15-9E45-94CD-3182FD4D8695";
	setAttr ".c" -type "float3" 0.13095239 0.13095239 0.13095239 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "15BD8B6E-4B4D-7D66-45D2-798DC3DA3D22";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F97C6992-4E15-0E57-4931-228F10E48DA0";
createNode standardSurface -n "typeStandardSurface";
	rename -uid "2453C2A2-42BC-88D9-2C71-7395F7AD1E6B";
	setAttr ".bc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeStandardSurfaceSG";
	rename -uid "580066EB-4867-3065-72AC-C8B5B3957ED3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "DD419E52-43C8-12EC-494D-638B42068E02";
createNode lambert -n "MI_Board";
	rename -uid "EC731B3C-447C-D481-A140-E2B6C72452BA";
	setAttr ".c" -type "float3" 0.13468 0.148 0.1464631 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "DB68C6F4-4CB6-0416-B6FA-A9A914AA3B2C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "851F7C3B-4CCC-9C23-99FC-6F9D30B84305";
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "B55C3DF9-4D6E-DE8A-B9BA-C4BAA0576F44";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".mfm" 2;
	setAttr ".mto" yes;
	setAttr ".tri" yes;
	setAttr ".ski" no;
	setAttr ".bsh" no;
	setAttr ".uax" 2;
	setAttr ".ich" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "E:/github/SnakeRoguelike/Art/Exports";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "34FB0BB2-437A-C28B-09B3-B6895239D7B3";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "78039553-4A6D-6C95-A316-818B6FE6104B";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode shellDeformer -n "shellDeformer1";
	rename -uid "5CC20CE3-4936-B3EE-4FDE-67A698775ECD";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "88417067-4BAA-200C-19AA-3E84BDF7AF53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyRemesh -n "polyRemesh1";
	rename -uid "FB69F340-4FDF-677A-FF35-D99FD2D6FFFB";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".nds" 1;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".tsb" no;
	setAttr ".ipt" 0;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "A5F18E23-431F-E797-2ABD-CB85C47D6597";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode vectorAdjust -n "vectorAdjust1";
	rename -uid "51394729-4F40-10C9-24CE-5CBAFF70519B";
	setAttr ".extrudeDistanceScalePP" -type "doubleArray" 0 ;
	setAttr ".boundingBoxes" -type "vectorArray" 20 0.080694220960140228 -0.029851241037249565
		 0 0.080694220960867397 -0.029851241035995384 1.5755814313888549e-13 0.97649586200714111
		 -0.029851241037249565 0 0.97649586200810878 -0.029851241035995384 1.5755814313888549e-13 2.1169917583465576
		 -0.029851241037249565 0 2.1169917583476745 -0.029851241035995384 1.5755814313888549e-13 3.4764628410339355
		 0 0 3.4764628410348095 1.1944628953933716e-12 1.5755814313888549e-13 4.5177850723266602
		 0 0 4.5177850723273627 1.1944628953933716e-12 1.5755814313888549e-13 5.4377851486206055
		 0 0 5.4377851486207645 8.764793872833252e-13 1.5755814313888549e-13 6.4189586639404297
		 -0.029851241037249565 0 6.4189586639412655 -0.029851241035995384 1.5755814313888549e-13 7.4602808952331543
		 -0.029851241037249565 0 7.4602808952339901 -0.029851241035995384 1.5755814313888549e-13 8.5016031265258789
		 -0.029851241037249565 0 8.5016031265267156 -0.029851241035995384 1.5755814313888549e-13 9.5429258346557617
		 -0.029851241037249565 0 9.5429258346565984 -0.029851241035995384 1.5755814313888549e-13 ;
createNode typeExtrude -n "typeExtrude1";
	rename -uid "2246A4F7-4689-61C7-ED97-2DA6F6F10CA2";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".exdv" 1;
	setAttr ".exds" 0.1575581431388855;
	setAttr -s 4 ".exc[0:3]"  0 0.5 0.333 0.5 0.66600001 0.5 1 0.5;
	setAttr -s 4 ".fbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr -s 4 ".bbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr ".capComponents" -type "componentList" 12 "f[0]" "f[85:86]" "f[137:138]" "f[203:204]" "f[244:245]" "f[258:259]" "f[264:265]" "f[270:271]" "f[320:321]" "f[370:371]" "f[420:421]" "f[470]";
	setAttr ".bevelComponents" -type "componentList" 0;
	setAttr ".extrusionComponents" -type "componentList" 11 "f[1:84]" "f[87:136]" "f[139:202]" "f[205:243]" "f[246:257]" "f[260:263]" "f[266:269]" "f[272:319]" "f[322:369]" "f[372:419]" "f[422:469]";
	setAttr -s 14 ".charGroupId";
createNode type -n "type1";
	rename -uid "6AAB2685-4EBE-DDE9-A72D-DD983D5699D9";
	setAttr ".solidsPerCharacter" -type "doubleArray" 10 1 1 1 1 1 2 1 1 1 1 ;
	setAttr ".solidsPerWord" -type "doubleArray" 2 7 4 ;
	setAttr ".solidsPerLine" -type "doubleArray" 1 11 ;
	setAttr ".vertsPerChar" -type "doubleArray" 10 84 134 198 237 249 257 305 353
		 401 449 ;
	setAttr ".characterBoundingBoxesMax" -type "vectorArray" 10 0.80786782256827872
		 1.2243306814146437 0 1.9441818993938855 1.2243306814146437 0 3.2339835679235538 1.2243306814146437
		 0 4.3505290007788293 1.1944629259345945 0 5.2199339433149863 1.1944629259345945 0 5.596776883464214
		 0.87647940895774146 0 7.255090949949154 1.2243306814146437 0 8.2964132639987405 1.2243306814146437
		 0 9.3377355780483278 1.2243306814146437 0 10.379057892097915 1.2243306814146437 0 ;
	setAttr ".characterBoundingBoxesMin" -type "vectorArray" 10 0.080694222253216208
		 -0.029851241545243698 0 0.97649586890354634 -0.029851241545243698 0 2.1169917366721416
		 -0.029851241545243698 0 3.4764628134483151 0 0 4.517785127497902 0 0 5.4377851249757878
		 0 0 6.4189586797036418 -0.029851241545243698 0 7.4602809937532282 -0.029851241545243698
		 0 8.5016033078028155 -0.029851241545243698 0 9.5429256218524028 -0.029851241545243698
		 0 ;
	setAttr ".manipulatorPivots" -type "vectorArray" 10 0.080694222253216208 -0.029851241545243698
		 0 0.97649586890354634 -0.029851241545243698 0 2.1169917366721416 -0.029851241545243698
		 0 3.4764628134483151 0 0 4.517785127497902 0 0 5.4377851249757878 0 0 6.4189586797036418
		 -0.029851241545243698 0 7.4602809937532282 -0.029851241545243698 0 8.5016033078028155
		 -0.029851241545243698 0 9.5429256218524028 -0.029851241545243698 0 ;
	setAttr ".holeInfo" -type "Int32Array" 18 2 32 166 3 15
		 222 7 16 289 8 16 337 9 16 385 10 16
		 433 ;
	setAttr ".numberOfShells" 11;
	setAttr ".textInput" -type "string" "53 43 4F 52 45 3A 20 30 30 30 30";
	setAttr ".currentFont" -type "string" "Lucida Sans Unicode";
	setAttr ".currentStyle" -type "string" "Regular";
	setAttr ".manipulatorPositionsPP" -type "vectorArray" 32 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 ;
	setAttr ".manipulatorWordPositionsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorRotationsPP" -type "vectorArray" 32 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 ;
	setAttr ".manipulatorWordRotationsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorScalesPP" -type "vectorArray" 32 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".manipulatorWordScalesPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".alignmentAdjustments" -type "doubleArray" 1 0 ;
	setAttr ".manipulatorMode" 0;
	setAttr ".fontSize" 2;
createNode groupId -n "groupId6";
	rename -uid "0E905961-4535-24A3-3822-6D86F7E31382";
createNode groupId -n "groupId7";
	rename -uid "7BD568B8-4F35-EA9B-55C0-20B0E43EAA15";
createNode groupId -n "groupId3";
	rename -uid "8970D684-4605-45F8-ADCF-B489B18D30C8";
createNode groupId -n "groupId8";
	rename -uid "90FF4E7E-4F08-67A0-3093-D58BA9A78269";
createNode groupId -n "groupid2";
	rename -uid "020C13BB-4BEA-D901-2ED8-CE8C4F5CEB02";
createNode groupId -n "groupId10";
	rename -uid "4D233A68-4454-E829-4CC7-B1A02653D39A";
createNode groupId -n "groupid1";
	rename -uid "6B887468-4B8D-D6AE-73D2-5B91BDB62005";
createNode groupId -n "groupId9";
	rename -uid "9F1E7960-4EB3-4F10-B3AC-72B4E477B032";
createNode groupId -n "groupId2";
	rename -uid "525E8901-4319-6638-7504-CF8BEF531FF3";
createNode groupId -n "groupId5";
	rename -uid "EFAC173B-4187-5F97-D59E-9083674677C1";
createNode groupId -n "groupId4";
	rename -uid "62C104A9-4CC5-95BD-8690-4E8C58B2C9D2";
createNode groupId -n "groupid3";
	rename -uid "9D7085CC-4A27-8A85-0F8E-E8B3F1A46A7B";
createNode groupId -n "groupId1";
	rename -uid "D43BE2C2-48C7-EB23-7FCE-0E8D9DBCD33A";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "ADC0D747-4FB6-8B3E-FAF8-84BB0CADC344";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 46 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]" "e[64]" "e[67]" "e[72]" "e[75]" "e[80]" "e[83]" "e[88]" "e[91]" "e[96]" "e[99]" "e[104]" "e[107]" "e[112]" "e[115]" "e[120]" "e[123]" "e[128]" "e[131]" "e[136]" "e[139]" "e[144]" "e[147]" "e[152]" "e[155]" "e[160]" "e[163]" "e[168]" "e[171]" "e[176]" "e[179]" "e[184]" "e[187]";
	setAttr ".ix" -type "matrix" 23 0 0 0 0 1 0 0 0 0 23 0 0 0 0 1;
	setAttr ".wt" 0.61462724208831787;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 22;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "CB7D60D8-41CD-89C9-5C1E-9189BF77D02C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 23 0 0 0 0 1 0 0 0 0 23 0 0 0 0 1;
	setAttr ".wt" 0.6198386549949646;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 22;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube1";
	rename -uid "193619B6-43F2-02E5-75E4-EAAE798162B6";
	setAttr ".cuv" 4;
createNode type -n "type2";
	rename -uid "60BDF90F-4763-02C8-94BF-6490E9CB4E32";
	setAttr ".solidsPerCharacter" -type "doubleArray" 12 1 2 1 1 1 1 1 1 1 2 1 1 ;
	setAttr ".solidsPerWord" -type "doubleArray" 3 5 4 5 ;
	setAttr ".solidsPerLine" -type "doubleArray" 2 9 5 ;
	setAttr ".vertsPerChar" -type "doubleArray" 12 8 16 63 111 117 165 197 229 277
		 285 333 381 ;
	setAttr ".characterBoundingBoxesMax" -type "vectorArray" 12 1.2892976083046148
		 1.4930786574182433 0 1.6991322493750203 1.4930786574182433 0 3.642086785686903 1.1198140766995013
		 0 4.8291323007630913 1.1198140766995013 0 6.7169215462424541 1.4930786574182433 0 7.742355441258959
		 1.1198140766995013 0 8.7127479836960475 1.6181819695086519 0 9.3490909544889593 1.3135124238069393
		 0 1.1763017039653685 -0.96958664823169549 0 1.7273760630079538 -1.4044007388028232
		 0 3.1391116213207404 -0.96958664823169549 0 4.4407645138827236 -0.96958664823169549
		 0 ;
	setAttr ".characterBoundingBoxesMin" -type "vectorArray" 12 0.018140496301256921
		 0 0 1.5003925709685018 0 0 2.0995661246875104 0 0 3.9342768625779585 -0.02520661216136838
		 0 5.8331818225955177 0 0 6.8475000030738267 -0.02520661216136838 0 7.9732644656472953
		 0 0 8.7266322354639865 -0.02520661216136838 0 0.13113636615847754 -2.5373140519315549
		 0 1.5286363648974206 -2.5 0 2.0939462835138496 -2.5373140519315549 0 3.3955991760758328
		 -2.5373140519315549 0 ;
	setAttr ".manipulatorPivots" -type "vectorArray" 12 0.018140496301256921 0 0 1.5003925709685018
		 0 0 2.0995661246875104 0 0 3.9342768625779585 -0.02520661216136838 0 5.8331818225955177
		 0 0 6.8475000030738267 -0.02520661216136838 0 7.9732644656472953 0 0 8.7266322354639865
		 -0.02520661216136838 0 0.13113636615847754 -2.5373140519315549 0 1.5286363648974206
		 -2.5 0 2.0939462835138496 -2.5373140519315549 0 3.3955991760758328 -2.5373140519315549
		 0 ;
	setAttr ".holeInfo" -type "Int32Array" 15 4 9 102 6 9
		 156 9 16 261 12 16 317 13 16 365 ;
	setAttr ".numberOfShells" 14;
	setAttr ".textInput" -type "string" "54 69 6D 65 20 4C 65 66 74 0A 30 3A 30 30";
	setAttr ".currentFont" -type "string" "Lucida Sans Unicode";
	setAttr ".currentStyle" -type "string" "Regular";
	setAttr ".manipulatorPositionsPP" -type "vectorArray" 41 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".manipulatorWordPositionsPP" -type "vectorArray" 3 0 0 0 0 0 0 0 0
		 0 ;
	setAttr ".manipulatorLinePositionsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorRotationsPP" -type "vectorArray" 41 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".manipulatorWordRotationsPP" -type "vectorArray" 3 0 0 0 0 0 0 0 0
		 0 ;
	setAttr ".manipulatorLineRotationsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorScalesPP" -type "vectorArray" 41 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".manipulatorWordScalesPP" -type "vectorArray" 3 0 0 0 0 0 0 0 0 0 ;
	setAttr ".manipulatorLineScalesPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".alignmentAdjustments" -type "doubleArray" 2 0 0 ;
	setAttr ".manipulatorMode" 0;
	setAttr ".fontSize" 2.5;
createNode typeExtrude -n "typeExtrude2";
	rename -uid "51A90445-41A4-D00A-17DA-079B40D64977";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".exdv" 1;
	setAttr ".exds" 0.20000000298023224;
	setAttr -s 4 ".exc[0:3]"  0 0.5 0.333 0.5 0.66600001 0.5 1 0.5;
	setAttr -s 4 ".fbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr -s 4 ".bbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr ".capComponents" -type "componentList" 15 "f[0]" "f[9:10]" "f[15:16]" "f[21:22]" "f[70:71]" "f[120:121]" "f[128:129]" "f[178:179]" "f[212:213]" "f[246:247]" "f[296:297]" "f[302:303]" "f[308:309]" "f[358:359]" "f[408]";
	setAttr ".bevelComponents" -type "componentList" 0;
	setAttr ".extrusionComponents" -type "componentList" 14 "f[1:8]" "f[11:14]" "f[17:20]" "f[23:69]" "f[72:119]" "f[122:127]" "f[130:177]" "f[180:211]" "f[214:245]" "f[248:295]" "f[298:301]" "f[304:307]" "f[310:357]" "f[360:407]";
	setAttr -s 13 ".charGroupId";
createNode groupId -n "groupid4";
	rename -uid "EEC99A01-4D2B-A6A8-0E9D-BFABCCBA18B2";
createNode groupId -n "groupid5";
	rename -uid "A101AA7D-414F-BD63-5A1E-5B86C05D0138";
createNode groupId -n "groupid6";
	rename -uid "25145266-4D05-8A0C-BFAE-148712B23972";
createNode standardSurface -n "typeStandardSurface1";
	rename -uid "EC72F664-40CD-44DF-579C-5AB2B3D75B0F";
	setAttr ".bc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeStandardSurface1SG";
	rename -uid "15065F1F-4FB7-8E15-B3E8-7ABFE3AEE68D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "C7AA0958-4E65-B02A-1B19-D9BB200ACBB4";
createNode vectorAdjust -n "vectorAdjust2";
	rename -uid "5E075232-4E3C-F068-4FB8-5FA4AA5B9F42";
	setAttr ".extrudeDistanceScalePP" -type "doubleArray" 0 ;
	setAttr ".boundingBoxes" -type "vectorArray" 24 0.01814049668610096 0 0 0.018140496687372117
		 1.4930787086486816e-12 2.0000000298023224e-13 1.5003925561904907 0 0 1.5003925561906895
		 1.4930787086486816e-12 2.0000000298023224e-13 2.0995662212371826 0 0 2.0995662212387249
		 1.1198140382766723e-12 2.0000000298023224e-13 3.934276819229126 -0.025206612423062325
		 0 3.9342768192300208 -0.025206612421917303 2.0000000298023224e-13 5.8331818580627441
		 0 0 5.8331818580636279 1.4930787086486816e-12 2.0000000298023224e-13 6.8474998474121094
		 -0.025206612423062325 0 6.8474998474130047 -0.025206612421917303 2.0000000298023224e-13 7.9732646942138672
		 0 0 7.973264694214607 1.6181819438934326e-12 2.0000000298023224e-13 8.7266321182250977
		 -0.025206612423062325 0 8.7266321182257194 -0.025206612421723607 2.0000000298023224e-13 0.13113637268543243
		 -2.5373139381408691 0 0.1311363726864776 -2.5373139381393015 2.0000000298023224e-13 1.5286363363265991
		 -2.5 0 1.5286363363267979 -2.4999999999989044 2.0000000298023224e-13 2.0939462184906006
		 -2.5373139381408691 0 2.093946218491646 -2.5373139381393015 2.0000000298023224e-13 3.3955991268157959
		 -2.5373139381408691 0 3.3955991268168413 -2.5373139381393015 2.0000000298023224e-13 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "CCE45B9E-4E9A-10E4-EAFF-62A287CE387A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyRemesh -n "polyRemesh2";
	rename -uid "C110E1E9-465B-EE2E-B48F-E8AE20BC6AAF";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".nds" 1;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".tsb" no;
	setAttr ".ipt" 0;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "FA162A07-4172-B641-020E-50B2F858A096";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode shellDeformer -n "shellDeformer2";
	rename -uid "ACEEC560-4B25-119C-226D-F3B30336ABF8";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
createNode groupId -n "groupId18";
	rename -uid "29B547E3-4A99-3E23-8012-EBA27B895385";
createNode groupId -n "groupId19";
	rename -uid "8C4BF95F-4EC4-C43C-C665-E7A6B9455C41";
createNode groupId -n "groupId20";
	rename -uid "E423BFE2-430E-4221-F108-D1A0A6B30904";
createNode groupId -n "groupId21";
	rename -uid "F21E680E-46A5-7520-DBF2-0C9B7A13E2C9";
createNode groupId -n "groupId22";
	rename -uid "29F39270-47E7-8196-46DD-5DB67C8793B5";
createNode groupId -n "groupId23";
	rename -uid "668D84CA-4660-9164-2383-BFA92017785B";
createNode groupId -n "groupId24";
	rename -uid "AB408D07-4B5F-32C5-F2FF-68A3B0DF7A90";
createNode groupId -n "groupId25";
	rename -uid "A47D10F6-4528-2A66-A11A-399B322A809B";
createNode groupId -n "groupId26";
	rename -uid "E81C448D-4597-E85B-676C-338290F4F24D";
createNode groupId -n "groupId27";
	rename -uid "152D99B0-47F2-902F-8307-93B49F90A481";
createNode groupId -n "groupId28";
	rename -uid "EE4A5438-4A14-56B2-C7D0-6C8BE8FDFCF1";
createNode groupId -n "groupId29";
	rename -uid "A05B0487-4EE3-3BC2-05DC-54A65A14EA33";
createNode groupId -n "groupId30";
	rename -uid "C1143483-4CD2-C4BA-8CAF-38B8EDEC2944";
createNode groupId -n "groupId31";
	rename -uid "E497F4C0-4247-1023-8B17-299000CE110F";
createNode groupId -n "groupId32";
	rename -uid "2185023B-483A-64D0-9221-2F9943DFE9DC";
createNode groupId -n "groupId33";
	rename -uid "B8D65243-48CA-E5E3-1685-4F811CA31DD1";
createNode groupId -n "groupId34";
	rename -uid "43977F3C-406A-BFC8-4081-8093B89A73EF";
createNode polySplit -n "polySplit1";
	rename -uid "3BBA441A-47B0-F653-AA3C-B091B8A55EB3";
	setAttr -s 7 ".e[0:6]"  0.28802601 0.28802601 0.28802601 0.28802601
		 0.28802601 0.28802601 0.28802601;
	setAttr -s 7 ".d[0:6]"  -2147483642 -2147483637 -2147483634 -2147483575 -2147483578 -2147483641 
		-2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "1D53A7CE-4026-9AB9-BE8E-C49E30D10AD9";
	setAttr -s 7 ".e[0:6]"  0.27279899 0.27279899 0.27279899 0.27279899
		 0.27279899 0.27279899 0.27279899;
	setAttr -s 7 ".d[0:6]"  -2147483414 -2147483413 -2147483412 -2147483411 -2147483410 -2147483409 
		-2147483414;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "2CAD63DE-4C57-E290-ABA0-DFB52D68FFA9";
	setAttr -s 4 ".e[0:3]"  0.84162802 0.84162802 0.84162802 0.84162802;
	setAttr -s 4 ".d[0:3]"  -2147483639 -2147483408 -2147483396 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "3AC474B6-4A78-6A60-B36F-DF83F4AE8FF6";
	setAttr -s 4 ".e[0:3]"  0.84132999 0.83399302 0.82904601 0.81585699;
	setAttr -s 4 ".d[0:3]"  -2147483639 -2147483408 -2147483396 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "AE0D21E0-4B23-9A42-7F6F-139F4A175779";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[136:143]" -type "float3"  0 0 0.14255524 0 0 0.14255524
		 0 0 0.14255524 0 0 0.14255524 0 0 0.2140038 0 0 0.35602784 0 0 0.45178807 0 0 0.70709062;
createNode polySplit -n "polySplit5";
	rename -uid "ADA98E31-453D-F620-80A8-438DF9779444";
	setAttr -s 9 ".e[0:8]"  0.32134801 0.32134801 0.32134801 0.32134801
		 0.32134801 0.32134801 0.32134801 0.32134801 0.32134801;
	setAttr -s 9 ".d[0:8]"  -2147483402 -2147483377 -2147483384 -2147483401 -2147483400 -2147483399 
		-2147483398 -2147483397 -2147483402;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "A4372D3C-446A-7474-0550-0DB7A19DE612";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[144]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[145]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[146]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[147]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.026695251 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.026695251 0 0 ;
createNode polySplit -n "polySplit6";
	rename -uid "B23572F6-421B-4788-FE0F-DFB3A1BAFE1C";
	setAttr -s 9 ".e[0:8]"  0.37154999 0.37154999 0.37154999 0.37154999
		 0.37154999 0.37154999 0.37154999 0.37154999 0.37154999;
	setAttr -s 9 ".d[0:8]"  -2147483642 -2147483379 -2147483386 -2147483637 -2147483634 -2147483575 
		-2147483578 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "ABEC2B41-427B-3255-69E9-87B378B6FA25";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[124]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.10355759 0 -0.5 ;
	setAttr ".tk[126]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[127]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[128]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[129]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.5 ;
	setAttr ".tk[137]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[141]" -type "float3" -0.10355759 0 0 ;
	setAttr ".tk[152]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[153]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[154]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[155]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[156]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[157]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[158]" -type "float3" -0.18072701 0 0 ;
	setAttr ".tk[159]" -type "float3" -0.18072701 0 0 ;
createNode polySplit -n "polySplit7";
	rename -uid "433FA67A-4EB1-CBD4-A4B4-519AB9168D52";
	setAttr -s 6 ".e[0:5]"  0.79878199 0.79878199 0.79878199 0.79878199
		 0.79878199 0.79878199;
	setAttr -s 6 ".d[0:5]"  -2147483639 -2147483352 -2147483408 -2147483396 -2147483368 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode groupId -n "groupId36";
	rename -uid "042C38A1-476A-9ED5-C437-1AA5CC718203";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "FA09243F-409F-34D5-339D-22A5CB5859E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[73]";
createNode groupId -n "groupId35";
	rename -uid "51FBD1CF-4F32-6296-0906-BD947FE96626";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D430F08F-4881-B916-6E22-2BB28DAA6EDA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:72]" "f[74:111]";
createNode standardSurface -n "typeStandardSurface2";
	rename -uid "ED8FCCAC-46AA-6D8F-1550-B089BCF53164";
	setAttr ".bc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeStandardSurface2SG";
	rename -uid "69282BF9-4BA0-DCE8-138D-DB96812DB91F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "88001468-4657-CC43-A02C-C6A803407396";
createNode polyCube -n "polyCube2";
	rename -uid "C1029BAF-4D03-34ED-8F0F-E6AFDDDAC1EE";
	setAttr ".cuv" 4;
createNode standardSurface -n "MI_AspectRatio";
	rename -uid "9B663235-48B3-D3F0-68A9-7AB937533F94";
	setAttr ".bc" -type "float3" 0.39520001 0.80000001 0.7532928 ;
	setAttr ".sr" 0.80000001192092896;
	setAttr ".t" 0.69999998807907104;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "3686B175-410C-6106-BFAE-B8B3B0B95778";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "685E2F63-4C23-A7EC-03B1-338BC56FACB5";
createNode standardSurface -n "standardSurface3";
	rename -uid "204B600B-437D-352E-5685-BABC7BB9444E";
	setAttr ".bc" -type "float3" 0.80000001 0.26231056 0.24080001 ;
	setAttr ".sr" 0.80000001192092896;
	setAttr ".t" 0.69999998807907104;
createNode shadingEngine -n "standardSurface3SG";
	rename -uid "714E8D17-466D-8818-FBE2-99837DD9897B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "B5473FD4-4F9E-14DF-ADDA-FF8ACF9C37DB";
createNode standardSurface -n "standardSurface4";
	rename -uid "0F083881-46EF-E550-D296-8BBB9EC288CF";
	setAttr ".bc" -type "float3" 0.37833554 0.80000001 0.34320003 ;
	setAttr ".sr" 0.80000001192092896;
	setAttr ".t" 0.69999998807907104;
createNode shadingEngine -n "standardSurface4SG";
	rename -uid "39FD76C3-4604-B4C0-25C6-7685BFB04173";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "C7B6738E-4762-EA22-4048-8EBE77BB9944";
createNode groupId -n "groupId37";
	rename -uid "4BD23791-42AC-4FC5-0315-C9BD15CC49E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "0DE072C3-4D29-3D63-99DF-55859B1DC036";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit10";
	rename -uid "4A8EEDB9-437F-26DD-CEE7-BFB22085BC40";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483635 -2147483633 -2147483603 -2147483605 -2147483617 -2147483615 
		-2147483599 -2147483601 -2147483624 -2147483622 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "DC05E76B-4B43-560D-8028-94BCFFAC76C2";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 11 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "shellDeformer1.rotationPivotPointsPP" "displayPoints1.inPointPositionsPP[0]"
		;
connectAttr "shellDeformer1.scalePivotPointsPP" "displayPoints1.inPointPositionsPP[1]"
		;
connectAttr "shellDeformer1.og[0]" "typeMeshShape1.i";
connectAttr "polySplitRing2.out" "Board_griddedShape.i";
connectAttr "groupId35.id" "SM_Board1Shape.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Board1Shape.iog.og[7].gco";
connectAttr "groupId36.id" "SM_Board1Shape.iog.og[8].gid";
connectAttr "lambert4SG.mwc" "SM_Board1Shape.iog.og[8].gco";
connectAttr "polySplit7.out" "SM_Board1Shape.i";
connectAttr "shellDeformer2.og[0]" "typeMeshShape2.i";
connectAttr "shellDeformer2.rotationPivotPointsPP" "displayPoints2.inPointPositionsPP[0]"
		;
connectAttr "shellDeformer2.scalePivotPointsPP" "displayPoints2.inPointPositionsPP[1]"
		;
connectAttr "groupId37.id" "SM_BoardShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_BoardShape.iog.og[0].gco";
connectAttr "groupId38.id" "SM_BoardShape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "SM_BoardShape.iog.og[1].gco";
connectAttr "polySplit10.out" "|SM_Button_WASD|SM_Button_WASDShape.i";
connectAttr "polyCube2.out" "pCubeShape4.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "MI_Snake_Body.oc" "lambert2SG.ss";
connectAttr "SM_Snake_Body_Shape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MI_Snake_Body.msg" "materialInfo1.m";
connectAttr "MI_Button.oc" "lambert3SG.ss";
connectAttr "SM_Button_Ability_01Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_PauseShape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_02Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_03Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_04Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_05Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_06Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_07Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_08Shape.iog" "lambert3SG.dsm" -na;
connectAttr "|wasd_02|SM_Button_WASD|SM_Button_WASDShape.iog" "lambert3SG.dsm" -na
		;
connectAttr "|SM_Button_WASD|SM_Button_WASDShape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_12Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_13Shape.iog" "lambert3SG.dsm" -na;
connectAttr "SM_Button_Ability_14Shape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "MI_Button.msg" "materialInfo2.m";
connectAttr "typeStandardSurface.oc" "typeStandardSurfaceSG.ss";
connectAttr "typeMeshShape1.iog" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeStandardSurfaceSG.msg" "materialInfo3.sg";
connectAttr "typeStandardSurface.msg" "materialInfo3.m";
connectAttr "MI_Board.oc" "lambert4SG.ss";
connectAttr "groupId36.msg" "lambert4SG.gn" -na;
connectAttr "groupId38.msg" "lambert4SG.gn" -na;
connectAttr "SM_Board1Shape.iog.og[8]" "lambert4SG.dsm" -na;
connectAttr "SM_BoardShape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "MI_Board.msg" "materialInfo4.m";
connectAttr "polyAutoProj1.out" "shellDeformer1.ip[0].ig";
connectAttr "type1.vertsPerChar" "shellDeformer1.vertsPerChar";
connectAttr ":time1.o" "shellDeformer1.ti";
connectAttr "type1.grouping" "shellDeformer1.grouping";
connectAttr "typeExtrude1.vertexGroupIds" "shellDeformer1.vertexGroupIds";
connectAttr "type1.animationMessage" "shellDeformer1.typeMessage";
connectAttr "polyRemesh1.out" "polyAutoProj1.ip";
connectAttr "typeMeshShape1.wm" "polyAutoProj1.mp";
connectAttr "polySoftEdge1.out" "polyRemesh1.ip";
connectAttr "typeMeshShape1.wm" "polyRemesh1.mp";
connectAttr "typeExtrude1.capComponents" "polyRemesh1.ics";
connectAttr "type1.remeshMessage" "polyRemesh1.typeMessage";
connectAttr "vectorAdjust1.og[0]" "polySoftEdge1.ip";
connectAttr "typeMeshShape1.wm" "polySoftEdge1.mp";
connectAttr "typeExtrude1.out" "vectorAdjust1.ip[0].ig";
connectAttr "type1.grouping" "vectorAdjust1.grouping";
connectAttr "type1.manipulatorTransforms" "vectorAdjust1.manipulatorTransforms";
connectAttr "type1.alignmentMode" "vectorAdjust1.alignmentMode";
connectAttr "type1.vertsPerChar" "vectorAdjust1.vertsPerChar";
connectAttr "typeExtrude1.vertexGroupIds" "vectorAdjust1.vertexGroupIds";
connectAttr "type1.vertsPerChar" "typeExtrude1.vertsPerChar";
connectAttr "groupid1.id" "typeExtrude1.cid";
connectAttr "groupid2.id" "typeExtrude1.bid";
connectAttr "groupid3.id" "typeExtrude1.eid";
connectAttr "type1.outputMesh" "typeExtrude1.in";
connectAttr "groupId1.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId2.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId3.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId4.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId5.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId6.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId7.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId8.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId9.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId10.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId31.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId32.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId33.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId34.id" "typeExtrude1.charGroupId" -na;
connectAttr "type1.extrudeMessage" "typeExtrude1.typeMessage";
connectAttr "typeMesh1.msg" "type1.transformMessage";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "Board_griddedShape.wm" "polySplitRing2.mp";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "Board_griddedShape.wm" "polySplitRing1.mp";
connectAttr "typeMesh2.msg" "type2.transformMessage";
connectAttr "type2.vertsPerChar" "typeExtrude2.vertsPerChar";
connectAttr "groupid4.id" "typeExtrude2.cid";
connectAttr "groupid5.id" "typeExtrude2.bid";
connectAttr "groupid6.id" "typeExtrude2.eid";
connectAttr "type2.outputMesh" "typeExtrude2.in";
connectAttr "type2.extrudeMessage" "typeExtrude2.typeMessage";
connectAttr "groupId18.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId19.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId20.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId21.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId22.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId23.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId24.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId25.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId26.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId27.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId28.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId29.id" "typeExtrude2.charGroupId" -na;
connectAttr "groupId30.id" "typeExtrude2.charGroupId" -na;
connectAttr "typeStandardSurface1.oc" "typeStandardSurface1SG.ss";
connectAttr "typeMeshShape2.iog" "typeStandardSurface1SG.dsm" -na;
connectAttr "typeStandardSurface1SG.msg" "materialInfo5.sg";
connectAttr "typeStandardSurface1.msg" "materialInfo5.m";
connectAttr "typeExtrude2.out" "vectorAdjust2.ip[0].ig";
connectAttr "type2.grouping" "vectorAdjust2.grouping";
connectAttr "type2.manipulatorTransforms" "vectorAdjust2.manipulatorTransforms";
connectAttr "type2.alignmentMode" "vectorAdjust2.alignmentMode";
connectAttr "type2.vertsPerChar" "vectorAdjust2.vertsPerChar";
connectAttr "typeExtrude2.vertexGroupIds" "vectorAdjust2.vertexGroupIds";
connectAttr "vectorAdjust2.og[0]" "polySoftEdge2.ip";
connectAttr "typeMeshShape2.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polyRemesh2.ip";
connectAttr "typeMeshShape2.wm" "polyRemesh2.mp";
connectAttr "type2.remeshMessage" "polyRemesh2.typeMessage";
connectAttr "typeExtrude2.capComponents" "polyRemesh2.ics";
connectAttr "polyRemesh2.out" "polyAutoProj2.ip";
connectAttr "typeMeshShape2.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "shellDeformer2.ip[0].ig";
connectAttr "type2.vertsPerChar" "shellDeformer2.vertsPerChar";
connectAttr ":time1.o" "shellDeformer2.ti";
connectAttr "type2.grouping" "shellDeformer2.grouping";
connectAttr "type2.animationMessage" "shellDeformer2.typeMessage";
connectAttr "typeExtrude2.vertexGroupIds" "shellDeformer2.vertexGroupIds";
connectAttr "groupParts2.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit7.ip";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId36.id" "groupParts2.gi";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId35.id" "groupParts1.gi";
connectAttr "typeStandardSurface2.oc" "typeStandardSurface2SG.ss";
connectAttr "typeStandardSurface2SG.msg" "materialInfo6.sg";
connectAttr "typeStandardSurface2.msg" "materialInfo6.m";
connectAttr "MI_AspectRatio.oc" "standardSurface2SG.ss";
connectAttr "pCubeShape4.iog" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo7.sg";
connectAttr "MI_AspectRatio.msg" "materialInfo7.m";
connectAttr "standardSurface3.oc" "standardSurface3SG.ss";
connectAttr "pCubeShape17.iog" "standardSurface3SG.dsm" -na;
connectAttr "standardSurface3SG.msg" "materialInfo8.sg";
connectAttr "standardSurface3.msg" "materialInfo8.m";
connectAttr "standardSurface4.oc" "standardSurface4SG.ss";
connectAttr "pCubeShape18.iog" "standardSurface4SG.dsm" -na;
connectAttr "standardSurface4SG.msg" "materialInfo9.sg";
connectAttr "standardSurface4.msg" "materialInfo9.m";
connectAttr "|SM_Button_WASD|polySurfaceShape3.o" "polySplit10.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "typeStandardSurfaceSG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "typeStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "typeStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "MI_Snake_Body.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Button.msg" ":defaultShaderList1.s" -na;
connectAttr "typeStandardSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_Board.msg" ":defaultShaderList1.s" -na;
connectAttr "typeStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "typeStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "MI_AspectRatio.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Board_griddedShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube9|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube10|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube11|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube12|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube13|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube14|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube15|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Board1Shape.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "SM_BoardShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
// End of map_art.ma
