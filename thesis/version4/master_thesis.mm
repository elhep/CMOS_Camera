<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="High speed multichannel camera with 10 GbE" ID="ID_1787280152" CREATED="1432747772410" MODIFIED="1439829008531"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Introduction" POSITION="right" ID="ID_1719556042" CREATED="1432747784229" MODIFIED="1439342552106">
<node TEXT="Reason to do this project" ID="ID_1443289443" CREATED="1432748039705" MODIFIED="1439342742117">
<node TEXT="Universal open, camera design architecture" ID="ID_1673689135" CREATED="1432748192318" MODIFIED="1439342748294"/>
<node TEXT="One cannot deny the fact that, novelty is the&#xa;&#xa;&#xa;in today&apos;s high-tech electronics market the&#xa;most important aspect of the product is time-to-market. Sometimes even&#xa;a worse product can win on the market just due to the fact that it was released&#xa;eariler.&#xa;&#xa;In specialised markets where COTS (Custom - Off - The - Shelf) components are being&#xa;used by customers, the possibility to quickly adjust the parameters of a specific system&#xa;given suited to the customers need is a key to success.&#xa;&#xa;Another" ID="ID_690824232" CREATED="1440460054020" MODIFIED="1440460450245"/>
</node>
<node TEXT="Requirements" ID="ID_1120899882" CREATED="1432748051522" MODIFIED="1439342735255">
<node TEXT="High speed operation" ID="ID_1169878647" CREATED="1439342624391" MODIFIED="1439342628221"/>
<node TEXT="Ease of adding a custom sensor" ID="ID_1949522200" CREATED="1439342629397" MODIFIED="1439342681098"/>
<node TEXT="Secure and versatile OS" ID="ID_1134596059" CREATED="1439342682370" MODIFIED="1439342688424"/>
<node TEXT="RTOS capability" ID="ID_960062893" CREATED="1439342690552" MODIFIED="1439342696470"/>
<node TEXT="Future proof" ID="ID_1998473068" CREATED="1439342736446" MODIFIED="1439342739197"/>
<node TEXT="Multichannel operation" ID="ID_1065469705" CREATED="1443957977421" MODIFIED="1443957981621"/>
<node TEXT="Timestamping" ID="ID_1756431552" CREATED="1443957985061" MODIFIED="1443957987770">
<node TEXT="PTP" ID="ID_1861239229" CREATED="1443957988692" MODIFIED="1443957990146"/>
<node TEXT="MLVDS" ID="ID_725907900" CREATED="1443957991191" MODIFIED="1443957993036"/>
</node>
</node>
<node TEXT="" ID="ID_1012822375" CREATED="1432748067488" MODIFIED="1432748067488"/>
<node TEXT="Existing scientific camera solutions" ID="ID_91477724" CREATED="1439342525796" MODIFIED="1443967550528">
<node TEXT="" ID="ID_1996292502" CREATED="1439342534653" MODIFIED="1439342534653"/>
<node TEXT="K20" ID="ID_1820904386" CREATED="1439342597316" MODIFIED="1439342598985"/>
<node TEXT="FLIR?" ID="ID_1327446157" CREATED="1439342600445" MODIFIED="1439342604890"/>
<node TEXT="ELPHEL" ID="ID_161415464" CREATED="1439342612849" MODIFIED="1439342614962"/>
<node TEXT="Sensors" ID="ID_911232873" CREATED="1439342553003" MODIFIED="1439342555113">
<node TEXT="Different interfaces" ID="ID_1486874033" CREATED="1439342555979" MODIFIED="1439342569931">
<node TEXT="CSI" ID="ID_1689077722" CREATED="1440460474495" MODIFIED="1440460476981"/>
<node TEXT="DPI" ID="ID_383576118" CREATED="1440460478147" MODIFIED="1440460479851"/>
<node TEXT="LVDS" ID="ID_394160786" CREATED="1440460483481" MODIFIED="1440460487941"/>
</node>
<node TEXT="Custom AFE" ID="ID_53421680" CREATED="1439342572277" MODIFIED="1439342576595"/>
<node TEXT="High speed data readout" ID="ID_370415564" CREATED="1439342578109" MODIFIED="1439342581941"/>
<node TEXT="CMOS sensors" ID="ID_651869654" CREATED="1439342547123" MODIFIED="1439342549293"/>
<node TEXT="CCD Sensors" ID="ID_1131919508" CREATED="1439342540388" MODIFIED="1439342545007"/>
</node>
</node>
</node>
<node TEXT="Concept of design" POSITION="left" ID="ID_639792283" CREATED="1432747790587" MODIFIED="1439342799250">
<node TEXT="Linux + RTOS" ID="ID_529277508" CREATED="1439342475534" MODIFIED="1440098053890">
<node TEXT="or just RTOS?" ID="ID_1254081818" CREATED="1439342489726" MODIFIED="1439342493661"/>
<node TEXT="hypervisor?" ID="ID_292185157" CREATED="1439342494778" MODIFIED="1439342498727">
<node TEXT="Available hypervisors are very immature designs which are being shown on company&apos;s website in order for a customer to buy a commercial version." ID="ID_202040243" CREATED="1440320006224" MODIFIED="1440320054713">
<node TEXT="http://openvirtualization.org/downloadsoftware.html" ID="ID_1248444960" CREATED="1440320591906" MODIFIED="1440320591906" LINK="http://openvirtualization.org/downloadsoftware.html"/>
<node TEXT="http://www.wiki.xilinx.com/Xenomai+for+Zynq" ID="ID_425283925" CREATED="1440320615232" MODIFIED="1440320615232" LINK="http://www.wiki.xilinx.com/Xenomai+for+Zynq"/>
</node>
</node>
<node TEXT="Yocto versus Petalinux" ID="ID_1621962697" CREATED="1439826450176" MODIFIED="1439826454214"/>
<node TEXT="Xenomai" ID="ID_944671844" CREATED="1439828937755" MODIFIED="1439828946217"/>
<node TEXT="SierraTEE" ID="ID_782235238" CREATED="1439828947981" MODIFIED="1439828951354"/>
<node TEXT="SafeG" ID="ID_41087507" CREATED="1439828952635" MODIFIED="1439828969023"/>
<node TEXT="Xen?" ID="ID_121544927" CREATED="1439830351008" MODIFIED="1439830353504"/>
<node TEXT="Android" ID="ID_1139506780" CREATED="1440098054847" MODIFIED="1440098057122"/>
<node TEXT="Article about the speed of real time linux on embedded system." ID="ID_887668785" CREATED="1440320130696" MODIFIED="1440320150530">
<node TEXT="https://www.osadl.org/fileadmin/dam/rtlws/12/Brown.pdf" ID="ID_715716010" CREATED="1440320151046" MODIFIED="1440320152830"/>
</node>
</node>
<node TEXT="Functional analysis" ID="ID_1488982248" CREATED="1439342506658" MODIFIED="1444262007227">
<node TEXT="Ethernet control and data reception" ID="ID_1628891138" CREATED="1439342770104" MODIFIED="1440460594035">
<node TEXT="Control" ID="ID_1104268635" CREATED="1440460611631" MODIFIED="1440460615117">
<node TEXT="Over ethernet - PC" ID="ID_252003347" CREATED="1439342864973" MODIFIED="1439342873342">
<node TEXT="In future control over FADE command link" ID="ID_1217395489" CREATED="1439342874247" MODIFIED="1439342882704"/>
</node>
</node>
<node TEXT="Data acquisition" ID="ID_544305919" CREATED="1440460616890" MODIFIED="1440460622771"/>
<node TEXT="Ethernet interface" ID="ID_1419434189" CREATED="1444177531999" MODIFIED="1444177537056">
<node TEXT="MAC" ID="ID_130938732" CREATED="1444177538281" MODIFIED="1444177540681"/>
<node TEXT="PHY" ID="ID_1342939398" CREATED="1444177543975" MODIFIED="1444177545834"/>
<node TEXT="Use of embedded MAC in Zynq and PCS/PMA block in FPGA logic provides many benefits." ID="ID_1446574407" CREATED="1444177549273" MODIFIED="1444177585016"/>
</node>
</node>
<node TEXT="Sensor data acquisition" ID="ID_802742758" CREATED="1440460548255" MODIFIED="1440460567852">
<node TEXT="Ease of adding own sensor" ID="ID_1270686273" CREATED="1440460569215" MODIFIED="1440460579658"/>
</node>
<node TEXT="Multichannel" ID="ID_1534662332" CREATED="1444262032193" MODIFIED="1444262035574">
<node TEXT="PTP" ID="ID_1123844311" CREATED="1444262037459" MODIFIED="1444262039532"/>
<node TEXT="MLVDS" ID="ID_1696967509" CREATED="1444262040927" MODIFIED="1444262042664"/>
</node>
<node TEXT="RTOS operation" ID="ID_82751052" CREATED="1444262055217" MODIFIED="1444262058436">
<node TEXT="AMP scenario" ID="ID_913361186" CREATED="1444262059315" MODIFIED="1444262063352"/>
<node TEXT="yocto + freertos" ID="ID_602537036" CREATED="1444262072939" MODIFIED="1444262078020"/>
</node>
<node TEXT="Security" ID="ID_144787452" CREATED="1444262084162" MODIFIED="1444262086424">
<node TEXT="Hypervisor - sierra te" ID="ID_958777339" CREATED="1444262087208" MODIFIED="1444262094847"/>
</node>
<node TEXT="This section describes the functional analysis regarding the project.&#xa;Major camera&apos;s function are described and defined in this part of the thesis.&#xa;The identification of needed functions gives clear roadmap for moving from concept to&#xa;the realisation of the project." ID="ID_125721431" CREATED="1444262129858" MODIFIED="1444262251434"/>
</node>
<node TEXT="Firmware concept" ID="ID_297688279" CREATED="1439342813258" MODIFIED="1439342821327">
<node TEXT="Digital system design concept" ID="ID_1540057965" CREATED="1439342800394" MODIFIED="1439342811205">
<node TEXT="CMV4000 IP Core" ID="ID_919335730" CREATED="1439342888461" MODIFIED="1439342893244"/>
<node TEXT="VDMA" ID="ID_611859037" CREATED="1439342894679" MODIFIED="1439342899736"/>
<node TEXT="Video In to AXIS" ID="ID_1660597190" CREATED="1439342900891" MODIFIED="1439342905484"/>
<node TEXT="FADE" ID="ID_1472154040" CREATED="1439342907087" MODIFIED="1439342909480"/>
<node TEXT="Custom Control Reg IP" ID="ID_199555521" CREATED="1439342911081" MODIFIED="1439342917308"/>
</node>
<node TEXT="Operating system operation concept" ID="ID_1442469097" CREATED="1439342826437" MODIFIED="1439342836176">
<node TEXT="Software" ID="ID_177032507" CREATED="1439342837281" MODIFIED="1439342839698"/>
<node TEXT="RTOS" ID="ID_1761382701" CREATED="1439342841117" MODIFIED="1439342842156"/>
<node TEXT="Linux" ID="ID_617461089" CREATED="1439342843123" MODIFIED="1439342844724"/>
<node TEXT="Hypervisor" ID="ID_1146290745" CREATED="1439342845697" MODIFIED="1439342847976"/>
</node>
</node>
<node TEXT="Digital system design concept" ID="ID_1179544921" CREATED="1440460511009" MODIFIED="1440460646201"/>
<node TEXT="System concept" ID="ID_733767332" CREATED="1440460649346" MODIFIED="1440460653333">
<node TEXT="SysML" ID="ID_1109999885" CREATED="1440460654374" MODIFIED="1440460659611">
<node TEXT="http://www-sop.inria.fr/members/Carlos.Gomez_Cardenas/pdf/masterThesis.pdf" ID="ID_803986506" CREATED="1443963041130" MODIFIED="1443963042535"/>
<node TEXT="http://ieeexplore.ieee.org/xpl/login.jsp?tp=&amp;arnumber=6320272&amp;url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D6320272" ID="ID_818568400" CREATED="1443963052347" MODIFIED="1443963053575"/>
<node TEXT="http://www.embedded.com/design/prototyping-and-development/4006704/SysML--The-Systems-Modeling-Language" ID="ID_93048177" CREATED="1443963061151" MODIFIED="1443963062391"/>
<node TEXT="http://www.sparxsystems.com/downloads/ebooks/Embedded_Systems_Development_using_SysML.pdf" ID="ID_659521403" CREATED="1443963071122" MODIFIED="1443963072287"/>
<node TEXT="http://www.sparxsystems.com/downloads/ebooks/Embedded_Systems_Development_using_SysML.pdf" ID="ID_675790277" CREATED="1443963483680" MODIFIED="1443963484988"/>
</node>
</node>
<node TEXT="Security and high availability" ID="ID_1945894456" CREATED="1440460666416" MODIFIED="1440460673343"/>
</node>
<node TEXT="Realization" POSITION="right" ID="ID_640087108" CREATED="1432747867898" MODIFIED="1432747872882">
<node TEXT="Firmware" ID="ID_198009869" CREATED="1440097828390" MODIFIED="1440097835541">
<node TEXT="Linux" ID="ID_527539848" CREATED="1440098010902" MODIFIED="1440098013179"/>
<node TEXT="FreeRTOS?" ID="ID_1575633688" CREATED="1440098015400" MODIFIED="1440098019333"/>
</node>
<node TEXT="System specification" ID="ID_765209940" CREATED="1440097836991" MODIFIED="1440097842088">
<node TEXT="SysML" ID="ID_1574388850" CREATED="1440097843085" MODIFIED="1440097845485"/>
<node TEXT="Simulink" ID="ID_1303149655" CREATED="1440097849569" MODIFIED="1440097853260"/>
</node>
<node TEXT="Hardware - description" ID="ID_100202496" CREATED="1440097855771" MODIFIED="1440097891619"/>
<node TEXT="Novelity" ID="ID_1136941444" CREATED="1440097896165" MODIFIED="1440097902489"/>
<node TEXT="Control software" ID="ID_66572390" CREATED="1440097940038" MODIFIED="1440097943525"/>
</node>
<node TEXT="Tests" POSITION="left" ID="ID_1038557359" CREATED="1432747876082" MODIFIED="1432747877791">
<node TEXT="Data reception" ID="ID_1875589931" CREATED="1440097908191" MODIFIED="1440097913763"/>
<node TEXT="Control" ID="ID_1359480660" CREATED="1440097915224" MODIFIED="1440097936631"/>
<node TEXT="Approximate time to design another camera using designed framework" ID="ID_1853258322" CREATED="1440097957544" MODIFIED="1440097978440"/>
</node>
<node TEXT="Summary" POSITION="left" ID="ID_992119730" CREATED="1432747888626" MODIFIED="1432747891899">
<node TEXT="Achieved parameters" ID="ID_201292590" CREATED="1440097980914" MODIFIED="1440097987177"/>
<node TEXT="Achieved functionality" ID="ID_1966809239" CREATED="1440097988622" MODIFIED="1440097993794"/>
<node TEXT="Future work" ID="ID_1755494788" CREATED="1440097997282" MODIFIED="1440097999905"/>
</node>
<node TEXT="Bibliography" POSITION="right" ID="ID_1573135307" CREATED="1439829009856" MODIFIED="1439829026753">
<node TEXT="http://www.ntu.edu.sg/home/sfahmy/files/papers/asap2013-khoa.pdf" ID="ID_1974885042" CREATED="1439829018036" MODIFIED="1439829021318"/>
<node TEXT="Hypervisor for ARM+FPGA" ID="ID_833149991" CREATED="1439829026753" MODIFIED="1439829033563"/>
</node>
</node>
</map>
