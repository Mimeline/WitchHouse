//Maya ASCII 2024 scene
//Name: Citrouille.ma
//Last modified: Tue, Jan 07, 2025 01:43:58 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "7BB2BF22-42DB-2F97-6E8E-9EB72B38CFA8";
createNode transform -s -n "persp";
	rename -uid "07583398-415C-5C21-BA7E-82BE521DD1B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.8945870542264593 1.5484570819581378 0.22717938222372491 ;
	setAttr ".r" -type "double3" -7.5383527201869267 -810.19999999927074 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "17185900-4F92-024F-7414-05A89085D3A2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.093395157554184;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8F93DA45-49F5-051C-BD1A-09861C019FA7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "03B31D58-4FDE-2378-7386-6989476483EA";
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
	rename -uid "3766DC31-42F7-23F9-AFC5-2783F43DBBB8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "63B1DC72-42D5-DCF2-42D3-00B61816E6BD";
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
	rename -uid "B4AC08C0-465E-5E00-0CB8-7199481E8E87";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D0ECCDE-429D-05BF-D022-8ABD4127AE7B";
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
createNode transform -n "citrouille";
	rename -uid "A2EFFBC1-465E-B430-3F43-8CAD436F0DCC";
createNode mesh -n "citrouilleShape" -p "citrouille";
	rename -uid "C0DC6A27-45D0-EA67-8BFD-C7852648CD1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44087952375411987 0.70212125778198242 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 370 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.040856756 0.20295812 0.046901982 
		-0.046901964 0.20295809 0.040856756 -0.052182995 0.12779412 0.056258149 -0.056258149 
		0.12779412 0.052182995 0.004274609 0.20295809 0.062054828 -0.0042746076 0.20295808 
		0.062054809 0.0028815952 0.12779413 0.076679468 -0.0028815961 0.1277941 0.076679535 
		0.046901971 0.20295809 0.040856756 0.040856719 0.20295809 0.046901971 0.056181774 
		0.12784198 0.052270621 0.052182965 0.1277941 0.056258168 0.061991844 0.20299754 -0.0042023952 
		0.062015161 0.20298289 0.0043200925 0.074962102 0.12886898 -0.00091144856 0.075120129 
		0.12877017 0.0046704561 0.040793844 0.20299749 -0.046829771 0.046825558 0.20300591 
		-0.040769126 0.050536085 0.12882493 -0.05436882 0.054463904 0.12891711 -0.050124653 
		-0.0042746067 0.20295808 -0.062054783 0.0042746072 0.20295812 -0.062054757 -0.0029445426 
		0.12783356 -0.07660722 0.0027630467 0.12786832 -0.076543488 -0.04690193 0.20295812 
		-0.040856782 -0.040856779 0.20295808 -0.046901967 -0.056258172 0.12779413 -0.052182976 
		-0.052182976 0.1277941 -0.056258153 -0.062054798 0.20295812 0.0042746081 -0.062054817 
		0.20295812 -0.004274609 -0.076679491 0.12779412 0.0028815949 -0.076679491 0.12779412 
		-0.0028815963 -0.033134919 0.052886039 0.03509669 -0.03509669 0.052886039 0.033134919 
		0.0013871735 0.052886035 0.048247028 -0.0013871731 0.052886043 0.04824705 0.034269452 
		0.053403795 0.034083918 0.032551207 0.053251378 0.035766296 0.042008348 0.056790739 
		0.0057696165 0.042369049 0.05656499 0.0081301834 0.026999045 0.056726396 -0.028057817 
		0.028625797 0.056936085 -0.025711713 -0.0021383767 0.053356215 -0.047385268 0.00036427967 
		0.053526245 -0.047073603 -0.035096675 0.052886035 -0.03313493 -0.033134941 0.052886035 
		-0.035096657 -0.048247043 0.052886039 0.0013871735 -0.048247043 0.052886039 -0.0013871733 
		-0.010057789 0.012792842 0.010606651 -0.01060665 0.012792842 0.010057789 0.00038810354 
		0.012792842 0.014611959 -0.00038810307 0.012792843 0.014611959 0.0075345654 0.014715625 
		0.013581984 0.0075356872 0.014371392 0.01349992 0.00081075681 0.021430843 0.015444158 
		0.0014276109 0.021044757 0.015512727 -0.0036024891 0.021342646 0.0050639613 -0.0036248637 
		0.02170017 0.0062681194 -0.0033252938 0.014631193 -0.011242519 -0.0031374078 0.014999414 
		-0.010567616 -0.010606654 0.012792844 -0.010057792 -0.01005779 0.012792843 -0.010606648 
		-0.01461197 0.012792842 0.00038810342 -0.01461197 0.012792842 -0.00038810357 -0.00038420476 
		0.0021351401 0.00040696049 -0.00040696023 0.0021351399 0.00038420511 -0.00010246021 
		0.0022093381 0.00069543556 -5.5737331e-05 0.0021599536 0.00060491817 -0.0066822506 
		0.0065721888 0.0085167093 -0.0057516755 0.0059755077 0.0074458285 -0.020923212 0.015580861 
		0.02462808 -0.020088524 0.01505844 0.023702739 -0.020861231 0.015432395 0.023965081 
		-0.021608595 0.015914394 0.024871275 -0.0068242317 0.0063962671 0.0072506191 -0.0077635846 
		0.0070043309 0.0083651273 -0.00048335578 0.0021829528 -0.00029657071 -0.00057084404 
		0.0022519552 -0.0001928541 -0.00055943849 0.0021351401 1.6090373e-05 -0.00055943814 
		0.0021351394 -1.6090373e-05 -0.0037906081 0.0044178879 0.0043498971 -0.0035746978 
		0.0042632096 0.0040351795 -0.0069847503 0.0065575177 0.008346213 -0.0061192391 0.0059881727 
		0.0073026852 -0.013756416 0.010928189 0.016251177 -0.012351688 0.010029444 0.014635112 
		-0.020192048 0.015002885 0.023495113 -0.019382935 0.014496485 0.022611093 -0.019742554 
		0.014655294 0.022646526 -0.020450184 0.015117729 0.023525335 -0.012980925 0.010282815 
		0.014557714 -0.014376294 0.011183789 0.016209073 -0.0065749632 0.0061410377 0.0070722899 
		-0.0074912678 0.0067340825 0.0081280423 -0.0037092385 0.0043006823 0.003923588 -0.0039852117 
		0.0044734045 0.0041960189 2.3283064e-10 0.00066413922 0 -1.1641532e-09 0.0006641394 
		2.3283064e-10 -0.00071140187 0.0013291159 0.00081609224 -0.00082725845 0.0014016289 
		0.00094899739 -2.3283064e-10 0.00066413911 2.3283064e-10 9.3132257e-10 0.00066413917 
		-2.3283064e-10 -0.00087322068 0.0014304008 0.0010017337 -0.00075315894 0.0013552518 
		0.0008639943 -0.0010693591 0.0013334368 0.0012267315 -0.00075315707 0.0011355306 
		0.00086399709 -0.0031688723 0.0028672144 0.0036352139 -0.0037925174 0.0032575422 
		0.004350631 -0.0098774415 0.0068463031 0.011331059 -0.0087285005 0.0061271917 0.010013022 
		-0.01138177 0.0080075655 0.013056775 -0.012733972 0.0088538909 0.014607973 -0.023648448 
		0.015465394 0.027128669 -0.022758298 0.01490828 0.02610755 -0.022311484 0.014848338 
		0.025594983 -0.023190096 0.015398251 0.026602881 -0.023307106 0.015251751 0.026737098 
		-0.024125934 0.015764259 0.027676452 -0.023519147 0.015604205 0.026980378 -0.022714069 
		0.015100312 0.026056807 -0.0094121341 0.0065550702 0.010797261 -0.010594325 0.0072949929 
		0.012153445 -0.013335291 0.0092302449 0.015297781 -0.011964533 0.0083723143 0.013725302 
		-0.00094525103 0.0012557599 0.0010843598 -0.0012753429 0.0014623587 0.001463026 -0.0040929089 
		0.0034455552 0.0046952353 -0.0034291383 0.0030301155 0.0039337925 -0.023219476 0.21398173 
		-0.062803216 -0.027989956 0.21398173 -0.060827278 -0.028954484 0.13453893 -0.074450873 
		-0.032170784 0.13453892 -0.073118553 -0.017575257 0.052190892 -0.044518769 -0.019051937 
		0.052190907 -0.04390711 -0.0044545634 0.010616974 -0.010669007 -0.0047076931 0.010567082 
		-0.010622592 -0.0018689904 0.001751198 0.0021440391 -0.0015883222 0.0015755324 0.0018220672 
		-0.0042760428 0.002676321 0.0049053282 -0.0038168884 0.002388936 0.0043785884 -0.0078870067 
		0.0049363747 0.009047701 -0.0072181001 0.0045177168 0.0082803536 -0.0098196277 0.007616322 
		0.01117668 -0.010615679 0.0081180641 0.012093991 0.027989944 0.21398178 -0.060827274 
		0.023219481 0.21398176 -0.062803261 0.031870756 0.1347267 -0.072774425 0.028717337 
		0.13468733 -0.074178755 0.016407086 0.053846281 -0.040873002 0.015160412 0.053702332 
		-0.041748568 -0.0034087938 0.015551453 -0.0014869164 -0.0032738526 0.015258675 -0.0021614097 
		-0.01482283 0.0098588392 0.017004238 -0.014125841 0.0094226059 0.016204679 -0.017778592 
		0.011127385 0.020394966 -0.016994178 0.010636444 0.019495137 -0.018670632 0.011685698 
		0.02141829 -0.017860679 0.011178771 0.020489156 -0.016807808 0.012020351 0.019246357 
		-0.01758153 0.012508128 0.020142697 0.062803268 0.21398172 -0.023219505 0.060827293 
		0.21398172 -0.027989967 0.073252313 0.13528904 -0.027579689 0.071916036 0.13529158 
		-0.030791201 0.038284935 0.056092583 -0.010424015 0.037668429 0.0560956 -0.011895159;
	setAttr ".pt[166:331]" -0.0046154996 0.020197723 0.013440841 -0.0047744196 
		0.020210899 0.013132129 -0.024451895 0.015885551 0.028050369 -0.024480607 0.015903521 
		0.028083298 -0.026341289 0.016486667 0.030217804 -0.026371457 0.016505551 0.030252414 
		-0.024292363 0.015204269 0.027867332 -0.024320941 0.015222161 0.027900133 -0.020646302 
		0.014445238 0.023723343 -0.020624289 0.014432903 0.023706324 0.060827244 0.21398178 
		0.027989943 0.062803268 0.21398172 0.023219477 0.072931938 0.13465573 0.032384824 
		0.074213579 0.13468738 0.029226528 0.041764967 0.053531636 0.02150932 0.042152502 
		0.05367193 0.020289768 0.0037469259 0.014877503 0.012619353 0.0034214635 0.015167505 
		0.012818021 -0.013282653 0.0088948663 0.015237405 -0.013989977 0.0093375761 0.016048834 
		-0.016201537 0.01014033 0.01858584 -0.016994178 0.010636444 0.019495137 -0.017293599 
		0.010823841 0.019838609 -0.018120194 0.011341184 0.020786833 -0.017226029 0.012305968 
		0.019850651 -0.016427001 0.011804416 0.018936962 0.023219466 0.21398175 0.062803201 
		0.027989933 0.21398178 0.060827248 0.028954508 0.13453893 0.074450791 0.03217075 
		0.13453892 0.073118657 0.017575251 0.052190907 0.044518758 0.019051941 0.052190907 
		0.04390711 0.0042588008 0.010544083 0.010893574 0.0045549064 0.010567082 0.010797849 
		-0.0012833441 0.0013846481 0.0014722018 -0.0015333695 0.0015411406 0.0017590295 -0.0033881548 
		0.0021206001 0.0038867667 -0.0038168884 0.002388936 0.0043785884 -0.0067819399 0.004244728 
		0.0077800043 -0.0074266377 0.0046482366 0.0085195778 -0.01022583 0.0079042753 0.011818742 
		-0.0094425706 0.0074105663 0.010916154 -0.027989943 0.21398175 0.060827274 -0.023219483 
		0.21398175 0.062803254 -0.032170765 0.13453893 0.073118605 -0.028954493 0.13453893 
		0.074450783 -0.019051941 0.0521909 0.04390711 -0.017575255 0.0521909 0.044518776 
		-0.0046313023 0.010519266 0.010710224 -0.0042984481 0.010519266 0.010848094 -1.7462298e-10 
		0.00058142247 5.8207661e-11 1.1641532e-10 0.00058142247 5.8207661e-11 -4.6566129e-10 
		0 2.3283064e-10 1.3969839e-09 1.1641532e-10 -2.3283064e-10 -0.001646938 0.0010307959 
		0.0018893081 -0.0018413716 0.0011524898 0.0021123553 -0.0052818628 0.0047796974 0.0060941312 
		-0.0049232459 0.0045517469 0.0056740069 -0.062803261 0.21398175 0.023219487 -0.060827274 
		0.21398175 0.027989948 -0.074450836 0.13453893 0.028954497 -0.073118605 0.13453893 
		0.032170765 -0.044518776 0.0521909 0.01757526 -0.04390711 0.0521909 0.019051941 -0.010848094 
		0.010519266 0.0042984476 -0.010710224 0.010519266 0.0046313019 0 0.00058142241 0 
		0 0.00058142241 0 6.9849193e-10 -2.910383e-11 -3.4924597e-10 6.9849193e-10 -2.910383e-11 
		-3.4924597e-10 -0.00069167459 0.00043290976 0.00079346419 -0.00069167459 0.00043290976 
		0.00079346419 -0.0037341195 0.0037885783 0.0042450363 -0.0037469501 0.0037951607 
		0.0042515118 -0.060827274 0.21398175 -0.027989943 -0.062803261 0.21398175 -0.023219483 
		-0.073118605 0.13453893 -0.032170761 -0.074450836 0.13453893 -0.028954489 -0.043907121 
		0.0521909 -0.019051943 -0.044518776 0.0521909 -0.01757526 -0.010710225 0.010519266 
		-0.0046313028 -0.010848096 0.010519266 -0.0042984476 -1.1641532e-10 0.00058142236 
		-1.1641532e-10 5.8207661e-10 0.00058142236 1.1641532e-10 -6.2947205e-05 3.9397557e-05 
		7.2210321e-05 1.3969839e-09 1.1641532e-10 -2.3283064e-10 -0.0019894163 0.0012451506 
		0.0022821866 -0.0017767588 0.0011120531 0.00203824 -0.0051035285 0.0046442286 0.0057650274 
		-0.0054875556 0.0048860372 0.0062026451 -0.010237076 0.23115997 0.016957633 -0.006973186 
		0.23402001 0.0093248216 -0.0016628542 0.23402004 0.011524433 -0.0047521517 0.23115994 
		0.019229572 0.0047521517 0.23115991 0.019229578 0.0016628531 0.23401999 0.011524428 
		0.0069731893 0.23402004 0.0093248179 0.010237073 0.23115991 0.016957641 0.016957637 
		0.23115996 0.010237087 0.0093248161 0.23401998 0.0069731912 0.011524426 0.23402002 
		0.0016628524 0.019229569 0.23115997 0.0047521517 0.019229561 0.23115993 -0.0047521498 
		0.01152443 0.23402004 -0.0016628518 0.0093248216 0.23402004 -0.0069731842 0.016957629 
		0.23115993 -0.010237087 0.010237075 0.23115994 -0.016957633 0.006973187 0.23402002 
		-0.0093248235 0.0016628534 0.23401998 -0.011524424 0.0047521489 0.23115991 -0.019229565 
		-0.0047521465 0.23115991 -0.019229567 -0.0016628528 0.23402004 -0.011524426 -0.0069731832 
		0.23401999 -0.0093248226 -0.010237073 0.23115996 -0.016957615 -0.016957631 0.23115994 
		-0.010237073 -0.0093248207 0.23402004 -0.0069731884 -0.011524422 0.23402001 -0.0016628548 
		-0.019229563 0.23115997 -0.0047521531 -0.019229582 0.23115991 0.0047521517 -0.011524434 
		0.23402001 0.0016628512 -0.0093248235 0.23402001 0.0069731851 -0.016957646 0.23115991 
		0.010237072 -0.010036597 0.010410709 0.012001017 -0.010582482 0.011143289 0.012634505 
		-0.010190265 0.01071466 0.011727683 -0.0097073615 0.010078188 0.011307867 -0.011459466 
		0.011626937 0.014146515 -0.011601991 0.012044388 0.014164894 -0.010831572 0.011379057 
		0.013066629 -0.010803359 0.011089841 0.013245776 -0.013066601 0.012826075 0.015917253 
		-0.0126165 0.012811701 0.015188422 -0.011926971 0.012304268 0.014550989 -0.012464196 
		0.012396668 0.015332242 -0.013742576 0.013196793 0.01607638 -0.012963666 0.01295311 
		0.015027395 -0.012818587 0.012938187 0.015292658 -0.013658888 0.013196793 0.016278418 
		-0.012988301 0.012457376 0.014412361 -0.01238152 0.012349159 0.013709004 -0.012882018 
		0.01284554 0.014740007 -0.013447752 0.012871388 0.015254867 -0.011429612 0.011156125 
		0.012111036 -0.01131893 0.011421084 0.012129176 -0.012099244 0.012092616 0.013238789 
		-0.012090868 0.011696437 0.01301767 -0.010082094 0.010119475 0.010638106 -0.010435938 
		0.0107361 0.01125654 -0.011030048 0.011183805 0.011784504 -0.010548388 0.010463696 
		0.011066985 -0.0095360894 0.0098301228 0.010628114 -0.010139227 0.010626251 0.011475408 
		-0.010260433 0.010626251 0.011182787 -0.0096347369 0.009839491 0.010443248 -0.011017243 
		0.0068955459 0.012638593 -0.01021678 0.0063945414 0.011720315 -0.011751 0.0073547987 
		0.013480336 -0.0092990771 0.0058201719 0.010667576 -0.0086664353 0.0054242085 0.0099418312 
		-0.0096447617 0.0060365391 0.011064146 -0.010616008 0.006644418 0.012178306 -0.010993641 
		0.0068807863 0.012611543 -0.011737442 0.0073463144 0.013464782 -0.011905388 0.0074514337 
		0.013657457 -0.011931687 0.0074678939 0.013687628 -0.010641324 0.0066602682 0.012207352;
	setAttr ".pt[332:369]" -0.0096686054 0.0060514593 0.011091497 -0.0092990771 
		0.0058201719 0.010667576 -0.0086664353 0.0054242085 0.0099418331 -0.0085399058 0.0053450186 
		0.0097966827 -0.0085399058 0.0053450186 0.0097966827 -0.012733972 0.0092152711 0.014607973 
		-0.012288239 0.0076910509 0.014096637 -0.013546884 0.0097240582 0.015540508 -0.01307814 
		0.0081854407 0.015002796 -0.010764213 0.007982417 0.012348323 -0.010390045 0.0065029906 
		0.011919088 -0.010064465 0.0075444682 0.011545621 -0.0096925832 0.006066463 0.011118989 
		-0.011149687 0.0082236854 0.012790537 -0.010764202 0.0067371777 0.012348319 -0.012238037 
		0.0089048753 0.014039059 -0.011820659 0.0073983921 0.013560244 -0.012664128 0.0091715585 
		0.014527849 -0.012238037 0.007659635 0.014039059 -0.01349996 0.0096946955 0.015486697 
		-0.013039306 0.0081611387 0.01495825 -0.0137009 0.0098204566 0.015717192 -0.013238439 
		0.0082857525 0.015186651 -0.013700877 0.0098204566 0.015717195 -0.013238424 0.0082857544 
		0.015186649 -0.012316314 0.0089538544 0.014128832 -0.011905395 0.0074514337 0.013657461 
		-0.01122587 0.0082713664 0.012877923 -0.010822633 0.0067737489 0.012415356 -0.010833817 
		0.0080259787 0.012428163 -0.010441495 0.0065352032 0.011978136 -0.01009607 0.0075642411 
		0.01158186 -0.0097310506 0.0060905353 0.011163117 -0.0099424552 0.0074680876 0.011405626 
		-0.0095825139 0.0059975674 0.010992718 -0.0099212229 0.0074548088 0.011381289 -0.009582499 
		0.0059975674 0.010992722 -1.1641532e-10 0.2344981 2.3283064e-10;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2C47A2CA-4097-1BE8-8149-2FB242527337";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "45F62A92-4298-F76C-C441-2E81A5373589";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AABF612B-484F-A652-2EB8-0F9844A76908";
createNode displayLayerManager -n "layerManager";
	rename -uid "85DE8FAB-4E4F-D6E9-0C14-989E19C780E7";
createNode displayLayer -n "defaultLayer";
	rename -uid "3C4CD5F1-4057-0D83-0D86-DDBE39D5517C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2108140D-484E-1D2F-2FBE-ACB3AAA01F03";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E7424918-4397-2AF1-8D9B-6F9DB58D90EE";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B244F344-4116-7537-E1D2-3CB99C6C5A21";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "532800EA-49DB-8A7E-695A-4D80D48E0E75";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AE157752-4D6A-FBCC-AF1E-989092105970";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "4FB215D3-4425-E17C-6B17-02B6BD7E096B";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polySphere -n "polySphere1";
	rename -uid "64FD8EDD-4AA6-0BBF-7C79-B8890EA148A8";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "E7EB263C-4A1B-7E77-9F3B-6DA4B0F5A338";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "7453CE9A-434D-1215-6E58-5696B597CD2F";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[40]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.078480497 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.34448522 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.56366342 0 ;
createNode polyConnectComponents -n "polyConnectComponents1";
	rename -uid "939782DF-4C43-5352-CF82-B0AAFE8294A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[5]" "e[13]" "e[21]" "e[29]" "e[37]" "e[45]" "e[115]" "e[117]";
createNode polyTweak -n "polyTweak2";
	rename -uid "CFC6C7C7-4A30-A0EA-15E1-898780F21365";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[40]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.019422727 0 ;
	setAttr ".tk[50]" -type "float3" -7.4505806e-09 0 -3.7252903e-09 ;
	setAttr ".tk[52]" -type "float3" -2.220446e-16 0 -1.1175871e-08 ;
	setAttr ".tk[54]" -type "float3" -3.7252903e-09 0 -3.7252903e-09 ;
	setAttr ".tk[56]" -type "float3" 1.1175871e-08 0 0 ;
	setAttr ".tk[58]" -type "float3" -3.7252903e-09 0 3.7252903e-09 ;
	setAttr ".tk[60]" -type "float3" -2.220446e-16 0 1.1175871e-08 ;
	setAttr ".tk[62]" -type "float3" 3.7252903e-09 0 3.7252903e-09 ;
	setAttr ".tk[64]" -type "float3" -1.1175871e-08 0 0 ;
createNode polyConnectComponents -n "polyConnectComponents2";
	rename -uid "36BC4476-45EC-43B4-1B9C-E5A243A386B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4]" "e[12]" "e[20]" "e[28]" "e[36]" "e[44]" "e[112]" "e[114]";
createNode polyConnectComponents -n "polyConnectComponents3";
	rename -uid "F1455061-4421-7716-599B-5FA4606A5826";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[3]" "e[11]" "e[19]" "e[27]" "e[35]" "e[43]" "e[109]" "e[111]";
createNode polyConnectComponents -n "polyConnectComponents4";
	rename -uid "C8F172E4-4112-3253-86F8-FB920007578D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[2]" "e[10]" "e[18]" "e[26]" "e[34]" "e[42]" "e[106]" "e[108]";
createNode polyConnectComponents -n "polyConnectComponents5";
	rename -uid "E19CA3BD-42DB-4018-963A-67B01F142955";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[9]" "e[17]" "e[25]" "e[33]" "e[41]" "e[103]" "e[105]";
createNode polyConnectComponents -n "polyConnectComponents6";
	rename -uid "5F5CEC93-4B5A-3903-1FE2-19B962B8439C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[8]" "e[16]" "e[24]" "e[32]" "e[40]" "e[100]" "e[102]";
createNode polyConnectComponents -n "polyConnectComponents7";
	rename -uid "D0420F11-47C1-CA99-46A1-6498235BFE53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[7]" "e[15]" "e[23]" "e[31]" "e[39]" "e[47]" "e[97]" "e[99]";
createNode polyConnectComponents -n "polyConnectComponents8";
	rename -uid "27ABBB88-43BC-A767-1905-0A8505651262";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6]" "e[14]" "e[22]" "e[30]" "e[38]" "e[46]" "e[118:119]";
createNode polyMoveEdge -n "polyMoveEdge1";
	rename -uid "57ECEAA3-480A-7A3A-9036-ABADF1068553";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[144:150]" "e[159:165]" "e[174:180]" "e[189:195]" "e[204:210]" "e[219:225]" "e[234:240]" "e[249:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-08 -0.15747201 2.9802322e-08 ;
	setAttr ".rs" 48042;
createNode polyMoveEdge -n "polyMoveEdge2";
	rename -uid "5A319C15-4F6F-E26D-6790-8D88CC141152";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[144:150]" "e[159:165]" "e[174:180]" "e[189:195]" "e[204:210]" "e[219:225]" "e[234:240]" "e[249:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-08 -0.15747201 2.9802322e-08 ;
	setAttr ".rs" 46168;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4781103E-4C4D-5D00-6867-B9955DA47F78";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F4E42D66-4AC8-BC24-ECBF-9EAA4429060D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMoveEdge -n "polyMoveEdge3";
	rename -uid "89078ABB-4A2D-2503-732C-99B360217AF3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[144:150]" "e[159:165]" "e[174:180]" "e[189:195]" "e[204:210]" "e[219:225]" "e[234:240]" "e[249:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-08 -0.15747201 2.9802322e-08 ;
	setAttr ".rs" 64026;
	setAttr ".lt" -type "double3" -2.4286128663675299e-16 -1.0408340855860843e-16 0.12783246591397002 ;
createNode polyConnectComponents -n "polyConnectComponents9";
	rename -uid "4DC41608-4ECE-7EDA-27EA-D1B927866AF4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[113]";
createNode polyTweak -n "polyTweak3";
	rename -uid "A75AEEE0-4767-F6C5-326A-CE8D9F15FC05";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[73]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.076885357 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.076885357 0 ;
createNode polyConnectComponents -n "polyConnectComponents10";
	rename -uid "A266E141-4826-407E-30EA-A3A7551B7311";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[105]";
createNode polyConnectComponents -n "polyConnectComponents11";
	rename -uid "DF7FE82B-42AA-F0FD-4C74-5AA1E65B3EEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[97]";
createNode polyConnectComponents -n "polyConnectComponents12";
	rename -uid "08074AA4-40C7-7779-7DDA-758F56DF1BB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[89]";
createNode polyConnectComponents -n "polyConnectComponents13";
	rename -uid "A88F6D5D-4DB1-4341-6756-2BA81544C897";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[81]";
createNode polyConnectComponents -n "polyConnectComponents14";
	rename -uid "E889E262-4340-9A88-CBBB-18A734FAAFFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[73]";
createNode polyConnectComponents -n "polyConnectComponents15";
	rename -uid "1B01D044-43E8-FA3A-4885-78B3AD708F36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[129]";
createNode polyConnectComponents -n "polyConnectComponents16";
	rename -uid "2A6E82B8-41C2-5FB7-DE35-22A3D0A4CA2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[82]";
createNode polyConnectComponents -n "polyConnectComponents17";
	rename -uid "502E09CC-4850-5604-2A1E-889F903FFF03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[74]";
createNode polyConnectComponents -n "polyConnectComponents18";
	rename -uid "AE482CB3-4B54-A994-EFC7-1AABEC6CEC87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[66]";
createNode polyConnectComponents -n "polyConnectComponents19";
	rename -uid "AA1832A9-4959-3061-8DE8-EEAB35B88505";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[122]";
createNode polyConnectComponents -n "polyConnectComponents20";
	rename -uid "4860B4F1-45CC-6E30-5F3D-8891D82C278D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[114]";
createNode polyConnectComponents -n "polyConnectComponents21";
	rename -uid "A8FC54A1-4938-4840-649F-B7AE0CB1BBB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[106]";
createNode polyConnectComponents -n "polyConnectComponents22";
	rename -uid "4B259A62-430B-EC1B-6536-41966D3712ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[98]";
createNode polyConnectComponents -n "polyConnectComponents23";
	rename -uid "4F5E0FC9-43EA-E0FD-AF77-25832491EA99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[90]";
createNode polyConnectComponents -n "polyConnectComponents24";
	rename -uid "65D4A769-481E-E982-9672-3C8BCFCDA89F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[121]";
createNode polyBevel3 -n "polyBevel2";
	rename -uid "54E2EA85-49A1-8F79-0EBB-2286D9061FF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[48:96]" "e[98]" "e[101]" "e[104]" "e[107]" "e[110]" "e[113]" "e[116]" "e[120:135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999996;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyMoveEdge -n "polyMoveEdge4";
	rename -uid "CD3147FB-489D-327F-BE03-E5A7D8B72B9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:55]" "e[320:328]" "e[330]" "e[332]" "e[334]" "e[336]" "e[338]" "e[340]" "e[342]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-08 -0.14747149 2.9802322e-08 ;
	setAttr ".rs" 46322;
	setAttr ".lt" -type "double3" 2.4286128663675299e-17 4.3368086899420177e-19 0.015692888319374546 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "FCB4DF81-45AA-B5CC-34F7-01885DCB1D56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:55]" "e[320:328]" "e[330]" "e[332]" "e[334]" "e[336]" "e[338]" "e[340]" "e[342]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPoke -n "polyPoke1";
	rename -uid "9333BC2B-41C5-E1AC-BB02-42850E415419";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "ED30E0A5-4B79-5671-8634-89B6D044A3C0";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[289]" -type "float3" 0.0018178037 0.00029059075 -0.016179901 ;
	setAttr ".tk[290]" -type "float3" 0.010155536 0.00029059075 -0.012726296 ;
	setAttr ".tk[293]" -type "float3" -0.010155533 0.00029059075 -0.012726296 ;
	setAttr ".tk[294]" -type "float3" -0.0018178034 0.00029059075 -0.016179901 ;
	setAttr ".tk[297]" -type "float3" -0.016179904 0.00029059075 -0.0018178034 ;
	setAttr ".tk[298]" -type "float3" -0.012726296 0.00029059075 -0.010155532 ;
	setAttr ".tk[301]" -type "float3" -0.012726296 0.00029059075 0.010155534 ;
	setAttr ".tk[302]" -type "float3" -0.016179901 0.00029059075 0.0018178037 ;
	setAttr ".tk[305]" -type "float3" -0.0018178034 0.00029059075 0.016179901 ;
	setAttr ".tk[306]" -type "float3" -0.010155532 0.00029059075 0.012726299 ;
	setAttr ".tk[309]" -type "float3" 0.010155536 0.00029059075 0.012726296 ;
	setAttr ".tk[310]" -type "float3" 0.0018178062 0.00029059075 0.016179901 ;
	setAttr ".tk[313]" -type "float3" 0.016179901 0.00029059075 0.0018178008 ;
	setAttr ".tk[314]" -type "float3" 0.012726299 0.00029059075 0.010155533 ;
	setAttr ".tk[317]" -type "float3" 0.012726296 0.00029059075 -0.010155533 ;
	setAttr ".tk[318]" -type "float3" 0.016179901 0.00029059075 -0.0018178031 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "67B6679C-41CD-D4F2-D068-4EBE722A3F68";
	setAttr ".ics" -type "componentList" 2 "f[66]" "f[306:320]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7252903e-09 0.49263179 0 ;
	setAttr ".rs" 56224;
	setAttr ".lt" -type "double3" 3.1763735522036263e-22 -3.6435712893593399e-18 0.34218162739792751 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.072574399411678314 0.49263176321983337 -0.072574391961097717 ;
	setAttr ".cbx" -type "double3" 0.072574391961097717 0.49263185262680054 0.072574391961097717 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2E4354C2-4933-0429-5BD3-CFB936203817";
	setAttr ".ics" -type "componentList" 2 "f[66]" "f[306:320]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7252903e-09 0.83481342 -2.4586916e-07 ;
	setAttr ".rs" 44693;
	setAttr ".lt" -type "double3" -8.9957545976366866e-18 2.6433251305846544e-17 0.20428536005108591 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.072574809193611145 0.83481335639953613 -0.072574615478515625 ;
	setAttr ".cbx" -type "double3" 0.072574801743030548 0.83481347560882568 0.072574123740196228 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "DC24B397-4AE0-F83E-8D18-BB9CCCDD0088";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[626]" "e[629]" "e[631]" "e[633]" "e[635]" "e[637]" "e[639]" "e[641:642]" "e[644]" "e[646]" "e[648]" "e[650]" "e[652]" "e[654:655]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "023F4398-44B4-8760-A45F-FE9D4141202D";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[336:352]" -type "float3"  -0.01251939 0.0030419985 0.087803759
		 -0.012519395 0.016409555 0.089045458 -0.012519396 0.0058952365 0.088068776 -0.012519397
		 0.029777125 0.090287127 -0.012519398 0.026923843 0.090022124 -0.01251939 0.029777128
		 0.090287127 -0.012519399 0.026924001 0.090022124 -0.012519399 0.024800036 0.08982487
		 -0.012519393 0.017911345 0.089184962 -0.012519395 0.01490772 0.088905938 -0.012519393
		 0.0080192471 0.088266052 -0.012519399 0.0030420069 0.087803774 -0.012519388 0.0058951881
		 0.088068761 -0.012519395 0.0080190692 0.088266037 -0.012519395 0.014907612 0.088905953
		 -0.012519395 0.017911445 0.089184962 -0.012519392 0.024799943 0.08982487;
createNode polyPoke -n "polyPoke2";
	rename -uid "518B4C55-4654-ECF2-2AD4-E3A67B1F0C27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "DCC01369-4733-FF87-A0E3-F3B3EC249215";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[337:368]" -type "float3"  0 -0.039555315 0 0 -0.045496516
		 -0.00043463442 0 -0.039555315 0 0 -0.044232652 -0.00035725665 0 -0.039555315 0 -4.6566129e-10
		 -0.033596948 0.00011058182 0 -0.039555315 0 4.6566129e-10 -0.034871727 6.938204e-05
		 0 -0.039555315 0 4.6566129e-10 -0.033600263 0.00011823763 0 -0.039555315 0 0 -0.034882668
		 9.4563162e-05 0 -0.039555315 0 0 -0.035843499 8.9754394e-05 0 -0.039555315 0 0 -0.039027471
		 0.00021655209 0 -0.039555315 0 5.8207661e-11 -0.040251303 -9.7268174e-05 0 -0.039555315
		 0 0 -0.043304849 -0.00027240266 0 -0.039555315 0 0 -0.045501001 -0.00042511887 0
		 -0.039555315 0 0 -0.044246309 -0.00032808946 0 -0.039555315 0 -2.3283064e-10 -0.043318305
		 -0.00024353841 0 -0.039555315 0 0 -0.040368881 0.00016202015 0 -0.039555315 0 0 -0.03891331
		 -3.7719386e-05 0 -0.039555315 0 2.3283064e-10 -0.03583223 6.4093758e-05;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "0A024BBF-4D45-4A89-A1BC-6FAF0C9EA06D";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "polyPoke2.out" "citrouilleShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "citrouilleShape.wm" "polyBevel1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyConnectComponents1.ip";
connectAttr "polyBevel1.out" "polyTweak2.ip";
connectAttr "polyConnectComponents1.out" "polyConnectComponents2.ip";
connectAttr "polyConnectComponents2.out" "polyConnectComponents3.ip";
connectAttr "polyConnectComponents3.out" "polyConnectComponents4.ip";
connectAttr "polyConnectComponents4.out" "polyConnectComponents5.ip";
connectAttr "polyConnectComponents5.out" "polyConnectComponents6.ip";
connectAttr "polyConnectComponents6.out" "polyConnectComponents7.ip";
connectAttr "polyConnectComponents7.out" "polyConnectComponents8.ip";
connectAttr "polyConnectComponents8.out" "polyMoveEdge1.ip";
connectAttr "citrouilleShape.wm" "polyMoveEdge1.mp";
connectAttr "polyMoveEdge1.out" "polyMoveEdge2.ip";
connectAttr "citrouilleShape.wm" "polyMoveEdge2.mp";
connectAttr "polyMoveEdge2.out" "polyMoveEdge3.ip";
connectAttr "citrouilleShape.wm" "polyMoveEdge3.mp";
connectAttr "polyTweak3.out" "polyConnectComponents9.ip";
connectAttr "polyMoveEdge3.out" "polyTweak3.ip";
connectAttr "polyConnectComponents9.out" "polyConnectComponents10.ip";
connectAttr "polyConnectComponents10.out" "polyConnectComponents11.ip";
connectAttr "polyConnectComponents11.out" "polyConnectComponents12.ip";
connectAttr "polyConnectComponents12.out" "polyConnectComponents13.ip";
connectAttr "polyConnectComponents13.out" "polyConnectComponents14.ip";
connectAttr "polyConnectComponents14.out" "polyConnectComponents15.ip";
connectAttr "polyConnectComponents15.out" "polyConnectComponents16.ip";
connectAttr "polyConnectComponents16.out" "polyConnectComponents17.ip";
connectAttr "polyConnectComponents17.out" "polyConnectComponents18.ip";
connectAttr "polyConnectComponents18.out" "polyConnectComponents19.ip";
connectAttr "polyConnectComponents19.out" "polyConnectComponents20.ip";
connectAttr "polyConnectComponents20.out" "polyConnectComponents21.ip";
connectAttr "polyConnectComponents21.out" "polyConnectComponents22.ip";
connectAttr "polyConnectComponents22.out" "polyConnectComponents23.ip";
connectAttr "polyConnectComponents23.out" "polyConnectComponents24.ip";
connectAttr "polyConnectComponents24.out" "polyBevel2.ip";
connectAttr "citrouilleShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyMoveEdge4.ip";
connectAttr "citrouilleShape.wm" "polyMoveEdge4.mp";
connectAttr "polyMoveEdge4.out" "polyBevel3.ip";
connectAttr "citrouilleShape.wm" "polyBevel3.mp";
connectAttr "polyTweak4.out" "polyPoke1.ip";
connectAttr "citrouilleShape.wm" "polyPoke1.mp";
connectAttr "polyBevel3.out" "polyTweak4.ip";
connectAttr "polyPoke1.out" "polyExtrudeFace1.ip";
connectAttr "citrouilleShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "citrouilleShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak5.out" "polyBevel4.ip";
connectAttr "citrouilleShape.wm" "polyBevel4.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyPoke2.ip";
connectAttr "citrouilleShape.wm" "polyPoke2.mp";
connectAttr "polyBevel4.out" "polyTweak6.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "citrouilleShape.iog" ":initialShadingGroup.dsm" -na;
// End of Citrouille.ma
