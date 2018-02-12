<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="High speed multichannel camera with 10 GbE" ID="ID_2458351" CREATED="1446922305462" MODIFIED="1446922305462"><hook NAME="MapStyle">
    <properties show_note_icons="true"/>

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
<node TEXT="Chapter 1. Introduction" POSITION="right" ID="ID_47397197" CREATED="1446922305462" MODIFIED="1446923126198">
<node TEXT="1. Short introduction" ID="ID_493085757" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="The following thesis is divided into 6 chapters. The first chapter describes the scientific camera design, the theory and current state of technology and also the reasons for doing this work as well as the basic requirements. Second chapter presents the concept phase of the project, where the information regarding possible ways of achieving the requirements is presented. After the concept chapter, the realisation is described in chapter 4" ID="ID_699292018" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
<node TEXT="2. Camera design theory" ID="ID_601060260" CREATED="1446922305462" MODIFIED="1446923128561">
<node TEXT="Sensors" ID="ID_1063037282" CREATED="1446922305462" MODIFIED="1446922305462">
<node TEXT="Different interfaces" ID="ID_1965699112" CREATED="1446922305462" MODIFIED="1446922305462">
<node TEXT="CSI" ID="ID_214250881" CREATED="1446922305462" MODIFIED="1446922305462"/>
<node TEXT="DPI" ID="ID_1218456375" CREATED="1446922305462" MODIFIED="1446922305462"/>
<node TEXT="LVDS" ID="ID_1840678386" CREATED="1446922305462" MODIFIED="1446922305462">
<node TEXT="LVDS signaling standard (&quot;Low Voltage Differential Signaling&quot;) is heavily used in high speed digital electronics systems. This serial link composed of two positive and negative signals with opposite phases relationships allow for highspeed communication of even up to 25.8 Gbps link with standarised interfaces." ID="ID_171985293" CREATED="1446922305462" MODIFIED="1446922305462"/>
<node TEXT="SerDes Sensor equipped with LVDS interface for data transmission." ID="ID_1238054343" CREATED="1446922305462" MODIFIED="1446922305462"/>
<node TEXT="Data meeds to deserialised." ID="ID_1755685976" CREATED="1446922305462" MODIFIED="1446922305462"/>
<node TEXT="" ID="ID_331281064" CREATED="1446922305462" MODIFIED="1446922305462"/>
</node>
</node>
<node TEXT="Custom AFE" ID="ID_1423963624" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="High speed data readout" ID="ID_1034372662" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="CMOS sensors" ID="ID_1553005" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="CCD Sensors" ID="ID_507588618" CREATED="1446922305463" MODIFIED="1446922305463"/>
</node>
<node TEXT="Exiting devices on market" ID="ID_579936313" CREATED="1446922305463" MODIFIED="1446922305463">
<node TEXT="FLIR?" ID="ID_1737316875" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="ELPHEL" ID="ID_1156446894" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="K20" ID="ID_837096473" CREATED="1446922305463" MODIFIED="1446922305463"/>
</node>
<node TEXT="Controlling and acquisition processors" ID="ID_508997830" CREATED="1446922305463" MODIFIED="1446922305463">
<node TEXT="Fpga" ID="ID_841428465" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="Soc" ID="ID_1907488776" CREATED="1446922305463" MODIFIED="1446922305463"/>
<node TEXT="Drivers" ID="ID_985031372" CREATED="1446922305463" MODIFIED="1446922305463"/>
</node>
<node TEXT="Introduction" ID="ID_713803650" CREATED="1446922305463" MODIFIED="1446922305463">
<node TEXT="This section introduces the topic of scientific camera design. Reasons to do this work are presented as well as the today&apos;s state of knowledge regarding camera design" ID="ID_1091403818" CREATED="1446922305469" MODIFIED="1446922305469"/>
<node TEXT="This section contains the today&apos;s state of knowledge regarding camera design. Firstly" ID="ID_1294860281" CREATED="1446922305469" MODIFIED="1446922305469"/>
</node>
<node TEXT="Basic camera system design" ID="ID_612202242" CREATED="1446922305469" MODIFIED="1446922305469">
<node TEXT="Mechanical" ID="ID_1418537881" CREATED="1446922305469" MODIFIED="1446922305469"/>
<node TEXT="Electronics" ID="ID_1446253834" CREATED="1446922305469" MODIFIED="1446922305469"/>
<node TEXT="Firmware" ID="ID_843987374" CREATED="1446922305469" MODIFIED="1446922305469"/>
<node TEXT="Software" ID="ID_1007739776" CREATED="1446922305469" MODIFIED="1446922305469"/>
<node TEXT="Interface" ID="ID_1301508578" CREATED="1446922305469" MODIFIED="1446922305469">
<node TEXT="Wireless" ID="ID_309232001" CREATED="1446922305470" MODIFIED="1446922305470">
<node TEXT="WiFi" ID="ID_970643141" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Bluetooth?" ID="ID_1366681989" CREATED="1446922305470" MODIFIED="1446922305470"/>
</node>
<node TEXT="Wire" ID="ID_171824686" CREATED="1446922305470" MODIFIED="1446922305470">
<node TEXT="USB" ID="ID_8617740" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="PCIe" ID="ID_1092970408" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="ThunderBolt" ID="ID_332321578" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Camera link" ID="ID_184368798" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="FireWire" ID="ID_744363564" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Ethernet" ID="ID_906330742" CREATED="1446922305470" MODIFIED="1446922305470"/>
</node>
<node TEXT="Table with comparison" ID="ID_1658272465" CREATED="1446922305470" MODIFIED="1446922305470"/>
</node>
</node>
</node>
<node TEXT="3. Reason to do this project" ID="ID_540617279" CREATED="1446922305470" MODIFIED="1446922305470">
<node TEXT="Universal open, camera design architecture" ID="ID_1142660993" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="One cannot deny the fact that, novelty is the in today&apos;s high-tech electronics market the most important aspect of the product is time-to-market. Sometimes even a worse product can win on the market just due to the fact that it was released eariler. In specialised markets where COTS (Custom - Off - The - Shelf) components are being used by customers, the possibility to quickly adjust the parameters of a specific system given suited to the customers need is a key to success. Another" ID="ID_321474400" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Scientific applications for camera systems are, undoubtedly broad." ID="ID_1272985793" CREATED="1446922305470" MODIFIED="1446922305470"/>
</node>
<node TEXT="4. Requirements" ID="ID_891668660" CREATED="1446922305470" MODIFIED="1446922305470">
<node TEXT="High speed operation" ID="ID_1613835224" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Ease of adding a custom sensor" ID="ID_166210024" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="Secure and versatile OS" ID="ID_297024224" CREATED="1446922305470" MODIFIED="1446922305470"/>
<node TEXT="RTOS capability" ID="ID_1657447985" CREATED="1446922305471" MODIFIED="1446922305471"/>
<node TEXT="Future proof" ID="ID_1863451298" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
</node>
<node TEXT="Chapter 2. Concept of design" POSITION="right" ID="ID_1243507590" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="2. Camera functions" ID="ID_1651106375" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Ethernet control and data transmission" ID="ID_1114614375" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Control" ID="ID_1592027565" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Over ethernet - PC" ID="ID_1315716339" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="In future control over FADE command link" ID="ID_1805921837" CREATED="1446922305471" MODIFIED="1446922305471"/>
<node TEXT="Simple socket tcp ip server" ID="ID_412321340" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
</node>
<node TEXT="Transmission" ID="ID_352644887" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Ethernet" ID="ID_695484490" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Fade" ID="ID_1627835034" CREATED="1446922305471" MODIFIED="1446922305471"/>
<node TEXT="1 Gbps 1000Base-X" ID="ID_1214319259" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
</node>
</node>
<node TEXT="Sensor data acquisition" ID="ID_699539252" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="Ease of adding own sensor" ID="ID_1754667971" CREATED="1446922305471" MODIFIED="1446922305471"/>
<node TEXT="LVDS interface" ID="ID_1156289725" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
<node TEXT="Multichannel operation" ID="ID_378878018" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="MLVDS" ID="ID_310652506" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="100 MHz max synchronisation clock" ID="ID_845698908" CREATED="1446922305471" MODIFIED="1446922305471"/>
</node>
<node TEXT="PTP" ID="ID_577902792" CREATED="1446922305471" MODIFIED="1446922305471">
<node TEXT="ptpd on petalinux" ID="ID_1757255245" CREATED="1446922305472" MODIFIED="1446922305472"/>
</node>
</node>
<node TEXT="Real-time operation" ID="ID_130701216" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="FreeRTOS" ID="ID_388246251" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="AMP with rpmsg" ID="ID_1136347190" CREATED="1446922305472" MODIFIED="1446922305472"/>
</node>
<node TEXT="Security" ID="ID_1128011852" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="Ethernet security" ID="ID_1491546613" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="Port blocking" ID="ID_1977291306" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="MAC randomization" ID="ID_1013255167" CREATED="1446922305472" MODIFIED="1446922305472"/>
</node>
<node TEXT="Hypervisor" ID="ID_1193018444" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="None of the available open source hypervisors is mainained well enough,so that it can be used in this project." ID="ID_1550492925" CREATED="1446922305472" MODIFIED="1446922305472"/>
</node>
</node>
</node>
<node TEXT="3. Firmware concept" ID="ID_1917313016" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="Operating system operation concept" ID="ID_246147249" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="Software" ID="ID_937421557" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="RTOS" ID="ID_644809066" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="Linux" ID="ID_315496380" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="Hypervisor" ID="ID_1745320494" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="Purpose" ID="ID_1805303815" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="Linux + RTOS" ID="ID_1678632744" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="or just RTOS?" ID="ID_1954775393" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="hypervisor?" ID="ID_1843976442" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="Available hypervisors are very immature designs which are being shown on company&apos;s website in order for a customer to buy a commercial version." ID="ID_1242935920" CREATED="1446922305472" MODIFIED="1446922305472">
<node TEXT="http://openvirtualization.org/downloadsoftware.html" ID="ID_359381084" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="http://www.wiki.xilinx.com/Xenomai+for+Zynq" ID="ID_1291682959" CREATED="1446922305472" MODIFIED="1446922305472"/>
</node>
</node>
<node TEXT="Yocto versus Petalinux" ID="ID_546032465" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="Xenomai" ID="ID_1852670748" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="SierraTEE" ID="ID_1212142318" CREATED="1446922305472" MODIFIED="1446922305472"/>
<node TEXT="SafeG" ID="ID_585902378" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Xen?" ID="ID_1526565492" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Android" ID="ID_1881141335" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Article about the speed of real time linux on embedded system." ID="ID_420989705" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="https://www.osadl.org/fileadmin/dam/rtlws/12/Brown.pdf" ID="ID_1785467219" CREATED="1446922305473" MODIFIED="1446922305473"/>
</node>
</node>
<node TEXT="This section contains a possible operating systems scenarios that can be implemented in the camera&apos;s framework. Multiple possible options were evaluated and the best solution was chosen." ID="ID_1499353244" CREATED="1446922305473" MODIFIED="1446922305473"/>
</node>
</node>
<node TEXT="1. Introduction" ID="ID_352745730" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="This section tries to answer the basic question regarding the project. What is the best way to design a framework for scientific camera development?" ID="ID_1831108785" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="System concept" ID="ID_843241199" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="System modelling" ID="ID_1800070375" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="SysML" ID="ID_177337421" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="UML" ID="ID_1972998436" CREATED="1446922305473" MODIFIED="1446922305473"/>
</node>
</node>
</node>
<node TEXT="4. Digital system design concept" ID="ID_1438146149" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="CMV4000 IP Core" ID="ID_585679873" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="VDMA" ID="ID_1592736860" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Video In to AXIS" ID="ID_531651313" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="FADE" ID="ID_101201191" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Custom Control Reg IP" ID="ID_592028009" CREATED="1446922305473" MODIFIED="1446922305473"/>
</node>
</node>
<node TEXT="Chapter 3. Realization" POSITION="right" ID="ID_1220927666" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="Firmware" ID="ID_754024104" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="Linux" ID="ID_1530828341" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="FreeRTOS?" ID="ID_551423710" CREATED="1446922305473" MODIFIED="1446922305473"/>
</node>
<node TEXT="System specification" ID="ID_884625052" CREATED="1446922305473" MODIFIED="1446922305473">
<node TEXT="SysML" ID="ID_1386573832" CREATED="1446922305473" MODIFIED="1446922305473"/>
<node TEXT="Simulink" ID="ID_1103759260" CREATED="1446922305474" MODIFIED="1446922305474"/>
</node>
<node TEXT="Hardware - description" ID="ID_1821251566" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Novelity" ID="ID_1089230487" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Control software" ID="ID_896810811" CREATED="1446922305474" MODIFIED="1446922305474"/>
</node>
<node TEXT="Chapter 4. Tests" POSITION="right" ID="ID_1302893410" CREATED="1446922305474" MODIFIED="1446922305474">
<node TEXT="Data reception" ID="ID_1570220585" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Control" ID="ID_1785533216" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Approximate time to design another camera using designed framework" ID="ID_516928745" CREATED="1446922305474" MODIFIED="1446922305474"/>
</node>
<node TEXT="Chapter 5. Summary" POSITION="right" ID="ID_415221887" CREATED="1446922305474" MODIFIED="1446922305474">
<node TEXT="Achieved parameters" ID="ID_407269511" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Achieved functionality" ID="ID_174100699" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Future work" ID="ID_1526465740" CREATED="1446922305474" MODIFIED="1446922305474"/>
<node TEXT="Summary" ID="ID_1993194361" CREATED="1446922305474" MODIFIED="1446922305474"/>
</node>
<node TEXT="Bibliography" POSITION="right" ID="ID_178936158" CREATED="1446922305474" MODIFIED="1446922305474">
<node TEXT="http://www.ntu.edu.sg/home/sfahmy/files/papers/asap2013-khoa.pdf" ID="ID_1754020429" CREATED="1446922305474" MODIFIED="1446922305474"><richcontent TYPE="NOTE">

<html>
<head/>
<body>
<p>Test</p>
</body>
</html>
</richcontent>
</node>
<node TEXT="Cameras companies" ID="ID_405300429" CREATED="1446922305475" MODIFIED="1446922305475">
<node TEXT="http://www.andor.com/scientific-cameras" ID="ID_1989661576" CREATED="1446922305475" MODIFIED="1446922305475"/>
<node TEXT="http://www.qimaging.com/products/cameras/scientific/" ID="ID_799339786" CREATED="1446922305475" MODIFIED="1446922305475"/>
<node TEXT="http://www.thorlabs.de/navigation.cfm?guide_id=2365" ID="ID_1976738084" CREATED="1446922305475" MODIFIED="1446922305475"/>
</node>
<node TEXT="Xilinx documentation" ID="ID_1973240645" CREATED="1446922305475" MODIFIED="1446922305475"/>
<node TEXT="Books" ID="ID_932259675" CREATED="1446922305475" MODIFIED="1446922305475">
<node TEXT="FPGA" ID="ID_1763282906" CREATED="1446922305475" MODIFIED="1446922305475">
<node TEXT="100 Power Tips For FPGA Designers&#xa0;  Evgeni Stavinov" ID="ID_1615763553" CREATED="1446922305475" MODIFIED="1446922305475"/>
</node>
<node TEXT="Camera design" ID="ID_599581570" CREATED="1446922305475" MODIFIED="1446922305475"/>
<node TEXT="System modelling" ID="ID_1811858500" CREATED="1446922305475" MODIFIED="1446922305475"/>
</node>
<node TEXT="Publications" ID="ID_429683351" CREATED="1446922305475" MODIFIED="1446922305475">
<node TEXT="FADE" ID="ID_968399702" CREATED="1446922305475" MODIFIED="1446922305475">
<node TEXT="http://arxiv.org/abs/1503.06871" ID="ID_1255051119" CREATED="1446922305475" MODIFIED="1446922305475"/>
<node TEXT="Low latency protocol for transmission of measurement data from FPGA to Linux computer via 10 Gbps Ethernet link  Wojciech M. Zabolotny  " ID="ID_438809972" CREATED="1446922305476" MODIFIED="1446922305476"/>
</node>
</node>
<node TEXT="Master thesis" ID="ID_1561408919" CREATED="1446922305476" MODIFIED="1446922305476">
<node TEXT="Gk" ID="ID_1809556588" CREATED="1446922305476" MODIFIED="1446922305476"/>
<node TEXT="Lk" ID="ID_415751784" CREATED="1446922305476" MODIFIED="1446922305476"/>
<node TEXT="Ks" ID="ID_1567530304" CREATED="1446922305476" MODIFIED="1446922305476"/>
</node>
</node>
</node>
</map>
