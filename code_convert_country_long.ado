/***** ISO 3 numeric codes *****/

program code_convert_country_long
version 16.0

syntax , from_cl(name) to_cl(name)

tempvar _from_clean
qui gen `_from_clean' = lower(`from_cl')
qui replace `_from_clean' = subinstr(`_from_clean',"the ","",.)

tempvar _names_std
qui gen `_names_std' = ""

qui {
replace `_names_std' = "Afghanistan" if inlist(`_from_clean',"afghanistan","afghan","afganistan")
replace `_names_std' = "Albania" if inlist(`_from_clean',"albania")
replace `_names_std' = "Algeria" if inlist(`_from_clean',"algeria")
replace `_names_std' = "American Samoa" if inlist(`_from_clean',"american samoa","eastern samoa","samoa american")
replace `_names_std' = "Andorra" if inlist(`_from_clean',"andorra")
replace `_names_std' = "Angola" if inlist(`_from_clean',"angola")
replace `_names_std' = "Anguilla" if inlist(`_from_clean',"anguilla")
replace `_names_std' = "Antigua and Barbuda" if inlist(`_from_clean',"antigua and barbuda","antigua barbuda","antigua barbuda")
replace `_names_std' = "Argentina" if inlist(`_from_clean',"argentina","argent")
replace `_names_std' = "Armenia" if inlist(`_from_clean',"armenia")
replace `_names_std' = "Aruba" if inlist(`_from_clean',"aruba")
replace `_names_std' = "Australia" if inlist(`_from_clean',"australia","austral")
replace `_names_std' = "Austria" if inlist(`_from_clean',"austria")
replace `_names_std' = "Austria-Hungary" if inlist(`_from_clean',"austriahungary")
replace `_names_std' = "Azerbaijan" if inlist(`_from_clean',"azerbaijan")
replace `_names_std' = "Azores" if inlist(`_from_clean',"azores")
replace `_names_std' = "Baden" if inlist(`_from_clean',"baden")
replace `_names_std' = "Bahamas" if inlist(`_from_clean',"bahamas")
replace `_names_std' = "Bahrain" if inlist(`_from_clean',"bahrain")
replace `_names_std' = "Bangladesh" if inlist(`_from_clean',"bangladesh","bngldsh")
replace `_names_std' = "Barbados" if inlist(`_from_clean',"barbados","barbado")
replace `_names_std' = "Bavaria" if inlist(`_from_clean',"bavaria")
replace `_names_std' = "Belarus" if inlist(`_from_clean',"belarus","byelorussia","belarus byelorussia")
replace `_names_std' = "Belgium" if inlist(`_from_clean',"belgium")
replace `_names_std' = "Belize" if inlist(`_from_clean',"belize")
replace `_names_std' = "Benin" if inlist(`_from_clean',"benin","dahomey","benin/dahomey","benin dahomey")
replace `_names_std' = "Bermuda" if inlist(`_from_clean',"bermuda")
replace `_names_std' = "Bhutan" if inlist(`_from_clean',"bhutan")
replace `_names_std' = "Bolivia" if inlist(`_from_clean',"bolivia")
replace `_names_std' = "Bonaire" if inlist(`_from_clean',"bonaire")
replace `_names_std' = "Bosnia and Herzegovina" if inlist(`_from_clean',"bosnia and herzegovina","bosnia herzegovina","bosnia/herzogovina","bosnia","bosnia/herzegovina","bosnia and hercegovina","bosnia hercegovina") | inlist(`_from_clean',"bosnia/hercogovina","bosnia hercegovina","bosnia/hercegovina","bosniahercegovina","bosniaherzegovina","bosniaherzegov","bosniahercegov") | inlist(`_from_clean',"bosnia herzegov","bosnia hercegov","bosniaher")
replace `_names_std' = "Botswana" if inlist(`_from_clean',"botswana")
replace `_names_std' = "Brazil" if inlist(`_from_clean',"brazil")
replace `_names_std' = "Brunei" if inlist(`_from_clean',"brunei","brunei darussalam")
replace `_names_std' = "Bulgaria" if inlist(`_from_clean',"bulgaria")
replace `_names_std' = "Burkina Faso" if inlist(`_from_clean',"burkina faso","upper volta","burkina faso upper volta","upp","hvo","burkina")
replace `_names_std' = "Burundi" if inlist(`_from_clean',"burundi")
replace `_names_std' = "Cambodia" if inlist(`_from_clean',"cambodia","kampuchea","cambodia kampuchea","cambod","democratic kampuchea")
replace `_names_std' = "Cameroon" if inlist(`_from_clean',"cameroon","cameroun")
replace `_names_std' = "Canada" if inlist(`_from_clean',"canada")
replace `_names_std' = "Canary Islands" if inlist(`_from_clean',"canary islands")
replace `_names_std' = "Cape Verde" if inlist(`_from_clean',"cape verde")
replace `_names_std' = "Cayman Islands" if inlist(`_from_clean',"cayman islands","cayman is")
replace `_names_std' = "Central African Republic" if inlist(`_from_clean',"central african republic","c african rep","central african empire","c_africa","cen african rep")
replace `_names_std' = "Chad" if inlist(`_from_clean',"chad")
replace `_names_std' = "Channel Islands" if inlist(`_from_clean',"channel islands")
replace `_names_std' = "Chile" if inlist(`_from_clean',"chile")
replace `_names_std' = "China" if inlist(`_from_clean',"china","china mainland")
replace `_names_std' = "Christmas Islands" if inlist(`_from_clean',"christmas islands","christmas is","christmas island")
replace `_names_std' = "Cocos Islands" if inlist(`_from_clean',"cocos islands","cocos keeling islands","cocos is")
replace `_names_std' = "Colombia" if inlist(`_from_clean',"colombia")
replace `_names_std' = "Comoros" if inlist(`_from_clean',"comoros")
replace `_names_std' = "Democratic Republic of Congo" if inlist(`_from_clean',"democratic republic of congo","dem rep congo","congo dem r","zaire congo kinshasa","congo dr zaire","congo dem rep","zaire/dem rep of congo") | inlist(`_from_clean',"congo droc","congo kinshasa","zaire","zaire democratic republic of congo","congo democratic republic of","congo democratic rep of")
replace `_names_std' = "Congo" if inlist(`_from_clean',"congo","rep of congo","congo rep of","congo brazaville","congo brazzaville","congo rep","congo brazzaville") | inlist(`_from_clean',"congo brazaville","congo brazaville","congo brazzaville","congo republic of" , "congo roc")
di "test4"
replace `_names_std' = "Cook Islands" if inlist(`_from_clean',"cook islands","cook is")
replace `_names_std' = "Costa Rica" if inlist(`_from_clean',"costa rica","costarica","cos_rica")
replace `_names_std' = "Croatia" if inlist(`_from_clean',"croatia")
replace `_names_std' = "Cuba" if inlist(`_from_clean',"cuba")
replace `_names_std' = "Curacao" if inlist(`_from_clean',"curacao")
replace `_names_std' = "Cyprus" if inlist(`_from_clean',"cyprus")
replace `_names_std' = "Czech Republic" if inlist(`_from_clean',"czech republic","czechrep","czech rep","czech republic ")
replace `_names_std' = "Czechoslovakia" if inlist(`_from_clean',"czechoslovakia","czechoslovakia former","czecho")
replace `_names_std' = "Denmark" if inlist(`_from_clean',"denmark")
replace `_names_std' = "Djibouti" if inlist(`_from_clean',"djibouti")
replace `_names_std' = "Dominica" if inlist(`_from_clean',"dominica","dominica is")
replace `_names_std' = "Dominican Republic" if inlist(`_from_clean',"dominican republic","dominican rep","dom_rep")
replace `_names_std' = "Easter Island" if inlist(`_from_clean',"easter island")
replace `_names_std' = "Ecuador" if inlist(`_from_clean',"ecuador")
replace `_names_std' = "Egypt" if inlist(`_from_clean',"egypt","uar","egypt/uar","egypt uar","united arab republic","egypt arab rep")
replace `_names_std' = "El Salvador" if inlist(`_from_clean',"el salvador","salvador","salvadr")
replace `_names_std' = "Equatorial Guinea" if inlist(`_from_clean',"equatorial guinea","eq_gnea","guinea equatorial","eq guinea")
replace `_names_std' = "Eritrea" if inlist(`_from_clean',"eritrea")
replace `_names_std' = "Estonia" if inlist(`_from_clean',"estonia")
replace `_names_std' = "Ethiopia" if inlist(`_from_clean',"ethiopia","ethiopia 8993")
replace `_names_std' = "European Union" if inlist(`_from_clean',"european union","eu","european community")
replace `_names_std' = "Faeroe Islands" if inlist(`_from_clean',"faeroe islands","faroe islands","faeroe is","faroe is")
replace `_names_std' = "Falkland Islands" if inlist(`_from_clean',"falkland islands","falkland islands malvinas","malvinas","falkland is","falk_is")
replace `_names_std' = "Fiji" if inlist(`_from_clean',"fiji")
replace `_names_std' = "Finland" if inlist(`_from_clean',"finland")
replace `_names_std' = "France" if inlist(`_from_clean',"france")
replace `_names_std' = "French Polynesia" if inlist(`_from_clean',"french polynesia","fr polynesia")
replace `_names_std' = "Gabon" if inlist(`_from_clean',"gabon")
replace `_names_std' = "Gambia" if inlist(`_from_clean',"gambia")
replace `_names_std' = "Georgia" if inlist(`_from_clean',"georgia")
replace `_names_std' = "German Democratic Republic" if inlist(`_from_clean',"german democratic republic","east germany","german democratic rep","german democratic republic former","germany dr","german_e","germany east")
replace `_names_std' = "Germany" if inlist(`_from_clean',"germany","prussia","germany/prussia","german federal republic","west germany","germany federal republic of","federal republic of germany") | inlist(`_from_clean',"german","germany west")
replace `_names_std' = "Ghana" if inlist(`_from_clean',"ghana")
replace `_names_std' = "Gibraltar" if inlist(`_from_clean',"gibraltar","gilbraltar","gilbralt")
replace `_names_std' = "Greece" if inlist(`_from_clean',"greece")
replace `_names_std' = "Greenland" if inlist(`_from_clean',"greenland","greenld")
replace `_names_std' = "Grenada" if inlist(`_from_clean',"grenada","grenada is")
replace `_names_std' = "Guadeloupe" if inlist(`_from_clean',"guadeloupe","guadlpe")
replace `_names_std' = "Guam" if inlist(`_from_clean',"guam")
replace `_names_std' = "Guatemala" if inlist(`_from_clean',"guatemala","guatmala")
replace `_names_std' = "Guinea" if inlist(`_from_clean',"guinea")
replace `_names_std' = "Guinea-Bissau" if inlist(`_from_clean',"guineabissau","guinea bissau","g bissau","g_bissau","g_bisau")
replace `_names_std' = "Guyana" if inlist(`_from_clean',"guyana")
replace `_names_std' = "French Guiana" if inlist(`_from_clean',"french guiana","guiana","guyana french","fr_guian","guiana french")
replace `_names_std' = "Haiti" if inlist(`_from_clean',"haiti")
replace `_names_std' = "Hanover" if inlist(`_from_clean',"hanover")
replace `_names_std' = "Hesse Electoral" if inlist(`_from_clean',"hesse electoral")
replace `_names_std' = "Hesse Grand Ducal" if inlist(`_from_clean',"hesse grand ducal")
replace `_names_std' = "Honduras" if inlist(`_from_clean',"honduras","hondura")
replace `_names_std' = "Hong Kong" if inlist(`_from_clean',"hong kong","china hong kong special administrative region","hongkong","hong kong special administrative region of china","hong kong china")
replace `_names_std' = "Hungary" if inlist(`_from_clean',"hungary")
replace `_names_std' = "Iceland" if inlist(`_from_clean',"iceland")
replace `_names_std' = "India" if inlist(`_from_clean',"india")
replace `_names_std' = "Indonesia" if inlist(`_from_clean',"indonesia","indones")
replace `_names_std' = "Iran" if inlist(`_from_clean',"iran","persia","iran persia","iran islamic republic of","iran islamic republic of","iran islamic rep")
replace `_names_std' = "Iraq" if inlist(`_from_clean',"iraq")
replace `_names_std' = "Ireland" if inlist(`_from_clean',"ireland","eire")
replace `_names_std' = "Israel" if inlist(`_from_clean',"israel","israel 1989")
replace `_names_std' = "Italy" if inlist(`_from_clean',"italy","italy/sardinia")
replace `_names_std' = "Cote d'Ivoire" if inlist(`_from_clean',"cote d'ivoire","ivory coast","ivy_cst","c�te d'ivoire","cote d'ivoire")
replace `_names_std' = "Jamaica" if inlist(`_from_clean',"jamaica")
replace `_names_std' = "Japan" if inlist(`_from_clean',"japan")
replace `_names_std' = "Jordan" if inlist(`_from_clean',"jordan","jordon")
replace `_names_std' = "Kazakhstan" if inlist(`_from_clean',"kazakhstan","kazakstan")
replace `_names_std' = "Kenya" if inlist(`_from_clean',"kenya")
replace `_names_std' = "Kyrgyz Republic" if inlist(`_from_clean',"kyrgyz republic","kyrghyz republic","kez","kirgizia","kirghistan","kyrgyzstan","kyrgyz rep","kyrgystan")
replace `_names_std' = "Kiribati" if inlist(`_from_clean',"kiribati","gilbert islands")
replace `_names_std' = "South Korea" if inlist(`_from_clean',"south korea","s korea","korea","korea republic of","korea_s","korea rep of","korea rep") | inlist(`_from_clean',"korea south","republic of korea","korea south republic of","republic of korea seoul")
replace `_names_std' = "North Korea" if inlist(`_from_clean',"north korea","korea dem people's rep","democratic people's republic of korea","korea democratic people's republic of","n korea","korea_n","korea north") | inlist(`_from_clean',"korea demo people's rep of")
replace `_names_std' = "Kuwait" if inlist(`_from_clean',"kuwait")
replace `_names_std' = "Laos" if inlist(`_from_clean',"laos","lao people's democratic republic","lao","lao pdr")
replace `_names_std' = "Latvia" if inlist(`_from_clean',"latvia")
replace `_names_std' = "Lebanon" if inlist(`_from_clean',"lebanon")
replace `_names_std' = "Leeward Islands" if inlist(`_from_clean',"leeward islands")
replace `_names_std' = "Lesotho" if inlist(`_from_clean',"lesotho")
replace `_names_std' = "Liberia" if inlist(`_from_clean',"liberia")
replace `_names_std' = "Libya" if inlist(`_from_clean',"libya","libyan arab jamahiriya")
replace `_names_std' = "Liechtenstein" if inlist(`_from_clean',"liechtenstein")
replace `_names_std' = "Lithuania" if inlist(`_from_clean',"lithuania")
replace `_names_std' = "Luxembourg" if inlist(`_from_clean',"luxembourg")
replace `_names_std' = "Macao" if inlist(`_from_clean',"macao","china macao special administrative region","macau","macao special administrative region of china","macao china")
replace `_names_std' = "Macedonia" if inlist(`_from_clean',"macedonia","former yugoslav republic of macedonia","macedonia fyr","macedonia tfyr")
replace `_names_std' = "Madagascar" if inlist(`_from_clean',"madagascar","malagasy","malagasy republic","madagas")
replace `_names_std' = "Malawi" if inlist(`_from_clean',"malawi")
replace `_names_std' = "Malaysia" if inlist(`_from_clean',"malaysia")
replace `_names_std' = "Maldives" if inlist(`_from_clean',"maldives","maldive islands","maldive is")
replace `_names_std' = "Mali" if inlist(`_from_clean',"mali")
replace `_names_std' = "Malta" if inlist(`_from_clean',"malta")
replace `_names_std' = "Marshall Islands" if inlist(`_from_clean',"marshall islands","marshall is")
replace `_names_std' = "Martinique" if inlist(`_from_clean',"martinique")
replace `_names_std' = "Mauritania" if inlist(`_from_clean',"mauritania","mauritn")
replace `_names_std' = "Mauritius" if inlist(`_from_clean',"mauritius","mritius")
replace `_names_std' = "Mayotte" if inlist(`_from_clean',"mayotte","may")
replace `_names_std' = "Meckelnburg Schwerin" if inlist(`_from_clean',"meckelnburg schwerin")
replace `_names_std' = "Mexico" if inlist(`_from_clean',"mexico")
replace `_names_std' = "Micronesia" if inlist(`_from_clean',"micronesia","federated states of micronesia","micronesia federated states of","f st micronesia","micronesia fed sts")
replace `_names_std' = "Modena" if inlist(`_from_clean',"modena")
replace `_names_std' = "Moldova" if inlist(`_from_clean',"moldova","moldavia","moldova moldavia","republic of moldova","moldova republic of")
replace `_names_std' = "Monaco" if inlist(`_from_clean',"monaco")
replace `_names_std' = "Mongolia" if inlist(`_from_clean',"mongolia","mongola")
replace `_names_std' = "Montenegro" if inlist(`_from_clean',"montenegro")
replace `_names_std' = "Montserrat" if inlist(`_from_clean',"montserrat","montserrat is")
replace `_names_std' = "Morocco" if inlist(`_from_clean',"morocco")
replace `_names_std' = "Mozambique" if inlist(`_from_clean',"mozambique","mozambq")
replace `_names_std' = "Myanmar" if inlist(`_from_clean',"myanmar","burma","bur","myanmar burma","burma myanmar","burma/myanmar","myanmar/burma","myanmar exburma")
replace `_names_std' = "Namibia" if inlist(`_from_clean',"namibia")
replace `_names_std' = "Nauru" if inlist(`_from_clean',"nauru")
replace `_names_std' = "Nepal" if inlist(`_from_clean',"nepal")
replace `_names_std' = "Netherlands" if inlist(`_from_clean',"nerlands","holland","nethlds")
replace `_names_std' = "Netherlands Antilles" if inlist(`_from_clean',"nerlands antilles","nerlands ant","n_antil","neth ant","n_antilles","antilles nerlands")
replace `_names_std' = "New Caledonia" if inlist(`_from_clean',"new caledonia","new_cale","new cale","n caledonia","n_caledonia")
replace `_names_std' = "New Zealand" if inlist(`_from_clean',"new zealand","new_zeal")
replace `_names_std' = "Nicaragua" if inlist(`_from_clean',"nicaragua","nicaraga")
replace `_names_std' = "Niger" if inlist(`_from_clean',"niger")
replace `_names_std' = "Nigeria" if inlist(`_from_clean',"nigeria")
replace `_names_std' = "Niue" if inlist(`_from_clean',"niue")
replace `_names_std' = "Norway" if inlist(`_from_clean',"norway")
replace `_names_std' = "Oman" if inlist(`_from_clean',"oman")
replace `_names_std' = "Pakistan" if inlist(`_from_clean',"pakistan")
replace `_names_std' = "Palau" if inlist(`_from_clean',"palau")
replace `_names_std' = "Palestine" if inlist(`_from_clean',"palestine","west bank and gaza","palestinian administration areas / west bank and gaza","palestinian administration areas","palestinian territory")
replace `_names_std' = "Panama" if inlist(`_from_clean',"panama")
replace `_names_std' = "Papua New Guinea" if inlist(`_from_clean',"papua new guinea","papua ng","pap new guinea","p new guinea","new guinea","papua and new guinea","papua n g") | inlist(`_from_clean',"papua new guin","new_guinea","new_guin")
replace `_names_std' = "Paraguay" if inlist(`_from_clean',"paraguay","paragua")
replace `_names_std' = "Parma" if inlist(`_from_clean',"parma")
replace `_names_std' = "Peru" if inlist(`_from_clean',"peru")
replace `_names_std' = "Philippines" if inlist(`_from_clean',"philippines","phil")
replace `_names_std' = "Poland" if inlist(`_from_clean',"poland")
replace `_names_std' = "Portugal" if inlist(`_from_clean',"portugal")
replace `_names_std' = "Puerto Rico" if inlist(`_from_clean',"puerto rico")
replace `_names_std' = "Qatar" if inlist(`_from_clean',"qatar")
replace `_names_std' = "Reunion" if inlist(`_from_clean',"reunion","r�union")
replace `_names_std' = "Romania" if inlist(`_from_clean',"romania","rumania")
replace `_names_std' = "Russia" if inlist(`_from_clean',"russia","ussr","russian federation","sun","russia/soviet union","union of soviet socialist republics former","union of soviet socialist republics") | inlist(`_from_clean',"russia russian federation","union of soviet socialist republics ussr","ussr soviet union")
replace `_names_std' = "Rwanda" if inlist(`_from_clean',"rwanda")
replace `_names_std' = "Saint Helena" if inlist(`_from_clean',"saint helena" ,"st helena","s_helna")
replace `_names_std' = "Saint Kitts and Nevis" if inlist(`_from_clean',"saint kitts and nevis","st kittsnevis","st_k_nev","st kitts and nevis","saint kitts nevis","saint kittsnevis")
replace `_names_std' = "Saint Lucia" if inlist(`_from_clean',"saint lucia","st lucia","st lucia is")
replace `_names_std' = "Saint Pierre and Miquelon" if inlist(`_from_clean',"saint pierre and miquelon","saint pierre miquelon","st pierre miq")
replace `_names_std' = "Saint Vincent and the Grenadines" if inlist(`_from_clean',"saint vincent and grenadines","st vincent grenadines","saint vincent","st vinc gren","st vinc and gren","st vincent and grenadines","saint vincent grenadines")
replace `_names_std' = "San Marino" if inlist(`_from_clean',"san marino")
replace `_names_std' = "Sao Tome and Principe" if inlist(`_from_clean',"sao tome and principe","sao tome principe","sao tomeprincipe","sao tome and prin","sao tome prin")
replace `_names_std' = "Saudi Arabia" if inlist(`_from_clean',"saudi arabia","sd_arab","arabia saudi")
replace `_names_std' = "Saxony" if inlist(`_from_clean',"saxony")
replace `_names_std' = "Senegal" if inlist(`_from_clean',"senegal")
replace `_names_std' = "Seychelles" if inlist(`_from_clean',"seychelles","seychel")
replace `_names_std' = "Sierra Leone" if inlist(`_from_clean',"sierra leone","sier_ln")
replace `_names_std' = "Singapore" if inlist(`_from_clean',"singapore","singapr")
replace `_names_std' = "Slovak Republic" if inlist(`_from_clean',"slovak republic","slovakia")
replace `_names_std' = "Slovenia" if inlist(`_from_clean',"slovenia")
replace `_names_std' = "Solomon Islands" if inlist(`_from_clean',"solomon islands","solomon is")
replace `_names_std' = "Somalia" if inlist(`_from_clean',"somalia")
replace `_names_std' = "South Africa" if inlist(`_from_clean',"south africa","s_africa","s africa")
replace `_names_std' = "South Sudan" if inlist(`_from_clean',"south sudan","republic of south sudan","rep of south sudan","rep of s sudan","south sudan rep of","south sudan republic of")
replace `_names_std' = "Spain" if inlist(`_from_clean',"spain")
replace `_names_std' = "Sri Lanka" if inlist(`_from_clean',"sri lanka","ceylon","sri lanka ceylon","sri_lka","sri lanka exceilan")
replace `_names_std' = "Sudan" if inlist(`_from_clean',"sudan")
replace `_names_std' = "Suriname" if inlist(`_from_clean',"suriname","surinam")
replace `_names_std' = "Swaziland" if inlist(`_from_clean',"swaziland")
replace `_names_std' = "Sweden" if inlist(`_from_clean',"sweden")
replace `_names_std' = "Switzerland" if inlist(`_from_clean',"switzerland","switzld")
replace `_names_std' = "Syria" if inlist(`_from_clean',"syria","syrian arab republic")
replace `_names_std' = "Tajikistan" if inlist(`_from_clean',"tajikistan","tadzhikistan")
replace `_names_std' = "Taiwan" if inlist(`_from_clean',"taiwan","roc","taipei","oan","china taiwan","taiwan province of china","formosa") | inlist(`_from_clean',"chinataiwanformosa","chinese taipei")
replace `_names_std' = "Tanzania" if inlist(`_from_clean',"tanzania","tanganyika","tanzania/tanganyika","united republic of tanzania","tanzania united republic of")
replace `_names_std' = "Thailand" if inlist(`_from_clean',"thailand")
replace `_names_std' = "Timor" if inlist(`_from_clean',"timor","east timor leste","timor leste","timorleste","east timor timorleste","timorleste east timor","east timor")
replace `_names_std' = "Togo" if inlist(`_from_clean',"togo")
replace `_names_std' = "Tonga" if inlist(`_from_clean',"tonga")
replace `_names_std' = "Trinidad and Tobago" if inlist(`_from_clean',"trinidad and tobago","trinidad tob","trinidad tobago","trinidad","trin and tobago","trin tobago")
replace `_names_std' = "Tunisia" if inlist(`_from_clean',"tunisia")
replace `_names_std' = "Turkey" if inlist(`_from_clean',"turkey","ottoman empire","turkey/ottoman empire")
replace `_names_std' = "Turkmenistan" if inlist(`_from_clean',"turkmenistan","turkmenia","turkmenist")
replace `_names_std' = "Turks and Caicos Islands" if inlist(`_from_clean',"turks and caicos islands","turks caicos islands","turks caicos","turks and caicos","turks caic is")
replace `_names_std' = "Tuscany" if inlist(`_from_clean',"tuscany")
replace `_names_std' = "Tuvalu" if inlist(`_from_clean',"tuvalu")
replace `_names_std' = "Two Sicilies" if inlist(`_from_clean',"two sicilies")
replace `_names_std' = "Uganda" if inlist(`_from_clean',"uganda")
replace `_names_std' = "Ukraine" if inlist(`_from_clean',"ukraine")
replace `_names_std' = "United Arab Emirates" if inlist(`_from_clean',"united arab emirates","unit arab em","united arab emerates","united ae","united a e","arab emirates","arab_em","uae","united arab em")
replace `_names_std' = "United Kingdom" if inlist(`_from_clean',"united kingdom","uk","great britain","britain","ukingdom")
replace `_names_std' = "United States" if inlist(`_from_clean',"united states","usa","us","united states of america")
replace `_names_std' = "Uruguay" if inlist(`_from_clean',"uruguay")
replace `_names_std' = "Uzbekistan" if inlist(`_from_clean',"uzbekistan")
replace `_names_std' = "Vanuatu" if inlist(`_from_clean',"vanuatu","new hebrides")
replace `_names_std' = "Vatican" if inlist(`_from_clean',"vatican","papal states","holy see","vatican city","holy see vatican city state","vatican city state holy see")
replace `_names_std' = "Venezuela" if inlist(`_from_clean',"venezuela","venez","venezuela rb")
replace `_names_std' = "Vietnam" if inlist(`_from_clean',"vietnam","vnmn","vietnam democratic rep","viet nam","vietnam","north vietnam","democratic republic of vietnam")
replace `_names_std' = "Republic of Vietnam" if inlist(`_from_clean',"republic of vietnam","south vietnam","vietnam republic of","south vietnam","republic of	south vietnam")
replace `_names_std' = "British Virgin Islands" if inlist(`_from_clean',"british virgin islands","virgin islands uk","virgin islands british","br virgin is")
replace `_names_std' = "United States Virgin Islands" if inlist(`_from_clean',"united states virgin islands","virgin islands us","us virgin islands")
replace `_names_std' = "Wallis and Futuna" if inlist(`_from_clean',"wallis and futuna","wallis futuna","wallis and futuna islands","wallis futuna islands")
replace `_names_std' = "Western Sahara" if inlist(`_from_clean',"western sahara")
replace `_names_std' = "Samoa" if inlist(`_from_clean',"western samoa","samoa")
replace `_names_std' = "Wuerttemburg" if inlist(`_from_clean',"wuerttemburg")
replace `_names_std' = "Yemen" if inlist(`_from_clean',"yemen","yemen rep")
replace `_names_std' = "Yemen Arab Republic" if inlist(`_from_clean',"yemen arab republic","yemen arab republic former","yemen sanaa","north yemen","arab republic of yemen","yemen ar") | inlist(`_from_clean',"yemen a r","yemen_n","yemen north","yemen north","yemen n")
replace `_names_std' = "Yemen People's Republic" if inlist(`_from_clean',"yemen people's republic","democratic yemen former","yemen aden","south yemen","sourn yemen","yemen people's republic of") | inlist(`_from_clean',"yemen p r","yemen pr","yemen_s","democratic yemen","yemen south","yemen south","yemen s")
replace `_names_std' = "Yugoslavia" if inlist(`_from_clean',"yugoslavia","yugoslavia/serbia","serbia","serbia and montenegro","yugoslavia former socialist federal republic","yugoslavia8992","yugoslav") | inlist(`_from_clean',"serbia montenegro","socialist federal republic of yugoslavia","federal republic of yugoslavia")
replace `_names_std' = "Zambia" if inlist(`_from_clean',"zambia")
replace `_names_std' = "Zanzibar" if inlist(`_from_clean',"zanzibar")
replace `_names_std' = "Zimbabwe" if inlist(`_from_clean',"zimbabwe","rhodesia","zimbabwe rhodesia")
}


* fill supplied variables with iso3c codes
qui {
replace `to_cl' = "AFG" if `_names_std'=="Afghanistan"
replace `to_cl' = "ALB" if `_names_std'=="Albania"
replace `to_cl' = "DZA" if `_names_std'=="Algeria"
replace `to_cl' = "ASM" if `_names_std'=="American Samoa"
replace `to_cl' = "AND" if `_names_std'=="Andorra"
replace `to_cl' = "AGO" if `_names_std'=="Angola"
replace `to_cl' = "AIA" if `_names_std'=="Anguilla"
replace `to_cl' = "ATG" if `_names_std'=="Antigua and Barbuda"
replace `to_cl' = "ARG" if `_names_std'=="Argentina"
replace `to_cl' = "ARM" if `_names_std'=="Armenia"
replace `to_cl' = "ABW" if `_names_std'=="Aruba"
replace `to_cl' = "AUS" if `_names_std'=="Australia"
replace `to_cl' = "AUT" if `_names_std'=="Austria"
replace `to_cl' = "AZE" if `_names_std'=="Azerbaijan"
replace `to_cl' = "BHS" if `_names_std'=="Bahamas"
replace `to_cl' = "BHR" if `_names_std'=="Bahrain"
replace `to_cl' = "BGD" if `_names_std'=="Bangladesh"
replace `to_cl' = "BRB" if `_names_std'=="Barbados"
replace `to_cl' = "BLR" if `_names_std'=="Belarus"
replace `to_cl' = "BEL" if `_names_std'=="Belgium"
replace `to_cl' = "BLZ" if `_names_std'=="Belize"
replace `to_cl' = "BEN" if `_names_std'=="Benin"
replace `to_cl' = "BMU" if `_names_std'=="Bermuda"
replace `to_cl' = "BTN" if `_names_std'=="Bhutan"
replace `to_cl' = "BOL" if `_names_std'=="Bolivia"
replace `to_cl' = "BES" if `_names_std'=="Bonaire"
replace `to_cl' = "BIH" if `_names_std'=="Bosnia and Herzegovina"
replace `to_cl' = "BWA" if `_names_std'=="Botswana"
replace `to_cl' = "BRA" if `_names_std'=="Brazil"
replace `to_cl' = "VGB" if `_names_std'=="British Virgin Islands"
replace `to_cl' = "BRN" if `_names_std'=="Brunei"
replace `to_cl' = "BGR" if `_names_std'=="Bulgaria"
replace `to_cl' = "BFA" if `_names_std'=="Burkina Faso"
replace `to_cl' = "BDI" if `_names_std'=="Burundi"
replace `to_cl' = "KHM" if `_names_std'=="Cambodia"
replace `to_cl' = "CMR" if `_names_std'=="Cameroon"
replace `to_cl' = "CAN" if `_names_std'=="Canada"
replace `to_cl' = "CPV" if `_names_std'=="Cape Verde"
replace `to_cl' = "CYM" if `_names_std'=="Cayman Islands"
replace `to_cl' = "CAF" if `_names_std'=="Central African Republic"
replace `to_cl' = "TCD" if `_names_std'=="Chad"
replace `to_cl' = "CHL" if `_names_std'=="Chile"
replace `to_cl' = "CHN" if `_names_std'=="China"
replace `to_cl' = "CXR" if `_names_std'=="Christmas Islands"
replace `to_cl' = "CCK" if `_names_std'=="Cocos Islands"
replace `to_cl' = "COL" if `_names_std'=="Colombia"
replace `to_cl' = "COM" if `_names_std'=="Comoros"
replace `to_cl' = "COG" if `_names_std'=="Congo"
replace `to_cl' = "COK" if `_names_std'=="Cook Islands"
replace `to_cl' = "CRI" if `_names_std'=="Costa Rica"
replace `to_cl' = "CIV" if `_names_std'=="Cote d'Ivoire"
replace `to_cl' = "HRV" if `_names_std'=="Croatia"
replace `to_cl' = "CUB" if `_names_std'=="Cuba"
replace `to_cl' = "CYP" if `_names_std'=="Cyprus"
replace `to_cl' = "CZE" if `_names_std'=="Czech Republic"
replace `to_cl' = "COD" if `_names_std'=="Democratic Republic of Congo"
replace `to_cl' = "DNK" if `_names_std'=="Denmark"
replace `to_cl' = "DJI" if `_names_std'=="Djibouti"
replace `to_cl' = "DMA" if `_names_std'=="Dominica"
replace `to_cl' = "DOM" if `_names_std'=="Dominican Republic"
replace `to_cl' = "ECU" if `_names_std'=="Ecuador"
replace `to_cl' = "EGY" if `_names_std'=="Egypt"
replace `to_cl' = "SLV" if `_names_std'=="El Salvador"
replace `to_cl' = "GNQ" if `_names_std'=="Equatorial Guinea"
replace `to_cl' = "ERI" if `_names_std'=="Eritrea"
replace `to_cl' = "EST" if `_names_std'=="Estonia"
replace `to_cl' = "ETH" if `_names_std'=="Ethiopia"
replace `to_cl' = "FRO" if `_names_std'=="Faeroe Islands"
replace `to_cl' = "FLK" if `_names_std'=="Falkland Islands"
replace `to_cl' = "FJI" if `_names_std'=="Fiji"
replace `to_cl' = "FIN" if `_names_std'=="Finland"
replace `to_cl' = "FRA" if `_names_std'=="France"
replace `to_cl' = "GUF" if `_names_std'=="French Guiana"
replace `to_cl' = "PYF" if `_names_std'=="French Polynesia"
replace `to_cl' = "GAB" if `_names_std'=="Gabon"
replace `to_cl' = "GMB" if `_names_std'=="Gambia"
replace `to_cl' = "GEO" if `_names_std'=="Georgia"
replace `to_cl' = "GDR" if `_names_std'=="German Democratic Republic"
replace `to_cl' = "DEU" if `_names_std'=="Germany"
replace `to_cl' = "GHA" if `_names_std'=="Ghana"
replace `to_cl' = "GIB" if `_names_std'=="Gibraltar"
replace `to_cl' = "GRC" if `_names_std'=="Greece"
replace `to_cl' = "GRL" if `_names_std'=="Greenland"
replace `to_cl' = "GRD" if `_names_std'=="Grenada"
replace `to_cl' = "GLP" if `_names_std'=="Guadeloupe"
replace `to_cl' = "GUM" if `_names_std'=="Guam"
replace `to_cl' = "GTM" if `_names_std'=="Guatemala"
replace `to_cl' = "GIN" if `_names_std'=="Guinea"
replace `to_cl' = "GNB" if `_names_std'=="Guinea-Bissau"
replace `to_cl' = "GUY" if `_names_std'=="Guyana"
replace `to_cl' = "HTI" if `_names_std'=="Haiti"
replace `to_cl' = "HND" if `_names_std'=="Honduras"
replace `to_cl' = "HKG" if `_names_std'=="Hong Kong"
replace `to_cl' = "HUN" if `_names_std'=="Hungary"
replace `to_cl' = "ISL" if `_names_std'=="Iceland"
replace `to_cl' = "IND" if `_names_std'=="India"
replace `to_cl' = "IDN" if `_names_std'=="Indonesia"
replace `to_cl' = "IRN" if `_names_std'=="Iran"
replace `to_cl' = "IRQ" if `_names_std'=="Iraq"
replace `to_cl' = "IRL" if `_names_std'=="Ireland"
replace `to_cl' = "ISR" if `_names_std'=="Israel"
replace `to_cl' = "ITA" if `_names_std'=="Italy"
replace `to_cl' = "JAM" if `_names_std'=="Jamaica"
replace `to_cl' = "JPN" if `_names_std'=="Japan"
replace `to_cl' = "JOR" if `_names_std'=="Jordan"
replace `to_cl' = "KAZ" if `_names_std'=="Kazakhstan"
replace `to_cl' = "KEN" if `_names_std'=="Kenya"
replace `to_cl' = "KIR" if `_names_std'=="Kiribati"
replace `to_cl' = "KWT" if `_names_std'=="Kuwait"
replace `to_cl' = "KGZ" if `_names_std'=="Kyrgyz Republic"
replace `to_cl' = "LAO" if `_names_std'=="Laos"
replace `to_cl' = "LVA" if `_names_std'=="Latvia"
replace `to_cl' = "LBN" if `_names_std'=="Lebanon"
replace `to_cl' = "LSO" if `_names_std'=="Lesotho"
replace `to_cl' = "LBR" if `_names_std'=="Liberia"
replace `to_cl' = "LBY" if `_names_std'=="Libya"
replace `to_cl' = "LIE" if `_names_std'=="Liechtenstein"
replace `to_cl' = "LTU" if `_names_std'=="Lithuania"
replace `to_cl' = "LUX" if `_names_std'=="Luxembourg"
replace `to_cl' = "MAC" if `_names_std'=="Macao"
replace `to_cl' = "MKD" if `_names_std'=="Macedonia"
replace `to_cl' = "MDG" if `_names_std'=="Madagascar"
replace `to_cl' = "MWI" if `_names_std'=="Malawi"
replace `to_cl' = "MYS" if `_names_std'=="Malaysia"
replace `to_cl' = "MDV" if `_names_std'=="Maldives"
replace `to_cl' = "MLI" if `_names_std'=="Mali"
replace `to_cl' = "MLT" if `_names_std'=="Malta"
replace `to_cl' = "MHL" if `_names_std'=="Marshall Islands"
replace `to_cl' = "MTQ" if `_names_std'=="Martinique"
replace `to_cl' = "MRT" if `_names_std'=="Mauritania"
replace `to_cl' = "MUS" if `_names_std'=="Mauritius"
replace `to_cl' = "MYT" if `_names_std'=="Mayotte"
replace `to_cl' = "MEX" if `_names_std'=="Mexico"
replace `to_cl' = "FSM" if `_names_std'=="Micronesia"
replace `to_cl' = "MDA" if `_names_std'=="Moldova"
replace `to_cl' = "MCO" if `_names_std'=="Monaco"
replace `to_cl' = "MNG" if `_names_std'=="Mongolia"
replace `to_cl' = "MNE" if `_names_std'=="Montenegro"
replace `to_cl' = "MSR" if `_names_std'=="Montserrat"
replace `to_cl' = "MAR" if `_names_std'=="Morocco"
replace `to_cl' = "MOZ" if `_names_std'=="Mozambique"
replace `to_cl' = "MMR" if `_names_std'=="Myanmar"
replace `to_cl' = "NAM" if `_names_std'=="Namibia"
replace `to_cl' = "NRU" if `_names_std'=="Nauru"
replace `to_cl' = "NPL" if `_names_std'=="Nepal"
replace `to_cl' = "NLD" if `_names_std'=="Netherlands"
replace `to_cl' = "ANT" if `_names_std'=="Netherlands Antilles"
replace `to_cl' = "NCL" if `_names_std'=="New Caledonia"
replace `to_cl' = "NZL" if `_names_std'=="New Zealand"
replace `to_cl' = "NIC" if `_names_std'=="Nicaragua"
replace `to_cl' = "NER" if `_names_std'=="Niger"
replace `to_cl' = "NGA" if `_names_std'=="Nigeria"
replace `to_cl' = "NIU" if `_names_std'=="Niue"
replace `to_cl' = "PRK" if `_names_std'=="North Korea"
replace `to_cl' = "NOR" if `_names_std'=="Norway"
replace `to_cl' = "OMN" if `_names_std'=="Oman"
replace `to_cl' = "PAK" if `_names_std'=="Pakistan"
replace `to_cl' = "PLW" if `_names_std'=="Palau"
replace `to_cl' = "PSE" if `_names_std'=="Palestine"
replace `to_cl' = "PAN" if `_names_std'=="Panama"
replace `to_cl' = "PNG" if `_names_std'=="Papua New Guinea"
replace `to_cl' = "PRY" if `_names_std'=="Paraguay"
replace `to_cl' = "PER" if `_names_std'=="Peru"
replace `to_cl' = "PHL" if `_names_std'=="Philippines"
replace `to_cl' = "POL" if `_names_std'=="Poland"
replace `to_cl' = "PRT" if `_names_std'=="Portugal"
replace `to_cl' = "PRI" if `_names_std'=="Puerto Rico"
replace `to_cl' = "QAT" if `_names_std'=="Qatar"
replace `to_cl' = "VNM" if `_names_std'=="Republic of Vietnam"
replace `to_cl' = "REU" if `_names_std'=="Reunion"
replace `to_cl' = "ROU" if `_names_std'=="Romania"
replace `to_cl' = "RUS" if `_names_std'=="Russia"
replace `to_cl' = "RWA" if `_names_std'=="Rwanda"
replace `to_cl' = "SHN" if `_names_std'=="Saint Helena"
replace `to_cl' = "KNA" if `_names_std'=="Saint Kitts and Nevis"
replace `to_cl' = "LCA" if `_names_std'=="Saint Lucia"
replace `to_cl' = "SPM" if `_names_std'=="Saint Pierre and Miquelon"
replace `to_cl' = "VCT" if `_names_std'=="Saint Vincent and the Grenadines"
replace `to_cl' = "WSM" if `_names_std'=="Samoa"
replace `to_cl' = "SMR" if `_names_std'=="San Marino"
replace `to_cl' = "STP" if `_names_std'=="Sao Tome and Principe"
replace `to_cl' = "SAU" if `_names_std'=="Saudi Arabia"
replace `to_cl' = "SEN" if `_names_std'=="Senegal"
replace `to_cl' = "SYC" if `_names_std'=="Seychelles"
replace `to_cl' = "SLE" if `_names_std'=="Sierra Leone"
replace `to_cl' = "SGP" if `_names_std'=="Singapore"
replace `to_cl' = "SVK" if `_names_std'=="Slovak Republic"
replace `to_cl' = "SVN" if `_names_std'=="Slovenia"
replace `to_cl' = "SLB" if `_names_std'=="Solomon Islands"
replace `to_cl' = "SOM" if `_names_std'=="Somalia"
replace `to_cl' = "ZAF" if `_names_std'=="South Africa"
replace `to_cl' = "KOR" if `_names_std'=="South Korea"
replace `to_cl' = "SSD" if `_names_std'=="South Sudan"
replace `to_cl' = "ESP" if `_names_std'=="Spain"
replace `to_cl' = "LKA" if `_names_std'=="Sri Lanka"
replace `to_cl' = "SDN" if `_names_std'=="Sudan"
replace `to_cl' = "SUR" if `_names_std'=="Suriname"
replace `to_cl' = "SWZ" if `_names_std'=="Swaziland"
replace `to_cl' = "SWE" if `_names_std'=="Sweden"
replace `to_cl' = "CHE" if `_names_std'=="Switzerland"
replace `to_cl' = "SYR" if `_names_std'=="Syria"
replace `to_cl' = "TWN" if `_names_std'=="Taiwan"
replace `to_cl' = "TJK" if `_names_std'=="Tajikistan"
replace `to_cl' = "TZA" if `_names_std'=="Tanzania"
replace `to_cl' = "THA" if `_names_std'=="Thailand"
replace `to_cl' = "TLS" if `_names_std'=="Timor"
replace `to_cl' = "TGO" if `_names_std'=="Togo"
replace `to_cl' = "TON" if `_names_std'=="Tonga"
replace `to_cl' = "TTO" if `_names_std'=="Trinidad and Tobago"
replace `to_cl' = "TUN" if `_names_std'=="Tunisia"
replace `to_cl' = "TUR" if `_names_std'=="Turkey"
replace `to_cl' = "TKM" if `_names_std'=="Turkmenistan"
replace `to_cl' = "TCA" if `_names_std'=="Turks and Caicos Islands"
replace `to_cl' = "TUV" if `_names_std'=="Tuvalu"
replace `to_cl' = "UGA" if `_names_std'=="Uganda"
replace `to_cl' = "UKR" if `_names_std'=="Ukraine"
replace `to_cl' = "ARE" if `_names_std'=="United Arab Emirates"
replace `to_cl' = "GBR" if `_names_std'=="United Kingdom"
replace `to_cl' = "USA" if `_names_std'=="United States"
replace `to_cl' = "VIR" if `_names_std'=="United States Virgin Islands"
replace `to_cl' = "URY" if `_names_std'=="Uruguay"
replace `to_cl' = "UZB" if `_names_std'=="Uzbekistan"
replace `to_cl' = "VUT" if `_names_std'=="Vanuatu"
replace `to_cl' = "VAT" if `_names_std'=="Vatican"
replace `to_cl' = "VEN" if `_names_std'=="Venezuela"
replace `to_cl' = "VNM" if `_names_std'=="Vietnam"
replace `to_cl' = "WLF" if `_names_std'=="Wallis and Futuna"
replace `to_cl' = "ESH" if `_names_std'=="Western Sahara"
replace `to_cl' = "YEM" if `_names_std'=="Yemen"
replace `to_cl' = "SRB" if `_names_std'=="Yugoslavia"
replace `to_cl' = "ZMB" if `_names_std'=="Zambia"
replace `to_cl' = "ZWE" if `_names_std'=="Zimbabwe"
}

end
exit
