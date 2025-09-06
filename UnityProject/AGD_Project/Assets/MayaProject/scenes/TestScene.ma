//Maya ASCII 2024 scene
//Name: TestScene.ma
//Last modified: Fri, Sep 05, 2025 03:21:24 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "6C7564EF-49AD-0F23-C350-F9A4E4253107";
createNode transform -s -n "persp";
	rename -uid "92D1A83E-456B-B501-0D27-D69121E3D51E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 110.59303228864943 -0.90514655936790689 108.56236627618087 ;
	setAttr ".r" -type "double3" 3.2616472686070495 44.99999999996956 -2.8112397289953477e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CED8BD5E-442B-AA13-B421-7BB7C2CEAC7B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 153.44705385190252;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A73FCB43-4962-2D0A-B9BE-CD9B5B61A49E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1A55A6DA-47C8-EB16-B8E9-B796BA5D4567";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9F22B42E-460A-9A00-E412-E9AB686318ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5E1E54C8-49CC-60A3-ECC4-2BAE9166FAD3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E2CB376F-4B5B-9EF6-8918-A38504BC4D3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "921BF02A-4F2C-FEA4-C4C5-8CB8A3FB38D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "GroundPlane";
	rename -uid "D96561C1-4F25-3C36-B8E2-79ACBA142FB7";
	setAttr ".s" -type "double3" 25.647053491620042 25.647053491620042 52.433976261822217 ;
createNode mesh -n "GroundPlaneShape" -p "GroundPlane";
	rename -uid "4333B6F7-4D52-D704-CCB2-C3A7826854FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BackgroundPlane";
	rename -uid "A8E5C136-4939-7FFF-4233-8D960B13ED1C";
	setAttr ".t" -type "double3" -12.799411337224814 11.096497030617355 0 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr ".s" -type "double3" -30.954395297126272 -24.190937810879344 -75.55949373792329 ;
createNode mesh -n "BackgroundPlaneShape" -p "BackgroundPlane";
	rename -uid "8FF9C90A-40E3-8A67-E0D9-C8A91F758552";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ball";
	rename -uid "6241D970-439E-1BB3-E132-9CA84B3FD235";
createNode mesh -n "BallShape" -p "Ball";
	rename -uid "DBD08415-4B0E-CD09-9163-54B5AAA4F3B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45000006631016731 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".pt";
	setAttr ".pt[83]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[84]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[85]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[94]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[102]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[103]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[104]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[105]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[113]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[114]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[115]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[122]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[123]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[124]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[125]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[126]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[132]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[133]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[134]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[135]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[136]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[142]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[143]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[144]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[145]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[146]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[152]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[153]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[154]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[155]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[156]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[162]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[163]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[164]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[165]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[166]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[172]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[173]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[174]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[175]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[176]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[182]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[183]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[184]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[185]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[186]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[192]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[193]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[194]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[195]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[196]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[202]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[203]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[204]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[205]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[206]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[212]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[213]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[214]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[215]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[216]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[222]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[223]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[224]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[225]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[226]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[232]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[233]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[234]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[235]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[236]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[242]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[243]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[244]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[245]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[246]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[252]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[253]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[254]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[255]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[256]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[262]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[263]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[264]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[265]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[273]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[274]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[275]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[283]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[284]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[285]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".pt[294]" -type "float3" 0 1.4901161e-08 -1.4551915e-11 ;
	setAttr ".dr" 1;
createNode lookAt -n "camera1_group";
	rename -uid "4B464405-4F56-B203-A5F9-7DADFBE6F416";
	setAttr ".v" no;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 52.854518645142655;
	setAttr ".tws" -8.5377364625159387e-07;
createNode transform -n "camera1" -p "camera1_group";
	rename -uid "B88BA38B-4A1E-01EF-F07C-64BDAA2804F8";
	setAttr ".t" -type "double3" 40.208629254052717 3.4454183469930375 0.040672051365117881 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "A47962C8-4E5E-0606-6A12-04ACB510086D";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 52.854518645142655;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "camera1_aim" -p "camera1_group";
	rename -uid "0AFBA042-4050-EE79-4F2C-0D9C8DD5D8D6";
	setAttr ".t" -type "double3" -12.143564521730397 10.705884036764186 -0.32482218968817694 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".drp" yes;
createNode locator -n "camera1_aimShape" -p "camera1_aim";
	rename -uid "52F708E8-4FE3-AC75-11A5-DEA6E60DC4CA";
	setAttr -k off ".v" no;
createNode transform -n "areaLight1";
	rename -uid "0903DC85-430E-8107-56DE-7FA359C0ADD3";
	setAttr ".t" -type "double3" 32.988837307045017 34.185875611718792 0 ;
	setAttr ".r" -type "double3" -30.000000000000004 -270.00000000000011 0 ;
	setAttr ".s" -type "double3" 25.136175106161986 25.136175106161986 25.136175106161986 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	rename -uid "B9E8BEEC-46E3-70B4-30CD-03A2797758E1";
	setAttr -k off ".v";
	setAttr ".in" 15000;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7B966A8F-4C60-839D-7C0A-4EBB8D2744E2";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "48EE5417-449A-DB2F-DA91-17A540F99EEB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A59DB0EB-4AC1-41C0-4622-2D81733FA9CC";
createNode displayLayerManager -n "layerManager";
	rename -uid "892787D3-488A-5B67-C0AC-959EBFCE6703";
createNode displayLayer -n "defaultLayer";
	rename -uid "5528B23D-4B88-F1DE-9BCD-90ABD361CC75";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "671EF76C-4F3E-494F-FE73-7D82AFEC6D51";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "465F1D87-4EDE-3317-C2D0-D1B8049D8EB4";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "47E036DB-4821-FA55-1852-B7B41941F084";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3DEF3A9A-4F97-F630-E9EB-51B5D29919AE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DDBE3413-4FE4-30A6-88E8-2B9744C8544B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3965F809-4DDC-97B8-0A15-14B6FBA4A36D";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "08413251-4D20-187E-E612-C5BCA655B709";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1_group|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 658\n            -height 1013\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|camera1_group|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1109\n            -height 1013\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n"
		+ "                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 63 100 -ps 2 37 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1109\\n    -height 1013\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1109\\n    -height 1013\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 658\\n    -height 1013\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1_group|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 658\\n    -height 1013\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "41B8C53D-4D59-ECF6-D8E9-7EA2B4179EDA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 502 ";
	setAttr ".st" 6;
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "567A3ABB-4357-D6AC-3ECB-99A192300389";
createNode shadingEngine -n "pasted__standardSurface2SG";
	rename -uid "449FCCA0-4032-C00D-4516-B58AA78D7556";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode standardSurface -n "pasted__Wood1";
	rename -uid "949DC84B-4E52-3E56-1193-6096D1A32946";
	setAttr ".bc" -type "float3" 0.29159999 0.22579999 0.18870001 ;
	setAttr ".dr" 0.71328669786453247;
	setAttr ".sc" -type "float3" 0.038400002 0.0254 0.018100001 ;
	setAttr ".subc" -type "float3" 0.2071 0.13169999 0.089299999 ;
	setAttr ".shr" 0.65734267234802246;
createNode polyPlane -n "polyPlane1";
	rename -uid "DCE6E5FC-4C70-FB22-A7DD-349778089F55";
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane2";
	rename -uid "12DC87A3-4B70-AC8D-7B1C-5AAF241C44FF";
	setAttr ".cuv" 2;
createNode polySphere -n "polySphere1";
	rename -uid "AF96CFD4-4D78-1E61-63E3-45B903283454";
createNode timeEditor -s -n "timeEditor";
	rename -uid "D5D55610-44DF-BC59-C280-0F84CDF87E37";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "07804579-420C-8BCD-3410-0DB09907929A";
	setAttr ".t[0].idx" 0;
	setAttr ".t[0].tc" -type "float3" 0.21960784 0.21960784 0.21960784 ;
createNode animCurveTL -n "Ball_translateX";
	rename -uid "C039F525-4B64-67A2-C86A-4A951EE8D2C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  1 -0.096409972619962758 6.0928328231292515 -0.096409972619962758
		 10.166644047619048 -0.096409972619962758 11.149982482993197 -0.096409972619962758
		 11.992836904761905 -0.096409972619962758 14.099984523809523 -0.096409972619962758
		 15.926180612244899 -0.096409972619962758 18.033328231292518 -0.096409972619962758
		 22.869203061224489 -0.096409972619962758 23.018991326530614 -0.096409972619962758
		 23.767932653061223 -0.096409972619962758 27.362875170068026 -0.096409972619962758
		 27.962028231292518 -0.096409972619962758 29.45991717687075 -0.096409972619962758
		 31.556959863945579 -0.096409972619962758 33.803794727891159 -0.096409972619962758
		 35.75105425170068 -0.096409972619962758 35.900842517006801 -0.096409972619962758
		 36.5 -0.096409972619962758 37.99789030612245 -0.096409972619962758 42.191982653061224 -0.096409972619962758
		 44.28903367346939 -0.096409972619962758 44.438821938775511 -0.096409972619962758
		 46.386081462585032 -0.096409972619962758 46.985234523809524 -0.096409972619962758
		 48.632914285714286 -0.096409972619962758 48.932494047619045 -0.096409972619962758
		 49.531647108843536 -0.096409972619962758 49.681435374149657 -0.096409972619962758
		 50.280588435374149 -0.096409972619962758 50.72995867346939 -0.096409972619962758
		 51.179330102040815 -0.096409972619962758 52.827002040816325 -0.096409972619962758
		 53.276373469387757 -0.096409972619962758 54.175107482993198 -0.096409972619962758
		 55.223626530612243 -0.096409972619962758 56.27215527210884 -0.096409972619962758
		 60.915615646258502 -0.096409972619962758 62.713081802721085 -0.096409972619962758
		 68.854429931972788 -0.096409972619962758 69.90295595238095 -0.096409972619962758
		 71.101265986394552 -0.096409972619962758 72 -0.096409972619962758;
createNode animCurveTL -n "Ball_translateY";
	rename -uid "786E7597-40E4-C701-5771-95A44773C0AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 15.749394771141926 6.7952115646258502 15.131195104861282
		 11.149982482993197 12.919940944180356 16.909516666666665 7.529577076075892 20 1.8087624869347927
		 23.767932653061223 0.54503342444708869 27.962028231292518 1.7373250234417466 30.059076020408163 7.955271675708703
		 35.900842517006801 10.629373519326167 42.04219761904762 6.4818138596564143 44.28903367346939 1.7646094476645522
		 46.985234523809524 0.6933376649329317 48.932494047619045 1.3967346311692186 51.029541836734694 4.001149897531322
		 54.77426054421769 6.1969261601387373 58.51899132653061 3.9041108938546696 60.915615646258502 1.3530489318304304
		 62.713081802721085 0.65102695449360959 63.911393027210885 1.2037443824924292 66.008440816326527 2.5583936538683645
		 67.805912074829934 1.9099565959068521 68.854429931972788 1.1790507033707009 69.90295595238095 0.86294109846471301
		 71.101265986394552 1.105083217272496 72 0.98063857057245718;
	setAttr -s 25 ".kit[0:24]"  1 1 1 18 18 18 18 1 
		18 1 18 18 18 1 18 1 18 18 18 18 1 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  1 1 1 18 18 18 18 1 
		18 1 18 18 18 1 18 1 18 18 18 18 1 18 18 18 18;
	setAttr -s 25 ".kix[0:24]"  1 0.136236879998132 0.073124726510265262 
		0.033169103317444701 0.041375628125074483 1 0.048798406108079569 0.026839925694286566 
		1 0.027327650866808301 0.035558515620465678 1 0.050877906204826691 0.027986958982737085 
		1 0.03107239017494904 0.053642072394338353 1 0.071801728999981773 1 0.028976782151696169 
		0.083164139523385708 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 -0.99067629048462369 -0.99732280349583846 
		-0.99944975390717705 -0.99914366204127791 0 0.99880864812100567 0.99963974430227864 
		0 -0.99962653000913393 -0.9993675960160352 0 0.99870488066305796 0.99960828834443871 
		0 -0.99951713670592746 -0.99856022756228413 0 0.99741892488192396 0 -0.99958008488371419 
		-0.99653586282548545 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 0.13623687999813161 0.073124726510265192 
		0.033169103317444708 0.041375628125074483 1 0.048798406108079569 0.026839927391166446 
		1 0.027327652456631994 0.035558515620465678 1 0.050877906204826691 0.027986960755185485 
		1 0.031072392281652452 0.053642072394338353 1 0.071801728999981787 1 0.028976778310233747 
		0.083164139523385708 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 -0.9906762904846238 -0.99732280349583846 
		-0.99944975390717705 -0.99914366204127802 0 0.99880864812100567 0.9996397442567182 
		0 -0.9996265299656717 -0.99936759601603509 0 0.99870488066305796 0.99960828829481374 
		0 -0.99951713664043562 -0.99856022756228413 0 0.99741892488192407 0 -0.99958008499507411 
		-0.99653586282548545 0 0 0;
createNode animCurveTL -n "Ball_translateZ";
	rename -uid "F9680ECA-4144-EA7C-5E49-4AA15A4E1F75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  1 -0.096409972619962758 6.0928328231292515 -0.096409972619962758
		 10.166644047619048 -0.096409972619962758 11.149982482993197 -0.096409972619962758
		 11.992836904761905 -0.096409972619962758 14.099984523809523 -0.096409972619962758
		 15.926180612244899 -0.096409972619962758 18.033328231292518 -0.096409972619962758
		 22.869203061224489 -0.096409972619962758 23.018991326530614 -0.096409972619962758
		 23.767932653061223 -0.096409972619962758 27.362875170068026 -0.096409972619962758
		 27.962028231292518 -0.096409972619962758 29.45991717687075 -0.096409972619962758
		 31.556959863945579 -0.096409972619962758 33.803794727891159 -0.096409972619962758
		 35.75105425170068 -0.096409972619962758 35.900842517006801 -0.096409972619962758
		 36.5 -0.096409972619962758 37.99789030612245 -0.096409972619962758 42.191982653061224 -0.096409972619962758
		 44.28903367346939 -0.096409972619962758 44.438821938775511 -0.096409972619962758
		 46.386081462585032 -0.096409972619962758 46.985234523809524 -0.096409972619962758
		 48.632914285714286 -0.096409972619962758 48.932494047619045 -0.096409972619962758
		 49.531647108843536 -0.096409972619962758 49.681435374149657 -0.096409972619962758
		 50.280588435374149 -0.096409972619962758 50.72995867346939 -0.096409972619962758
		 51.179330102040815 -0.096409972619962758 52.827002040816325 -0.096409972619962758
		 53.276373469387757 -0.096409972619962758 54.175107482993198 -0.096409972619962758
		 55.223626530612243 -0.096409972619962758 56.27215527210884 -0.096409972619962758
		 60.915615646258502 -0.096409972619962758 62.713081802721085 -0.096409972619962758
		 68.854429931972788 -0.096409972619962758 69.90295595238095 -0.096409972619962758
		 71.101265986394552 -0.096409972619962758 72 -0.096409972619962758;
createNode animCurveTU -n "Ball_visibility";
	rename -uid "1003E604-4840-9AB4-8CB3-8495F1A22FE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0.90986579653174715 6.0928328231292515 0.90986579653174715
		 10.166644047619048 0.90986579653174715 11.992836904761905 0.90986579653174715 14.099984523809523 0.90986579653174715
		 15.926180612244899 0.90986579653174715 18.033328231292518 0.90986579653174715 23.018991326530614 0.90986579653174715
		 27.362875170068026 0.90986579653174715 29.45991717687075 0.90986579653174715 31.556959863945579 0.90986579653174715
		 33.803794727891159 0.90986579653174715 35.75105425170068 0.90986579653174715 37.99789030612245 0.90986579653174715
		 42.191982653061224 0.90986579653174715 44.438821938775511 0.90986579653174715 46.386081462585032 0.90986579653174715
		 48.632914285714286 0.90986579653174715 49.531647108843536 0.90986579653174715 50.280588435374149 0.90986579653174715
		 50.72995867346939 0.90986579653174715 51.179330102040815 0.90986579653174715 52.827002040816325 0.90986579653174715;
	setAttr -s 23 ".kot[0:22]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Ball_rotateX";
	rename -uid "ADC8890A-47E1-94BE-C54A-79B68FC905A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 -0.096409972619956569 6.0928328231292515 -0.096409972619956569
		 10.166644047619048 -0.096409972619956569 11.992836904761905 -0.096409972619956569
		 14.099984523809523 -0.096409972619956569 15.926180612244899 -0.096409972619956569
		 18.033328231292518 -0.096409972619956569 23.018991326530614 -0.096409972619956569
		 27.362875170068026 -0.096409972619956569 29.45991717687075 -0.096409972619956569
		 31.556959863945579 -0.096409972619956569 33.803794727891159 -0.096409972619956569
		 35.75105425170068 -0.096409972619956569 37.99789030612245 -0.096409972619956569 42.191982653061224 -0.096409972619956569
		 44.438821938775511 -0.096409972619956569 46.386081462585032 -0.096409972619956569
		 48.632914285714286 -0.096409972619956569 49.531647108843536 -0.096409972619956569
		 50.280588435374149 -0.096409972619956569 50.72995867346939 -0.096409972619956569
		 51.179330102040815 -0.096409972619956569 52.827002040816325 -0.096409972619956569;
createNode animCurveTA -n "Ball_rotateY";
	rename -uid "7D09C3BF-4A0B-866A-4200-2CACC60BC560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 -0.096409972619956569 6.0928328231292515 -0.096409972619956569
		 10.166644047619048 -0.096409972619956569 11.992836904761905 -0.096409972619956569
		 14.099984523809523 -0.096409972619956569 15.926180612244899 -0.096409972619956569
		 18.033328231292518 -0.096409972619956569 23.018991326530614 -0.096409972619956569
		 27.362875170068026 -0.096409972619956569 29.45991717687075 -0.096409972619956569
		 31.556959863945579 -0.096409972619956569 33.803794727891159 -0.096409972619956569
		 35.75105425170068 -0.096409972619956569 37.99789030612245 -0.096409972619956569 42.191982653061224 -0.096409972619956569
		 44.438821938775511 -0.096409972619956569 46.386081462585032 -0.096409972619956569
		 48.632914285714286 -0.096409972619956569 49.531647108843536 -0.096409972619956569
		 50.280588435374149 -0.096409972619956569 50.72995867346939 -0.096409972619956569
		 51.179330102040815 -0.096409972619956569 52.827002040816325 -0.096409972619956569;
createNode animCurveTA -n "Ball_rotateZ";
	rename -uid "12336823-48BC-CBE1-F53F-698770A59AA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 -0.096409972619956569 6.0928328231292515 -0.096409972619956569
		 10.166644047619048 -0.096409972619956569 11.992836904761905 -0.096409972619956569
		 14.099984523809523 -0.096409972619956569 15.926180612244899 -0.096409972619956569
		 18.033328231292518 -0.096409972619956569 23.018991326530614 -0.096409972619956569
		 27.362875170068026 -0.096409972619956569 29.45991717687075 -0.096409972619956569
		 31.556959863945579 -0.096409972619956569 33.803794727891159 -0.096409972619956569
		 35.75105425170068 -0.096409972619956569 37.99789030612245 -0.096409972619956569 42.191982653061224 -0.096409972619956569
		 44.438821938775511 -0.096409972619956569 46.386081462585032 -0.096409972619956569
		 48.632914285714286 -0.096409972619956569 49.531647108843536 -0.096409972619956569
		 50.280588435374149 -0.096409972619956569 50.72995867346939 -0.096409972619956569
		 51.179330102040815 -0.096409972619956569 52.827002040816325 -0.096409972619956569;
createNode lambert -n "Ground";
	rename -uid "DAD0CE3F-4894-B6F6-B76A-4BB5F8EEDD70";
	setAttr ".c" -type "float3" 0.33829999 0.38350001 0.28569999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "886EB476-4C24-0046-E90E-4D8959047565";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "42AE45DB-4E8A-B92E-1CF4-209D5E92973B";
createNode lambert -n "Sky";
	rename -uid "E300B149-448C-34E8-CB69-BC9179639452";
	setAttr ".c" -type "float3" 0.25279999 0.30250001 0.3581 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "4633890C-434F-5D42-5734-4B898CFB9A76";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "5143D667-49CD-A422-1336-1DB6D33E627E";
createNode lambert -n "BallColor";
	rename -uid "CC372AA8-411A-A315-CB26-5787478394EC";
	setAttr ".c" -type "float3" 0.83780003 0.87199998 0.0341 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "212FF524-4D0E-1C25-3FB6-43BD3537142A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "1F12076B-4D8E-AF1D-2ADE-9CA762B1AFD4";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FBF295F0-44A0-DB3A-159E-F887F5B8640D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323967 -708.54439600441549 ;
	setAttr ".tgi[0].vh" -type "double2" 631.67881256859221 154.97298942993822 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 45.714286804199219;
	setAttr ".tgi[0].ni[0].y" -425.71429443359375;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 352.85714721679688;
	setAttr ".tgi[0].ni[1].y" -425.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 45.714286804199219;
	setAttr ".tgi[0].ni[2].y" 150;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 352.85714721679688;
	setAttr ".tgi[0].ni[3].y" 150;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 45.714286804199219;
	setAttr ".tgi[0].ni[4].y" -137.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 352.85714721679688;
	setAttr ".tgi[0].ni[5].y" -137.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode animCurveTU -n "Ball_scaleX";
	rename -uid "EF70D9A4-41BE-716A-1322-AC80C6ADC90D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 1 6.7952115646258502 1 11.009503741496598 1
		 16.909516666666665 1 20 1 23.767932653061223 1 27.962028231292518 1 30.059076020408163 1
		 35.900842517006801 1 42.04219761904762 1 44.28903367346939 1 46.985234523809524 1
		 48.932494047619045 1 51.029541836734694 1 54.77426054421769 1 58.51899132653061 1
		 60.915615646258502 1 62.713081802721085 1 63.911393027210885 1 66.008440816326527 1
		 67.805912074829934 1 68.854429931972788 1 69.90295595238095 1 71.101265986394552 1
		 72 1;
createNode animCurveTU -n "Ball_scaleY";
	rename -uid "4F2BD3B1-470B-2C5F-9652-6EA3FE66B60C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 1 6.7952115646258502 1.1341525554699383
		 11.009503741496598 1.3243719345664102 16.909516666666665 1.6355566880400292 20 1.8367436320645572
		 23.767932653061223 0.58624500168355242 27.962028231292518 1.5315764040622988 30.059076020408163 1.5672620061474669
		 35.900842517006801 1 42.04219761904762 1.5592622645325183 44.28903367346939 1.778693743524185
		 46.985234523809524 0.6980898070741095 48.932494047619045 1.3912942529695309 51.029541836734694 1.2357650576614068
		 54.77426054421769 1 58.51899132653061 1.2460356082619466 60.915615646258502 1.3853267114669103
		 62.713081802721085 0.72045491765709602 63.911393027210885 1.2348912835739942 66.008440816326527 1
		 67.805912074829934 1.0892884220494752 68.854429931972788 1.1989594551630394 69.90295595238095 0.86592393573423676
		 71.101265986394552 1.0894796674656897 72 1;
createNode animCurveTU -n "Ball_scaleZ";
	rename -uid "45497752-4BFB-970F-0136-DD9BDD7F8B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 1 6.7952115646258502 0.93334938939847467
		 11.009503741496598 0.90224523365849407 16.909516666666665 0.862155100378596 20 0.81429209489297072
		 23.767932653061223 1.5245413145506472 27.962028231292518 0.82004119994963798 30.059076020408163 0.94241171093442833
		 35.900842517006801 1 42.04219761904762 0.8889156406749803 44.28903367346939 0.82966886688748298
		 46.985234523809524 1.2999011195034296 48.932494047619045 0.88891564067297379 51.029541836734694 0.97783314883737615
		 54.77426054421769 1 58.51899132653061 0.88891564487634145 60.915615646258502 0.84941779763826863
		 62.713081802721085 1.1222194301086386 63.911393027210885 0.95556625912597604 66.008440816326527 1
		 67.805912074829934 0.95556625661221883 68.854429931972788 0.9131068725149778 69.90295595238095 1.077759049585888
		 71.101265986394552 0.97778312811590173 72 1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "D3C1B13D-499A-02D5-A6A2-DCA031D4A7EB";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 80;
	setAttr ".unw" 80;
select -ne :sequenceManager1;
	setAttr ".o" 500;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
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
	setAttr ".pa" 1;
select -ne :defaultLightSet;
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
connectAttr "polyPlane1.out" "GroundPlaneShape.i";
connectAttr "polyPlane2.out" "BackgroundPlaneShape.i";
connectAttr "Ball_translateX.o" "Ball.tx";
connectAttr "Ball_translateY.o" "Ball.ty";
connectAttr "Ball_translateZ.o" "Ball.tz";
connectAttr "Ball_visibility.o" "Ball.v";
connectAttr "Ball_rotateX.o" "Ball.rx";
connectAttr "Ball_rotateY.o" "Ball.ry";
connectAttr "Ball_rotateZ.o" "Ball.rz";
connectAttr "Ball_scaleX.o" "Ball.sx";
connectAttr "Ball_scaleY.o" "Ball.sy";
connectAttr "Ball_scaleZ.o" "Ball.sz";
connectAttr "polySphere1.out" "BallShape.i";
connectAttr "camera1_aim.tx" "camera1_group.tg[0].ttx";
connectAttr "camera1_aim.ty" "camera1_group.tg[0].tty";
connectAttr "camera1_aim.tz" "camera1_group.tg[0].ttz";
connectAttr "camera1_aim.rp" "camera1_group.tg[0].trp";
connectAttr "camera1_aim.rpt" "camera1_group.tg[0].trt";
connectAttr "camera1_aim.pm" "camera1_group.tg[0].tpm";
connectAttr "camera1.pim" "camera1_group.cpim";
connectAttr "camera1.t" "camera1_group.ct";
connectAttr "camera1.rp" "camera1_group.crp";
connectAttr "camera1.rpt" "camera1_group.crt";
connectAttr "camera1_group.crx" "camera1.rx" -l on;
connectAttr "camera1_group.cry" "camera1.ry" -l on;
connectAttr "camera1_group.crz" "camera1.rz" -l on;
connectAttr "camera1_group.db" "cameraShape1.coi";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "pasted__standardSurface2SG.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__Wood1.msg" "pasted__materialInfo3.m";
connectAttr "pasted__Wood1.oc" "pasted__standardSurface2SG.ss";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "Ground.oc" "lambert2SG.ss";
connectAttr "GroundPlaneShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Ground.msg" "materialInfo1.m";
connectAttr "Sky.oc" "lambert3SG.ss";
connectAttr "BackgroundPlaneShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Sky.msg" "materialInfo2.m";
connectAttr "BallColor.oc" "lambert4SG.ss";
connectAttr "BallShape.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "BallColor.msg" "materialInfo3.m";
connectAttr "Sky.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "BallColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Ground.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "pasted__standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__Wood1.msg" ":defaultShaderList1.s" -na;
connectAttr "Ground.msg" ":defaultShaderList1.s" -na;
connectAttr "Sky.msg" ":defaultShaderList1.s" -na;
connectAttr "BallColor.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
// End of TestScene.ma
