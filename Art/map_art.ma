//Maya ASCII 2024 scene
//Name: map_art.ma
//Last modified: Mon, Jan 27, 2025 11:49:52 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "type" -nodeType "shellDeformer" -nodeType "vectorAdjust" -nodeType "typeExtrude"
		 -nodeType "displayPoints" "Type" "2.0a";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "AE6FC4A4-4BB8-023B-970C-D9899C4BB0FF";
createNode transform -s -n "persp";
	rename -uid "E10842A9-48CD-9231-DA3E-B9AA5EB59854";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.9245660016138508 112.84771091040079 19.488591324887118 ;
	setAttr ".r" -type "double3" -75.338352729810325 -9.7999999998267793 0 ;
	setAttr ".rp" -type "double3" -4.2632564145606011e-14 1.2434497875801753e-14 2.8421709430404007e-14 ;
	setAttr ".rpt" -type "double3" 3.7291590714076654e-14 1.0931058047158947e-14 1.8630876641683207e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3B968698-415A-80C8-B7DF-3FB008A3CA17";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 98.326460067558017;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2 0.5 -2 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "815C9381-4BC4-CF01-6ED8-F689AAFB4239";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7135245060134565 1000.2710499367888 -0.39053588310068399 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "193F5F24-4EAF-8C05-F60E-00A730488E22";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.77104993678881;
	setAttr ".ow" 61.397780941999187;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 2 0.5 -2 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "129A03D4-402E-17B6-60FA-59ACB433E2C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.162307426044034 1.3873582909223883 1000.4269230742806 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D8BA775C-4C5D-E7D5-751C-B4BFC0C47B14";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1012.0373031300559;
	setAttr ".ow" 30.987675859997108;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 16.311365651213109 0 -11.610380055775327 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0BEDF440-47D1-D8CC-C5BC-40AF5D312102";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.2276572855807 2.1722493037312223 18.820583582132894 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "556DBF14-4E9F-7A54-C866-3FA9E5019E52";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.7276572855807;
	setAttr ".ow" 6.4018113039126403;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -3.5 0.5 16 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "persp1";
	rename -uid "01939707-4B50-67FC-0C10-F49A4B474CE9";
	setAttr ".t" -type "double3" 0 127.5374040061124 0 ;
	setAttr ".r" -type "double3" -90 0 2.9822242210656445e-16 ;
createNode camera -n "perspShape1" -p "persp1";
	rename -uid "D9E0BD3A-4F17-44D3-AE9D-71B0E61D5DDF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 90;
	setAttr ".coi" 68.154892345587299;
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
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0.375 0 0.625 0 0.375
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
		 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75;
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
		mu 0 4 59 58 93 92
		f 4 113 143 -154 -151
		mu 0 4 58 66 94 93
		f 4 -115 151 154 -145
		mu 0 4 66 67 95 94
		f 4 -86 155 157 -157
		mu 0 4 67 59 92 95
		f 4 81 158 -160 -156
		mu 0 4 71 70 97 96
		f 4 101 160 -162 -159
		mu 0 4 70 62 98 97
		f 4 -83 156 162 -161
		mu 0 4 62 63 99 98
		f 4 -110 163 165 -165
		mu 0 4 63 71 96 99
		f 4 105 166 -168 -164
		mu 0 4 75 74 101 100
		f 4 93 168 -170 -167
		mu 0 4 74 50 88 101
		f 4 -107 164 170 -169
		mu 0 4 51 75 100 91
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
		mu 0 4 93 94 116 115
		f 4 -155 196 199 -189
		mu 0 4 94 95 117 116
		f 4 159 203 -205 -201
		mu 0 4 96 97 119 118
		f 4 -163 201 207 -206
		mu 0 4 98 99 121 120
		f 4 167 211 -213 -209
		mu 0 4 100 101 123 122
		f 4 -171 209 215 -214
		mu 0 4 91 100 122 113
		f 4 192 217 -210 -217
		mu 0 4 90 112 122 100
		f 4 -194 218 210 -218
		mu 0 4 112 111 119 118
		f 4 -191 219 208 -219
		mu 0 4 111 89 100 122
		f 4 148 216 -166 -220
		mu 0 4 89 90 99 96
		f 4 -153 221 161 -221
		mu 0 4 92 93 97 98
		f 4 195 222 -204 -222
		mu 0 4 93 115 119 97
		f 4 197 223 -207 -223
		mu 0 4 123 122 117 116
		f 4 -197 220 205 -224
		mu 0 4 117 95 98 120
		f 4 179 225 -212 -225
		mu 0 4 84 106 123 101
		f 4 -187 226 -215 -226
		mu 0 4 106 109 121 120
		f 4 -185 227 213 -227
		mu 0 4 109 87 91 113
		f 4 142 224 169 -228
		mu 0 4 87 84 101 88
		f 4 -130 229 -158 -229
		mu 0 4 80 81 95 92
		f 4 171 230 -202 -230
		mu 0 4 81 103 121 99
		f 4 173 231 202 -231
		mu 0 4 103 102 115 114
		f 4 -173 228 200 -232
		mu 0 4 102 80 96 118;
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
	setAttr -s 12 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.16727087646722794 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube3";
	rename -uid "B7A189DE-492C-E214-AF4C-CCBC1F2C5261";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[9]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5:6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.084541753 0.125 0.084541753 0.375 0.6654582
		 0.625 0.6654582 0.875 0.084541753 0.625 0.084541753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -1 0 0 -1 0 0 1 0 0 1 0 
		0 1 0 0 1 0 0 -1 0 0 -1 0 0 -0.5 0 0 -0.5 0 0 -0.5 0 0 -0.5 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.38622943 1.5 0.38622943
		 0.38622943 1.5 0.38622943 -0.38622943 1.5 -0.38622943 0.38622943 1.5 -0.38622943
		 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5 0.5 0 0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 11 0 2 4 0
		 3 5 0 4 9 0 5 10 0 6 0 0 7 1 0 8 2 0 9 6 0 10 7 0 11 3 0 8 9 0 9 10 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 19 -5
		mu 0 4 0 1 19 14
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 17 14 -4 -14
		mu 0 4 16 17 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -15 18 -6
		mu 0 4 1 10 18 19
		f 4 10 4 16 13
		mu 0 4 12 0 14 15
		f 4 -17 12 6 8
		mu 0 4 15 14 2 13
		f 4 2 9 -18 -9
		mu 0 4 4 5 17 16
		f 4 -19 -10 -8 -16
		mu 0 4 19 18 11 3
		f 4 -20 15 -2 -13
		mu 0 4 14 19 3 2;
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
createNode transform -n "pCube1";
	rename -uid "0E05B6F9-4A42-DF76-F103-15B165F0EB66";
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".s" -type "double3" 23 1 23 ;
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
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
createNode transform -n "pCube16";
	rename -uid "C151E68F-4F1D-372F-D302-27951F8F1E8C";
	setAttr ".t" -type "double3" 15.5 1.5 -5.5 ;
	setAttr ".s" -type "double3" 4 0.8 4 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube17";
	rename -uid "D519A8B7-4289-4021-8B8B-5DAFB599AA8B";
	setAttr ".t" -type "double3" 15.5 1.5 -0.5 ;
	setAttr ".s" -type "double3" 4 0.8 4 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube18";
	rename -uid "DC1AC1E1-4ACB-4EA5-2FA9-1BA4726BEBDE";
	setAttr ".t" -type "double3" 15.5 1.5 4.5 ;
	setAttr ".s" -type "double3" 4 0.8 4 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube19";
	rename -uid "B0A1C08F-49EF-54B9-78D6-10BF60789945";
	setAttr ".t" -type "double3" 15.5 1.5 9.5 ;
	setAttr ".s" -type "double3" 4 0.8 4 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube20";
	rename -uid "0755B518-451C-3A58-77B4-6EAB28328205";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "3FE0FF2B-413B-C7A5-BEB4-FFAA214D1ECD";
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
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0.375 0 0.625 0 0.375
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
		 0.75 0.375 0.5 0.375 0.5 0.375 0.75 0.375 0.75 0.375 0.5 0.375 0.5 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".pt";
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
	setAttr ".pt[24]" -type "float3" 1.7763568e-15 1 0 ;
	setAttr ".pt[25]" -type "float3" 1.7763568e-15 0 0 ;
	setAttr ".pt[26]" -type "float3" 1.7763568e-15 1 0 ;
	setAttr ".pt[27]" -type "float3" 1.7763568e-15 0 0 ;
	setAttr ".pt[28]" -type "float3" -4 1 0 ;
	setAttr ".pt[29]" -type "float3" -4 0 0 ;
	setAttr ".pt[30]" -type "float3" -1.7763568e-15 0 0 ;
	setAttr ".pt[31]" -type "float3" -1.7763568e-15 1 0 ;
	setAttr ".pt[32]" -type "float3" -2 1 0 ;
	setAttr ".pt[33]" -type "float3" -2 0 0 ;
	setAttr ".pt[34]" -type "float3" -2 0 0 ;
	setAttr ".pt[35]" -type "float3" -2 1 0 ;
	setAttr ".pt[36]" -type "float3" 0 1 0 ;
	setAttr ".pt[38]" -type "float3" 0 0 -4.5 ;
	setAttr ".pt[39]" -type "float3" 0 1 -4.5 ;
	setAttr ".pt[40]" -type "float3" -1 1 0 ;
	setAttr ".pt[41]" -type "float3" -1 0 0 ;
	setAttr ".pt[42]" -type "float3" -1 0 0 ;
	setAttr ".pt[43]" -type "float3" -1 1 0 ;
	setAttr ".pt[44]" -type "float3" -3 1 1.7763568e-15 ;
	setAttr ".pt[45]" -type "float3" -3 0 1.7763568e-15 ;
	setAttr ".pt[46]" -type "float3" -3 0 1.7763568e-15 ;
	setAttr ".pt[47]" -type "float3" -3 1 1.7763568e-15 ;
	setAttr ".pt[48]" -type "float3" -1 1 0 ;
	setAttr ".pt[49]" -type "float3" -1 0 0 ;
	setAttr ".pt[50]" -type "float3" -1 0 0 ;
	setAttr ".pt[51]" -type "float3" -1 1 0 ;
	setAttr ".pt[52]" -type "float3" -3 1 1.7763568e-15 ;
	setAttr ".pt[53]" -type "float3" -3 0 1.7763568e-15 ;
	setAttr ".pt[54]" -type "float3" -3 0 1.7763568e-15 ;
	setAttr ".pt[55]" -type "float3" -3 1 1.7763568e-15 ;
	setAttr ".pt[56]" -type "float3" -2 1 0 ;
	setAttr ".pt[57]" -type "float3" -2 0 0 ;
	setAttr ".pt[58]" -type "float3" -2 0 0 ;
	setAttr ".pt[59]" -type "float3" -2 1 0 ;
	setAttr ".pt[60]" -type "float3" -2 1 0 ;
	setAttr ".pt[61]" -type "float3" -2 0 0 ;
	setAttr ".pt[62]" -type "float3" -2 0 0 ;
	setAttr ".pt[63]" -type "float3" -2 1 0 ;
	setAttr ".pt[64]" -type "float3" 3.5527137e-15 1 -1 ;
	setAttr ".pt[65]" -type "float3" 3.5527137e-15 0 -1 ;
	setAttr ".pt[66]" -type "float3" 3.5527137e-15 1 -1 ;
	setAttr ".pt[67]" -type "float3" 3.5527137e-15 0 -1 ;
	setAttr ".pt[68]" -type "float3" -4 0 -1 ;
	setAttr ".pt[69]" -type "float3" -3.5527137e-15 0 -1 ;
	setAttr ".pt[70]" -type "float3" -3.5527137e-15 1 -1 ;
	setAttr ".pt[71]" -type "float3" -4 1 -1 ;
	setAttr ".pt[72]" -type "float3" -2 0 -1 ;
	setAttr ".pt[73]" -type "float3" -2 1 -1 ;
	setAttr ".pt[74]" -type "float3" -2 0 -1 ;
	setAttr ".pt[75]" -type "float3" -2 1 -1 ;
	setAttr ".pt[76]" -type "float3" -2 0 -1 ;
	setAttr ".pt[77]" -type "float3" -2 1 -1 ;
	setAttr ".pt[78]" -type "float3" -1 0 -1 ;
	setAttr ".pt[79]" -type "float3" -1 1 -1 ;
	setAttr ".pt[80]" -type "float3" -1 0 -1 ;
	setAttr ".pt[81]" -type "float3" -1 1 -1 ;
	setAttr ".pt[82]" -type "float3" -3 0 -1 ;
	setAttr ".pt[83]" -type "float3" -3 1 -1 ;
	setAttr ".pt[84]" -type "float3" -3 0 -1 ;
	setAttr ".pt[85]" -type "float3" -3 1 -1 ;
	setAttr ".pt[86]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[87]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[88]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[90]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[91]" -type "float3" 0 0 -0.42301178 ;
	setAttr ".pt[92]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[93]" -type "float3" 0 1 -0.42301178 ;
	setAttr ".pt[94]" -type "float3" -2 0 -0.42301178 ;
	setAttr ".pt[95]" -type "float3" -2 1 -0.42301178 ;
	setAttr ".pt[96]" -type "float3" -2 0 -0.42301178 ;
	setAttr ".pt[97]" -type "float3" -2 1 -0.42301178 ;
	setAttr ".pt[98]" -type "float3" -2 0 -0.42301178 ;
	setAttr ".pt[99]" -type "float3" -2 1 -0.42301178 ;
	setAttr ".pt[100]" -type "float3" -1 0 -0.42301178 ;
	setAttr ".pt[101]" -type "float3" -1 1 -0.42301178 ;
	setAttr ".pt[102]" -type "float3" -1 0 -0.42301178 ;
	setAttr ".pt[103]" -type "float3" -1 1 -0.42301178 ;
	setAttr ".pt[104]" -type "float3" -3 0 -0.42301178 ;
	setAttr ".pt[105]" -type "float3" -3 1 -0.42301178 ;
	setAttr ".pt[106]" -type "float3" -3 0 -0.42301178 ;
	setAttr ".pt[107]" -type "float3" -3 1 -0.42301178 ;
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
		mu 0 4 59 58 93 92
		f 4 113 143 -154 -151
		mu 0 4 58 66 94 93
		f 4 -115 151 154 -145
		mu 0 4 66 67 95 94
		f 4 -86 155 157 -157
		mu 0 4 67 59 92 95
		f 4 81 158 -160 -156
		mu 0 4 71 70 97 96
		f 4 101 160 -162 -159
		mu 0 4 70 62 98 97
		f 4 -83 156 162 -161
		mu 0 4 62 63 99 98
		f 4 -110 163 165 -165
		mu 0 4 63 71 96 99
		f 4 105 166 -168 -164
		mu 0 4 75 74 101 100
		f 4 93 168 -170 -167
		mu 0 4 74 50 88 101
		f 4 -107 164 170 -169
		mu 0 4 51 75 100 91
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
		mu 0 4 93 94 116 115
		f 4 -155 196 199 -189
		mu 0 4 94 95 117 116
		f 4 159 203 -205 -201
		mu 0 4 96 97 119 118
		f 4 -163 201 207 -206
		mu 0 4 98 99 121 120
		f 4 167 211 -213 -209
		mu 0 4 100 101 123 122
		f 4 -171 209 215 -214
		mu 0 4 91 100 122 113
		f 4 192 217 -210 -217
		mu 0 4 90 112 122 100
		f 4 -194 218 210 -218
		mu 0 4 112 111 119 118
		f 4 -191 219 208 -219
		mu 0 4 111 89 100 122
		f 4 148 216 -166 -220
		mu 0 4 89 90 99 96
		f 4 -153 221 161 -221
		mu 0 4 92 93 97 98
		f 4 195 222 -204 -222
		mu 0 4 93 115 119 97
		f 4 197 223 -207 -223
		mu 0 4 123 122 117 116
		f 4 -197 220 205 -224
		mu 0 4 117 95 98 120
		f 4 179 225 -212 -225
		mu 0 4 84 106 123 101
		f 4 -187 226 -215 -226
		mu 0 4 106 109 121 120
		f 4 -185 227 213 -227
		mu 0 4 109 87 91 113
		f 4 142 224 169 -228
		mu 0 4 87 84 101 88
		f 4 -130 229 -158 -229
		mu 0 4 80 81 95 92
		f 4 171 230 -202 -230
		mu 0 4 81 103 121 99
		f 4 173 231 202 -231
		mu 0 4 103 102 115 114
		f 4 -173 228 200 -232
		mu 0 4 102 80 96 118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		40 0 
		45 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21";
	rename -uid "2C05E3A6-4124-A4ED-24E9-9393146D85D0";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "1BE05DAF-4DB9-1FF3-6AC3-6E8A0723576D";
	setAttr -k off ".v";
	setAttr -s 5 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube22";
	rename -uid "0CEDB101-4FEA-4554-CF68-AE8985102E3E";
	setAttr ".t" -type "double3" 0 0.5 -1 ;
createNode transform -n "pCube23";
	rename -uid "93726D19-417F-E53D-C976-73AA6CDA5F56";
	setAttr ".t" -type "double3" 0 0.5 -2 ;
createNode transform -n "pCube24";
	rename -uid "53D81C25-4D59-F754-C4F1-4A99C92BD7FD";
	setAttr ".t" -type "double3" 1 0.5 -2 ;
createNode transform -n "pCube25";
	rename -uid "D7DDD177-493F-5A4F-783E-80956BFF0EB0";
	setAttr ".t" -type "double3" 2 0.5 -2 ;
createNode transform -n "pCube26";
	rename -uid "0064FC79-497D-8DAF-B6FA-69AE63EF89A1";
	setAttr ".t" -type "double3" 0 -1.5 0 ;
createNode mesh -n "pCubeShape22" -p "pCube26";
	rename -uid "19ECD3FE-4862-8967-5C1B-61834E2E85A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -25 0.5 14 25 0.5 14 -25 
		0 14 25 0 14 -25 0 -14 25 0 -14 -25 0.5 -14 25 0.5 -14;
createNode transform -n "pCube27";
	rename -uid "04AFC395-45C9-7533-2048-B58499336373";
	setAttr ".t" -type "double3" 2 0.5 -3 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "75294788-4748-3930-C6FD-2EBD426536E2";
	setAttr -k off ".v";
	setAttr -s 5 ".iog";
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
createNode transform -n "typeMesh1";
	rename -uid "8CFCDA8F-420B-E586-7A3D-7CA97FB2E52E";
	setAttr ".t" -type "double3" -23.656715673983239 2 -8.3412022553155207 ;
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
createNode transform -n "transform1";
	rename -uid "A7A2B577-4CD7-F082-167F-D3B3698E3704";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints1" -p "transform1";
	rename -uid "735288B9-47A5-4CE8-E4A5-A485EBDBB056";
	setAttr -k off ".v";
	setAttr -s 2 ".inPointPositionsPP";
	setAttr ".hio" yes;
createNode transform -n "pCube28";
	rename -uid "EA8E1370-49E0-6095-43E0-8CBB125CF483";
	setAttr ".t" -type "double3" 15.5 1.5 -10.5 ;
	setAttr ".s" -type "double3" 4 3 4 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "5D89E43B-4B72-70C8-1340-72ADE1A07DA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube9" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube10" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube11" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube12" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube13" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube14" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube15" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube16" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube17" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube18" ;
parent -s -nc -r -add "|group1|pCube3|pCubeShape3" "pCube19" ;
parent -s -nc -r -add "|group1|pCube3|polySurfaceShape1" "pCube12" ;
parent -s -nc -r -add "|group1|pCube3|polySurfaceShape1" "pCube16" ;
parent -s -nc -r -add "|pCube21|pCubeShape21" "pCube22" ;
parent -s -nc -r -add "|pCube21|pCubeShape21" "pCube23" ;
parent -s -nc -r -add "|pCube21|pCubeShape21" "pCube24" ;
parent -s -nc -r -add "|pCube21|pCubeShape21" "pCube25" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0AE375D3-4991-98FB-E7C0-4387E8323D6C";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B9DA29B8-4FE5-0660-003C-BF89308317F7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E1E2EFBC-4EDD-C99E-7F57-9F9C34A75121";
createNode displayLayerManager -n "layerManager";
	rename -uid "CBE8964E-4DEA-5724-8767-CE919443359F";
createNode displayLayer -n "defaultLayer";
	rename -uid "B9773377-4771-5C18-B221-F3AE58E10143";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C0CE7CA7-476C-99D4-42FD-2DAB67A9C2E1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6FA7BC5E-4A9C-F8CD-69A9-E196C0F98929";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "193619B6-43F2-02E5-75E4-EAAE798162B6";
	setAttr ".cuv" 4;
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "31710887-415D-08CA-9885-2EB975BEA756";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1959\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel6\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel6\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2554\n            -height 1332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1959\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode polySplit -n "polySplit1";
	rename -uid "9982FD48-4CC2-340B-5E76-239DEB2FDFEB";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483636 -2147483633 -2147483639 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "F4831BB6-4B1F-13EA-E338-46B263D870AF";
	setAttr ".ics" -type "componentList" 1 "e[24:27]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "F804EF29-45A3-159C-2E09-47AC605F9197";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.017108027 0 0.017108027
		 0.017108027 0 -0.017108027 -0.017108027 0 -0.017108027 -0.017108027 0 0.017108027;
createNode polySplit -n "polySplit2";
	rename -uid "60F744C5-4104-688E-9BC0-D0A0E7B4F02F";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483630 -2147483647 -2147483646 -2147483632 -2147483645 
		-2147483648 -2147483645 -2147483632 -2147483646 -2147483647 -2147483630 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "41FB6916-486A-2F41-5133-A084FF956D29";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483648 -2147483627 -2147483647 -2147483646 -2147483632 -2147483645 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "D558AE1C-4CE0-4EC6-CFEB-E695E3E45A4D";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483628 -2147483630 -2147483626 -2147483625 -2147483624 -2147483623 
		-2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "F1FFC3FE-4087-8D72-FB02-1F895AF385D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1:2]" "e[6:8]" "e[11]" "e[14]" "e[19]" "e[22:23]" "e[33:34]" "e[45:46]";
	setAttr ".ix" -type "matrix" 5 0 0 0 0 1 0 0 0 0 5 0 -9 0.5 16 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.17999999999999994;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "9FBE5F8D-4680-A6E0-3C03-BB808B7C2AFE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[14]" -type "float3" 0 -0.17545015 0.0063894754 ;
	setAttr ".tk[15]" -type "float3" 0 -0.17545015 -0.0063894754 ;
	setAttr ".tk[20]" -type "float3" 0 -0.11940732 0.0042914371 ;
	setAttr ".tk[21]" -type "float3" 0 -0.11940732 -0.0042914371 ;
	setAttr ".tk[26]" -type "float3" 0 -0.11940732 0.0042914371 ;
	setAttr ".tk[27]" -type "float3" 0 -0.11940732 -0.0042914371 ;
createNode polyCube -n "polyCube2";
	rename -uid "A6A48433-4559-EBB9-3257-0486C2825F72";
	setAttr ".cuv" 4;
createNode lambert -n "lambert2";
	rename -uid "5B7E04F3-44B4-1EB2-CC95-97B292083014";
	setAttr ".c" -type "float3" 0.038458288 0.5 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7AB88BBD-4472-1E39-97DE-9BA6C917786E";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "5B63F612-40B9-1F9E-2539-1792FCDD9645";
createNode polyBevel3 -n "polyBevel2";
	rename -uid "25F2F6BB-4026-C7CE-526A-978D795AC0A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube3";
	rename -uid "F440C277-4403-02D9-F504-C6A2D98FF1BE";
	setAttr ".cuv" 4;
createNode lambert -n "lambert3";
	rename -uid "40330096-4B15-9E45-94CD-3182FD4D8695";
	setAttr ".c" -type "float3" 0.13095239 0.13095239 0.13095239 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "15BD8B6E-4B4D-7D66-45D2-798DC3DA3D22";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F97C6992-4E15-0E57-4931-228F10E48DA0";
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
	setAttr -s 10 ".charGroupId";
createNode groupId -n "groupid1";
	rename -uid "6B887468-4B8D-D6AE-73D2-5B91BDB62005";
createNode groupId -n "groupid2";
	rename -uid "020C13BB-4BEA-D901-2ED8-CE8C4F5CEB02";
createNode groupId -n "groupid3";
	rename -uid "9D7085CC-4A27-8A85-0F8E-E8B3F1A46A7B";
createNode standardSurface -n "typeStandardSurface";
	rename -uid "2453C2A2-42BC-88D9-2C71-7395F7AD1E6B";
	setAttr ".bc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeStandardSurfaceSG";
	rename -uid "580066EB-4867-3065-72AC-C8B5B3957ED3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "DD419E52-43C8-12EC-494D-638B42068E02";
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
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "A5F18E23-431F-E797-2ABD-CB85C47D6597";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyRemesh -n "polyRemesh1";
	rename -uid "FB69F340-4FDF-677A-FF35-D99FD2D6FFFB";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".nds" 1;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".tsb" no;
	setAttr ".ipt" 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "88417067-4BAA-200C-19AA-3E84BDF7AF53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode shellDeformer -n "shellDeformer1";
	rename -uid "5CC20CE3-4936-B3EE-4FDE-67A698775ECD";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
createNode groupId -n "groupId1";
	rename -uid "D43BE2C2-48C7-EB23-7FCE-0E8D9DBCD33A";
createNode groupId -n "groupId2";
	rename -uid "525E8901-4319-6638-7504-CF8BEF531FF3";
createNode groupId -n "groupId3";
	rename -uid "8970D684-4605-45F8-ADCF-B489B18D30C8";
createNode groupId -n "groupId4";
	rename -uid "62C104A9-4CC5-95BD-8690-4E8C58B2C9D2";
createNode groupId -n "groupId5";
	rename -uid "EFAC173B-4187-5F97-D59E-9083674677C1";
createNode groupId -n "groupId6";
	rename -uid "0E905961-4535-24A3-3822-6D86F7E31382";
createNode groupId -n "groupId7";
	rename -uid "7BD568B8-4F35-EA9B-55C0-20B0E43EAA15";
createNode groupId -n "groupId8";
	rename -uid "90FF4E7E-4F08-67A0-3093-D58BA9A78269";
createNode groupId -n "groupId9";
	rename -uid "9F1E7960-4EB3-4F10-B3AC-72B4E477B032";
createNode groupId -n "groupId10";
	rename -uid "4D233A68-4454-E829-4CC7-B1A02653D39A";
createNode polyCube -n "polyCube4";
	rename -uid "DB5FC058-4A2B-4421-5680-95B55E7186FD";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "891FF928-492B-05D5-201D-A0AF291A3A2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:11]";
	setAttr ".ix" -type "matrix" 4 0 0 0 0 3 0 0 0 0 4 0 15.5 2 -10.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.089999999999999913;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "1971D9F6-4642-2138-4D8D-6F9591DB999D";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 11;
	setAttr ".unw" 11;
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
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
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
connectAttr "polyBevel1.out" "|group1|pCube3|pCubeShape3.i";
connectAttr "polySplitRing2.out" "pCubeShape1.i";
connectAttr "polyBevel2.out" "|pCube21|pCubeShape21.i";
connectAttr "polyCube3.out" "pCubeShape22.i";
connectAttr "shellDeformer1.og[0]" "typeMeshShape1.i";
connectAttr "shellDeformer1.rotationPivotPointsPP" "displayPoints1.inPointPositionsPP[0]"
		;
connectAttr "shellDeformer1.scalePivotPointsPP" "displayPoints1.inPointPositionsPP[1]"
		;
connectAttr "polyBevel3.out" "pCubeShape28.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "|group1|pCube3|polySurfaceShape1.o" "polySplit1.ip";
connectAttr "polyTweak1.out" "polyDelEdge1.ip";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polyDelEdge1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "|group1|pCube3|pCubeShape3.wm" "polyBevel1.mp";
connectAttr "polySplit4.out" "polyTweak2.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|pCube21|pCubeShape21.iog" "lambert2SG.dsm" -na;
connectAttr "|pCube22|pCubeShape21.iog" "lambert2SG.dsm" -na;
connectAttr "|pCube23|pCubeShape21.iog" "lambert2SG.dsm" -na;
connectAttr "|pCube24|pCubeShape21.iog" "lambert2SG.dsm" -na;
connectAttr "|pCube25|pCubeShape21.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape27.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "polyCube2.out" "polyBevel2.ip";
connectAttr "|pCube21|pCubeShape21.wm" "polyBevel2.mp";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "|pCube19|pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|pCube18|pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|pCube17|pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|pCube16|pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "typeMesh1.msg" "type1.transformMessage";
connectAttr "type1.vertsPerChar" "typeExtrude1.vertsPerChar";
connectAttr "groupid1.id" "typeExtrude1.cid";
connectAttr "groupid2.id" "typeExtrude1.bid";
connectAttr "groupid3.id" "typeExtrude1.eid";
connectAttr "type1.outputMesh" "typeExtrude1.in";
connectAttr "type1.extrudeMessage" "typeExtrude1.typeMessage";
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
connectAttr "typeStandardSurface.oc" "typeStandardSurfaceSG.ss";
connectAttr "typeMeshShape1.iog" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeStandardSurfaceSG.msg" "materialInfo3.sg";
connectAttr "typeStandardSurface.msg" "materialInfo3.m";
connectAttr "typeExtrude1.out" "vectorAdjust1.ip[0].ig";
connectAttr "type1.grouping" "vectorAdjust1.grouping";
connectAttr "type1.manipulatorTransforms" "vectorAdjust1.manipulatorTransforms";
connectAttr "type1.alignmentMode" "vectorAdjust1.alignmentMode";
connectAttr "type1.vertsPerChar" "vectorAdjust1.vertsPerChar";
connectAttr "typeExtrude1.vertexGroupIds" "vectorAdjust1.vertexGroupIds";
connectAttr "vectorAdjust1.og[0]" "polySoftEdge1.ip";
connectAttr "typeMeshShape1.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyRemesh1.ip";
connectAttr "typeMeshShape1.wm" "polyRemesh1.mp";
connectAttr "type1.remeshMessage" "polyRemesh1.typeMessage";
connectAttr "typeExtrude1.capComponents" "polyRemesh1.ics";
connectAttr "polyRemesh1.out" "polyAutoProj1.ip";
connectAttr "typeMeshShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "shellDeformer1.ip[0].ig";
connectAttr "type1.vertsPerChar" "shellDeformer1.vertsPerChar";
connectAttr ":time1.o" "shellDeformer1.ti";
connectAttr "type1.grouping" "shellDeformer1.grouping";
connectAttr "type1.animationMessage" "shellDeformer1.typeMessage";
connectAttr "typeExtrude1.vertexGroupIds" "shellDeformer1.vertexGroupIds";
connectAttr "polyCube4.out" "polyBevel3.ip";
connectAttr "pCubeShape28.wm" "polyBevel3.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "typeStandardSurfaceSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "typeStandardSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube9|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube10|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube11|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube12|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube13|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube14|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pCube15|pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
// End of map_art.ma
