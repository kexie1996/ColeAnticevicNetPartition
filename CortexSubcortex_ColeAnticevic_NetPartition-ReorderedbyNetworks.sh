##### Convert dlabel file into dscalar file
wb_command -cifti-all-labels-to-rois \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR.dlabel.nii \
1 \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_AllMaps.dscalar.nii

wb_command -cifti-reduce \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_AllMaps.dscalar.nii \
INDEXMAX \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR.dscalar.nii

rm CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_AllMaps.dscalar.nii 

##### Reorder parcels in dscalar by Network (new order was sorted and label txt was created in CAB-NP_v1.1_Labels-ReorderedbyNetworks.xlsx)
wb_command -cifti-math \
'(x==1)*1+(x==2)*70+(x==3)*71+(x==4)*72+(x==5)*73+(x==6)*74+(x==7)*75+(x==8)*153+(x==9)*154+(x==10)*220+(x==11)*315+(x==12)*362+(x==13)*76+(x==14)*399+(x==15)*400+(x==16)*77+(x==17)*78+(x==18)*79+(x==19)*80+(x==20)*81+(x==21)*82+(x==22)*83+(x==23)*84+(x==24)*497+(x==25)*363+(x==26)*364+(x==27)*652+(x==28)*365+(x==29)*401+(x==30)*543+(x==31)*544+(x==32)*545+(x==33)*546+(x==34)*547+(x==35)*548+(x==36)*155+(x==37)*221+(x==38)*222+(x==39)*156+(x==40)*157+(x==41)*158+(x==42)*159+(x==43)*223+(x==44)*224+(x==45)*225+(x==46)*316+(x==47)*160+(x==48)*85+(x==49)*86+(x==50)*317+(x==51)*161+(x==52)*162+(x==53)*163+(x==54)*164+(x==55)*165+(x==56)*166+(x==57)*226+(x==58)*227+(x==59)*228+(x==60)*229+(x==61)*549+(x==62)*550+(x==63)*402+(x==64)*551+(x==65)*552+(x==66)*553+(x==67)*554+(x==68)*555+(x==69)*556+(x==70)*557+(x==71)*558+(x==72)*559+(x==73)*403+(x==74)*366+(x==75)*367+(x==76)*560+(x==77)*404+(x==78)*230+(x==79)*368+(x==80)*405+(x==81)*369+(x==82)*406+(x==83)*407+(x==84)*231+(x==85)*408+(x==86)*232+(x==87)*561+(x==88)*562+(x==89)*409+(x==90)*563+(x==91)*410+(x==92)*411+(x==93)*564+(x==94)*565+(x==95)*318+(x==96)*319+(x==97)*412+(x==98)*413+(x==99)*233+(x==100)*167+(x==101)*168+(x==102)*169+(x==103)*498+(x==104)*499+(x==105)*234+(x==106)*235+(x==107)*500+(x==108)*236+(x==109)*237+(x==110)*696+(x==111)*414+(x==112)*697+(x==113)*238+(x==114)*239+(x==115)*170+(x==116)*320+(x==117)*321+(x==118)*566+(x==119)*567+(x==120)*568+(x==121)*2+(x==122)*688+(x==123)*370+(x==124)*501+(x==125)*371+(x==126)*569+(x==127)*322+(x==128)*372+(x==129)*373+(x==130)*570+(x==131)*571+(x==132)*572+(x==133)*415+(x==134)*573+(x==135)*689+(x==136)*323+(x==137)*324+(x==138)*87+(x==139)*374+(x==140)*653+(x==141)*654+(x==142)*3+(x==143)*325+(x==144)*416+(x==145)*417+(x==146)*326+(x==147)*240+(x==148)*241+(x==149)*418+(x==150)*574+(x==151)*575+(x==152)*88+(x==153)*89+(x==154)*90+(x==155)*576+(x==156)*91+(x==157)*92+(x==158)*93+(x==159)*94+(x==160)*95+(x==161)*577+(x==162)*578+(x==163)*96+(x==164)*579+(x==165)*580+(x==166)*698+(x==167)*242+(x==168)*171+(x==169)*243+(x==170)*419+(x==171)*420+(x==172)*375+(x==173)*502+(x==174)*503+(x==175)*504+(x==176)*581+(x==177)*582+(x==178)*244+(x==179)*245+(x==180)*246+(x==181)*4+(x==182)*97+(x==183)*98+(x==184)*99+(x==185)*100+(x==186)*101+(x==187)*102+(x==188)*172+(x==189)*173+(x==190)*247+(x==191)*248+(x==192)*376+(x==193)*103+(x==194)*421+(x==195)*422+(x==196)*104+(x==197)*105+(x==198)*106+(x==199)*107+(x==200)*108+(x==201)*109+(x==202)*110+(x==203)*111+(x==204)*505+(x==205)*249+(x==206)*377+(x==207)*655+(x==208)*656+(x==209)*423+(x==210)*583+(x==211)*584+(x==212)*585+(x==213)*586+(x==214)*587+(x==215)*588+(x==216)*174+(x==217)*274+(x==218)*275+(x==219)*175+(x==220)*176+(x==221)*177+(x==222)*178+(x==223)*250+(x==224)*251+(x==225)*252+(x==226)*327+(x==227)*179+(x==228)*112+(x==229)*113+(x==230)*328+(x==231)*180+(x==232)*181+(x==233)*182+(x==234)*183+(x==235)*184+(x==236)*185+(x==237)*253+(x==238)*424+(x==239)*254+(x==240)*255+(x==241)*589+(x==242)*425+(x==243)*426+(x==244)*590+(x==245)*591+(x==246)*592+(x==247)*593+(x==248)*594+(x==249)*595+(x==250)*596+(x==251)*597+(x==252)*598+(x==253)*427+(x==254)*428+(x==255)*378+(x==256)*599+(x==257)*429+(x==258)*256+(x==259)*379+(x==260)*430+(x==261)*431+(x==262)*257+(x==263)*432+(x==264)*258+(x==265)*433+(x==266)*259+(x==267)*600+(x==268)*601+(x==269)*434+(x==270)*602+(x==271)*435+(x==272)*436+(x==273)*437+(x==274)*603+(x==275)*329+(x==276)*330+(x==277)*438+(x==278)*439+(x==279)*260+(x==280)*186+(x==281)*187+(x==282)*188+(x==283)*506+(x==284)*189+(x==285)*261+(x==286)*262+(x==287)*507+(x==288)*263+(x==289)*264+(x==290)*699+(x==291)*440+(x==292)*700+(x==293)*265+(x==294)*266+(x==295)*190+(x==296)*331+(x==297)*332+(x==298)*604+(x==299)*605+(x==300)*606+(x==301)*5+(x==302)*690+(x==303)*380+(x==304)*508+(x==305)*381+(x==306)*607+(x==307)*333+(x==308)*608+(x==309)*382+(x==310)*609+(x==311)*610+(x==312)*611+(x==313)*441+(x==314)*612+(x==315)*691+(x==316)*334+(x==317)*335+(x==318)*114+(x==319)*383+(x==320)*657+(x==321)*658+(x==322)*6+(x==323)*336+(x==324)*442+(x==325)*443+(x==326)*337+(x==327)*267+(x==328)*268+(x==329)*444+(x==330)*613+(x==331)*614+(x==332)*115+(x==333)*116+(x==334)*117+(x==335)*615+(x==336)*118+(x==337)*119+(x==338)*120+(x==339)*121+(x==340)*122+(x==341)*616+(x==342)*445+(x==343)*123+(x==344)*617+(x==345)*618+(x==346)*701+(x==347)*269+(x==348)*191+(x==349)*270+(x==350)*446+(x==351)*447+(x==352)*384+(x==353)*509+(x==354)*510+(x==355)*511+(x==356)*619+(x==357)*448+(x==358)*271+(x==359)*272+(x==360)*273+(x==361)*7+(x==362)*8+(x==363)*45+(x==364)*46+(x==365)*9+(x==366)*10+(x==367)*47+(x==368)*11+(x==369)*12+(x==370)*69+(x==371)*13+(x==372)*14+(x==373)*15+(x==374)*48+(x==375)*16+(x==376)*17+(x==377)*18+(x==378)*19+(x==379)*20+(x==380)*21+(x==381)*22+(x==382)*23+(x==383)*24+(x==384)*25+(x==385)*26+(x==386)*27+(x==387)*28+(x==388)*29+(x==389)*30+(x==390)*31+(x==391)*49+(x==392)*50+(x==393)*51+(x==394)*52+(x==395)*53+(x==396)*54+(x==397)*55+(x==398)*56+(x==399)*57+(x==400)*58+(x==401)*59+(x==402)*32+(x==403)*60+(x==404)*33+(x==405)*61+(x==406)*34+(x==407)*35+(x==408)*62+(x==409)*63+(x==410)*36+(x==411)*37+(x==412)*38+(x==413)*64+(x==414)*65+(x==415)*39+(x==416)*40+(x==417)*41+(x==418)*42+(x==419)*43+(x==420)*44+(x==421)*66+(x==422)*67+(x==423)*68+(x==424)*124+(x==425)*139+(x==426)*152+(x==427)*125+(x==428)*126+(x==429)*140+(x==430)*127+(x==431)*128+(x==432)*129+(x==433)*130+(x==434)*131+(x==435)*141+(x==436)*142+(x==437)*143+(x==438)*144+(x==439)*132+(x==440)*145+(x==441)*146+(x==442)*147+(x==443)*133+(x==444)*134+(x==445)*135+(x==446)*136+(x==447)*137+(x==448)*148+(x==449)*149+(x==450)*150+(x==451)*138+(x==452)*151+(x==453)*205+(x==454)*192+(x==455)*206+(x==456)*218+(x==457)*219+(x==458)*193+(x==459)*194+(x==460)*195+(x==461)*196+(x==462)*197+(x==463)*207+(x==464)*208+(x==465)*209+(x==466)*210+(x==467)*198+(x==468)*199+(x==469)*200+(x==470)*201+(x==471)*211+(x==472)*212+(x==473)*213+(x==474)*202+(x==475)*214+(x==476)*215+(x==477)*203+(x==478)*216+(x==479)*204+(x==480)*217+(x==481)*276+(x==482)*292+(x==483)*293+(x==484)*314+(x==485)*294+(x==486)*277+(x==487)*295+(x==488)*278+(x==489)*279+(x==490)*296+(x==491)*297+(x==492)*280+(x==493)*281+(x==494)*282+(x==495)*283+(x==496)*298+(x==497)*299+(x==498)*300+(x==499)*301+(x==500)*302+(x==501)*303+(x==502)*304+(x==503)*284+(x==504)*285+(x==505)*286+(x==506)*287+(x==507)*305+(x==508)*306+(x==509)*307+(x==510)*308+(x==511)*309+(x==512)*288+(x==513)*310+(x==514)*289+(x==515)*311+(x==516)*290+(x==517)*291+(x==518)*312+(x==519)*313+(x==520)*338+(x==521)*351+(x==522)*339+(x==523)*340+(x==524)*352+(x==525)*341+(x==526)*353+(x==527)*342+(x==528)*343+(x==529)*344+(x==530)*345+(x==531)*346+(x==532)*347+(x==533)*348+(x==534)*354+(x==535)*355+(x==536)*356+(x==537)*357+(x==538)*358+(x==539)*359+(x==540)*349+(x==541)*360+(x==542)*350+(x==543)*361+(x==544)*385+(x==545)*389+(x==546)*386+(x==547)*390+(x==548)*387+(x==549)*391+(x==550)*392+(x==551)*393+(x==552)*394+(x==553)*395+(x==554)*396+(x==555)*397+(x==556)*398+(x==557)*388+(x==558)*449+(x==559)*450+(x==560)*495+(x==561)*473+(x==562)*474+(x==563)*451+(x==564)*496+(x==565)*475+(x==566)*452+(x==567)*453+(x==568)*476+(x==569)*454+(x==570)*455+(x==571)*456+(x==572)*457+(x==573)*458+(x==574)*459+(x==575)*460+(x==576)*461+(x==577)*462+(x==578)*463+(x==579)*464+(x==580)*465+(x==581)*466+(x==582)*467+(x==583)*477+(x==584)*478+(x==585)*479+(x==586)*480+(x==587)*481+(x==588)*482+(x==589)*483+(x==590)*484+(x==591)*485+(x==592)*486+(x==593)*487+(x==594)*488+(x==595)*489+(x==596)*468+(x==597)*490+(x==598)*469+(x==599)*470+(x==600)*491+(x==601)*492+(x==602)*471+(x==603)*493+(x==604)*472+(x==605)*494+(x==606)*512+(x==607)*530+(x==608)*513+(x==609)*514+(x==610)*542+(x==611)*515+(x==612)*531+(x==613)*516+(x==614)*517+(x==615)*518+(x==616)*532+(x==617)*533+(x==618)*534+(x==619)*519+(x==620)*520+(x==621)*521+(x==622)*522+(x==623)*535+(x==624)*536+(x==625)*523+(x==626)*524+(x==627)*537+(x==628)*525+(x==629)*526+(x==630)*527+(x==631)*528+(x==632)*529+(x==633)*538+(x==634)*539+(x==635)*540+(x==636)*541+(x==637)*620+(x==638)*635+(x==639)*650+(x==640)*651+(x==641)*621+(x==642)*622+(x==643)*623+(x==644)*636+(x==645)*637+(x==646)*624+(x==647)*625+(x==648)*626+(x==649)*627+(x==650)*638+(x==651)*639+(x==652)*640+(x==653)*641+(x==654)*628+(x==655)*629+(x==656)*642+(x==657)*643+(x==658)*644+(x==659)*630+(x==660)*631+(x==661)*645+(x==662)*646+(x==663)*632+(x==664)*633+(x==665)*634+(x==666)*647+(x==667)*648+(x==668)*649+(x==669)*659+(x==670)*672+(x==671)*673+(x==672)*674+(x==673)*660+(x==674)*661+(x==675)*675+(x==676)*662+(x==677)*687+(x==678)*663+(x==679)*664+(x==680)*665+(x==681)*666+(x==682)*667+(x==683)*676+(x==684)*677+(x==685)*678+(x==686)*679+(x==687)*680+(x==688)*681+(x==689)*668+(x==690)*669+(x==691)*670+(x==692)*682+(x==693)*683+(x==694)*684+(x==695)*685+(x==696)*671+(x==697)*686+(x==698)*692+(x==699)*694+(x==700)*693+(x==701)*695+(x==702)*702+(x==703)*711+(x==704)*703+(x==705)*712+(x==706)*704+(x==707)*705+(x==708)*713+(x==709)*714+(x==710)*706+(x==711)*707+(x==712)*708+(x==713)*715+(x==714)*716+(x==715)*709+(x==716)*710+(x==717)*717+(x==718)*718' \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_ReorderedByNetworks.dscalar.nii \
-var x CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR.dscalar.nii

##### Import labels for reordered dscalar
wb_command -cifti-label-import \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_ReorderedByNetworks.dscalar.nii \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_v1.1_LR_ReorderedByNetworks.txt \
CortexSubcortex_ColeAnticevic_NetPartition_wSubcorGSR_parcels_LR_ReorderedByNetworks.dlabel.nii


#woGSR
wb_command -cifti-all-labels-to-rois \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR.dlabel.nii \
1 \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_AllMaps.dscalar.nii

wb_command -cifti-reduce \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_AllMaps.dscalar.nii \
INDEXMAX \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR.dscalar.nii

rm CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_AllMaps.dscalar.nii 


##### Reorder parcels in dscalar by Network (new order was sorted and label txt was created in CAB-NP_v1.1_Labels-ReorderedbyNetworks.xlsx)
wb_command -cifti-math \
'(x==1)*1+(x==2)*47+(x==3)*48+(x==4)*49+(x==5)*50+(x==6)*51+(x==7)*52+(x==8)*137+(x==9)*138+(x==10)*204+(x==11)*279+(x==12)*328+(x==13)*53+(x==14)*361+(x==15)*362+(x==16)*54+(x==17)*55+(x==18)*56+(x==19)*57+(x==20)*58+(x==21)*59+(x==22)*60+(x==23)*61+(x==24)*446+(x==25)*329+(x==26)*330+(x==27)*576+(x==28)*331+(x==29)*363+(x==30)*472+(x==31)*473+(x==32)*474+(x==33)*475+(x==34)*476+(x==35)*477+(x==36)*139+(x==37)*205+(x==38)*206+(x==39)*140+(x==40)*141+(x==41)*142+(x==42)*143+(x==43)*207+(x==44)*208+(x==45)*209+(x==46)*280+(x==47)*144+(x==48)*62+(x==49)*63+(x==50)*281+(x==51)*145+(x==52)*146+(x==53)*147+(x==54)*148+(x==55)*149+(x==56)*150+(x==57)*210+(x==58)*211+(x==59)*212+(x==60)*213+(x==61)*478+(x==62)*479+(x==63)*364+(x==64)*480+(x==65)*481+(x==66)*482+(x==67)*483+(x==68)*484+(x==69)*485+(x==70)*486+(x==71)*487+(x==72)*488+(x==73)*365+(x==74)*332+(x==75)*333+(x==76)*489+(x==77)*366+(x==78)*214+(x==79)*334+(x==80)*367+(x==81)*335+(x==82)*368+(x==83)*369+(x==84)*215+(x==85)*370+(x==86)*216+(x==87)*490+(x==88)*491+(x==89)*371+(x==90)*492+(x==91)*372+(x==92)*373+(x==93)*493+(x==94)*494+(x==95)*282+(x==96)*283+(x==97)*374+(x==98)*375+(x==99)*217+(x==100)*151+(x==101)*152+(x==102)*153+(x==103)*447+(x==104)*448+(x==105)*218+(x==106)*219+(x==107)*449+(x==108)*220+(x==109)*221+(x==110)*625+(x==111)*376+(x==112)*626+(x==113)*222+(x==114)*223+(x==115)*154+(x==116)*284+(x==117)*285+(x==118)*495+(x==119)*496+(x==120)*497+(x==121)*2+(x==122)*617+(x==123)*336+(x==124)*450+(x==125)*337+(x==126)*498+(x==127)*286+(x==128)*338+(x==129)*339+(x==130)*499+(x==131)*500+(x==132)*501+(x==133)*377+(x==134)*502+(x==135)*618+(x==136)*287+(x==137)*288+(x==138)*64+(x==139)*340+(x==140)*577+(x==141)*578+(x==142)*3+(x==143)*289+(x==144)*378+(x==145)*379+(x==146)*290+(x==147)*224+(x==148)*225+(x==149)*380+(x==150)*503+(x==151)*504+(x==152)*65+(x==153)*66+(x==154)*67+(x==155)*505+(x==156)*68+(x==157)*69+(x==158)*70+(x==159)*71+(x==160)*72+(x==161)*506+(x==162)*507+(x==163)*73+(x==164)*508+(x==165)*509+(x==166)*627+(x==167)*226+(x==168)*155+(x==169)*227+(x==170)*381+(x==171)*382+(x==172)*341+(x==173)*451+(x==174)*452+(x==175)*453+(x==176)*510+(x==177)*511+(x==178)*228+(x==179)*229+(x==180)*230+(x==181)*4+(x==182)*74+(x==183)*75+(x==184)*76+(x==185)*77+(x==186)*78+(x==187)*79+(x==188)*156+(x==189)*157+(x==190)*231+(x==191)*232+(x==192)*342+(x==193)*80+(x==194)*383+(x==195)*384+(x==196)*81+(x==197)*82+(x==198)*83+(x==199)*84+(x==200)*85+(x==201)*86+(x==202)*87+(x==203)*88+(x==204)*454+(x==205)*233+(x==206)*343+(x==207)*579+(x==208)*580+(x==209)*385+(x==210)*512+(x==211)*513+(x==212)*514+(x==213)*515+(x==214)*516+(x==215)*517+(x==216)*158+(x==217)*234+(x==218)*235+(x==219)*159+(x==220)*160+(x==221)*161+(x==222)*162+(x==223)*236+(x==224)*237+(x==225)*238+(x==226)*291+(x==227)*163+(x==228)*89+(x==229)*90+(x==230)*292+(x==231)*164+(x==232)*165+(x==233)*166+(x==234)*167+(x==235)*168+(x==236)*169+(x==237)*239+(x==238)*386+(x==239)*240+(x==240)*241+(x==241)*518+(x==242)*387+(x==243)*388+(x==244)*519+(x==245)*520+(x==246)*521+(x==247)*522+(x==248)*523+(x==249)*524+(x==250)*525+(x==251)*526+(x==252)*527+(x==253)*389+(x==254)*390+(x==255)*344+(x==256)*528+(x==257)*391+(x==258)*242+(x==259)*345+(x==260)*392+(x==261)*393+(x==262)*243+(x==263)*394+(x==264)*244+(x==265)*395+(x==266)*245+(x==267)*529+(x==268)*530+(x==269)*396+(x==270)*531+(x==271)*397+(x==272)*398+(x==273)*399+(x==274)*532+(x==275)*293+(x==276)*294+(x==277)*400+(x==278)*401+(x==279)*246+(x==280)*170+(x==281)*171+(x==282)*172+(x==283)*455+(x==284)*173+(x==285)*247+(x==286)*248+(x==287)*456+(x==288)*249+(x==289)*250+(x==290)*628+(x==291)*402+(x==292)*629+(x==293)*251+(x==294)*252+(x==295)*174+(x==296)*295+(x==297)*296+(x==298)*533+(x==299)*534+(x==300)*535+(x==301)*5+(x==302)*619+(x==303)*346+(x==304)*457+(x==305)*347+(x==306)*536+(x==307)*297+(x==308)*537+(x==309)*348+(x==310)*538+(x==311)*539+(x==312)*540+(x==313)*403+(x==314)*541+(x==315)*620+(x==316)*298+(x==317)*299+(x==318)*91+(x==319)*349+(x==320)*581+(x==321)*582+(x==322)*6+(x==323)*300+(x==324)*404+(x==325)*405+(x==326)*301+(x==327)*253+(x==328)*254+(x==329)*406+(x==330)*542+(x==331)*543+(x==332)*92+(x==333)*93+(x==334)*94+(x==335)*544+(x==336)*95+(x==337)*96+(x==338)*97+(x==339)*98+(x==340)*99+(x==341)*545+(x==342)*407+(x==343)*100+(x==344)*546+(x==345)*547+(x==346)*630+(x==347)*255+(x==348)*175+(x==349)*256+(x==350)*408+(x==351)*409+(x==352)*350+(x==353)*458+(x==354)*459+(x==355)*460+(x==356)*548+(x==357)*410+(x==358)*257+(x==359)*258+(x==360)*259+(x==361)*7+(x==362)*26+(x==363)*43+(x==364)*44+(x==365)*45+(x==366)*46+(x==367)*8+(x==368)*9+(x==369)*27+(x==370)*28+(x==371)*10+(x==372)*11+(x==373)*12+(x==374)*13+(x==375)*14+(x==376)*15+(x==377)*29+(x==378)*30+(x==379)*31+(x==380)*32+(x==381)*33+(x==382)*34+(x==383)*16+(x==384)*35+(x==385)*17+(x==386)*18+(x==387)*36+(x==388)*37+(x==389)*19+(x==390)*38+(x==391)*20+(x==392)*21+(x==393)*22+(x==394)*39+(x==395)*40+(x==396)*41+(x==397)*23+(x==398)*24+(x==399)*25+(x==400)*42+(x==401)*101+(x==402)*102+(x==403)*103+(x==404)*114+(x==405)*115+(x==406)*116+(x==407)*133+(x==408)*134+(x==409)*135+(x==410)*136+(x==411)*117+(x==412)*104+(x==413)*105+(x==414)*106+(x==415)*118+(x==416)*119+(x==417)*120+(x==418)*121+(x==419)*122+(x==420)*123+(x==421)*107+(x==422)*108+(x==423)*109+(x==424)*110+(x==425)*124+(x==426)*125+(x==427)*126+(x==428)*127+(x==429)*111+(x==430)*128+(x==431)*129+(x==432)*112+(x==433)*130+(x==434)*131+(x==435)*113+(x==436)*132+(x==437)*176+(x==438)*189+(x==439)*177+(x==440)*178+(x==441)*179+(x==442)*180+(x==443)*181+(x==444)*182+(x==445)*183+(x==446)*190+(x==447)*191+(x==448)*192+(x==449)*193+(x==450)*194+(x==451)*195+(x==452)*196+(x==453)*197+(x==454)*184+(x==455)*185+(x==456)*186+(x==457)*198+(x==458)*199+(x==459)*200+(x==460)*187+(x==461)*201+(x==462)*202+(x==463)*188+(x==464)*203+(x==465)*269+(x==466)*270+(x==467)*271+(x==468)*272+(x==469)*260+(x==470)*273+(x==471)*261+(x==472)*262+(x==473)*263+(x==474)*264+(x==475)*274+(x==476)*275+(x==477)*276+(x==478)*277+(x==479)*265+(x==480)*266+(x==481)*267+(x==482)*268+(x==483)*278+(x==484)*302+(x==485)*303+(x==486)*316+(x==487)*304+(x==488)*305+(x==489)*306+(x==490)*307+(x==491)*308+(x==492)*309+(x==493)*310+(x==494)*311+(x==495)*317+(x==496)*318+(x==497)*319+(x==498)*320+(x==499)*321+(x==500)*322+(x==501)*323+(x==502)*324+(x==503)*312+(x==504)*313+(x==505)*325+(x==506)*326+(x==507)*314+(x==508)*315+(x==509)*327+(x==510)*351+(x==511)*354+(x==512)*355+(x==513)*352+(x==514)*356+(x==515)*353+(x==516)*357+(x==517)*358+(x==518)*359+(x==519)*360+(x==520)*438+(x==521)*439+(x==522)*440+(x==523)*441+(x==524)*442+(x==525)*443+(x==526)*444+(x==527)*445+(x==528)*411+(x==529)*426+(x==530)*412+(x==531)*413+(x==532)*414+(x==533)*415+(x==534)*416+(x==535)*417+(x==536)*418+(x==537)*427+(x==538)*428+(x==539)*429+(x==540)*430+(x==541)*431+(x==542)*432+(x==543)*433+(x==544)*419+(x==545)*420+(x==546)*421+(x==547)*422+(x==548)*434+(x==549)*423+(x==550)*435+(x==551)*424+(x==552)*425+(x==553)*436+(x==554)*437+(x==555)*461+(x==556)*466+(x==557)*462+(x==558)*463+(x==559)*467+(x==560)*468+(x==561)*464+(x==562)*469+(x==563)*465+(x==564)*470+(x==565)*471+(x==566)*549+(x==567)*559+(x==568)*560+(x==569)*572+(x==570)*573+(x==571)*574+(x==572)*575+(x==573)*561+(x==574)*550+(x==575)*551+(x==576)*562+(x==577)*563+(x==578)*552+(x==579)*564+(x==580)*553+(x==581)*554+(x==582)*555+(x==583)*556+(x==584)*565+(x==585)*566+(x==586)*567+(x==587)*568+(x==588)*557+(x==589)*558+(x==590)*569+(x==591)*570+(x==592)*571+(x==593)*605+(x==594)*583+(x==595)*584+(x==596)*598+(x==597)*599+(x==598)*600+(x==599)*601+(x==600)*602+(x==601)*603+(x==602)*604+(x==603)*585+(x==604)*606+(x==605)*586+(x==606)*587+(x==607)*588+(x==608)*589+(x==609)*590+(x==610)*591+(x==611)*607+(x==612)*608+(x==613)*609+(x==614)*610+(x==615)*611+(x==616)*612+(x==617)*592+(x==618)*593+(x==619)*613+(x==620)*614+(x==621)*594+(x==622)*595+(x==623)*596+(x==624)*615+(x==625)*597+(x==626)*616+(x==627)*623+(x==628)*621+(x==629)*622+(x==630)*624+(x==631)*631+(x==632)*640+(x==633)*632+(x==634)*641+(x==635)*633+(x==636)*634+(x==637)*642+(x==638)*643+(x==639)*644+(x==640)*635+(x==641)*636+(x==642)*637+(x==643)*645+(x==644)*646+(x==645)*638+(x==646)*639+(x==647)*647+(x==648)*648' \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_ReorderedByNetworks.dscalar.nii \
-var x CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR.dscalar.nii

##### Import labels for reordered dscalar
wb_command -cifti-label-import \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_ReorderedByNetworks.dscalar.nii \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_v1.1_LR_ReorderedByNetworks.txt \
CortexSubcortex_ColeAnticevic_NetPartition_woSubcorGSR_parcels_LR_ReorderedByNetworks.dlabel.nii


















